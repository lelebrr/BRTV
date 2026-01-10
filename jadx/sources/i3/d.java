package i3;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends Drawable implements g, Animatable {

    /* renamed from: a, reason: collision with root package name */
    public final c f7308a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f7309b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7310c;
    public boolean d;
    public int f;

    /* renamed from: h, reason: collision with root package name */
    public boolean f7313h;

    /* renamed from: i, reason: collision with root package name */
    public Paint f7314i;

    /* renamed from: j, reason: collision with root package name */
    public Rect f7315j;

    /* renamed from: e, reason: collision with root package name */
    public boolean f7311e = true;

    /* renamed from: g, reason: collision with root package name */
    public final int f7312g = -1;

    public d(c cVar) {
        r3.f.c(cVar, "Argument must not be null");
        this.f7308a = cVar;
    }

    public final void a() {
        r3.f.a("You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.", !this.d);
        i iVar = (i) this.f7308a.f7307b;
        if (iVar.f7321a.f10121l.f10102c == 1) {
            invalidateSelf();
            return;
        }
        if (this.f7309b) {
            return;
        }
        this.f7309b = true;
        if (iVar.f7328j) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        ArrayList arrayList = iVar.f7323c;
        if (arrayList.contains(this)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        boolean zIsEmpty = arrayList.isEmpty();
        arrayList.add(this);
        if (zIsEmpty && !iVar.f) {
            iVar.f = true;
            iVar.f7328j = false;
            iVar.a();
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.d) {
            return;
        }
        if (this.f7313h) {
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            Rect bounds = getBounds();
            if (this.f7315j == null) {
                this.f7315j = new Rect();
            }
            Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, this.f7315j);
            this.f7313h = false;
        }
        i iVar = (i) this.f7308a.f7307b;
        f fVar = iVar.f7327i;
        Bitmap bitmap = fVar != null ? fVar.f7318g : iVar.f7330l;
        if (this.f7315j == null) {
            this.f7315j = new Rect();
        }
        Rect rect = this.f7315j;
        if (this.f7314i == null) {
            this.f7314i = new Paint(2);
        }
        canvas.drawBitmap(bitmap, (Rect) null, rect, this.f7314i);
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f7308a;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return ((i) this.f7308a.f7307b).f7334p;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return ((i) this.f7308a.f7307b).f7333o;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f7309b;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f7313h = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        if (this.f7314i == null) {
            this.f7314i = new Paint(2);
        }
        this.f7314i.setAlpha(i6);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f7314i == null) {
            this.f7314i = new Paint(2);
        }
        this.f7314i.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z7, boolean z10) {
        r3.f.a("Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.", !this.d);
        this.f7311e = z7;
        if (!z7) {
            this.f7309b = false;
            i iVar = (i) this.f7308a.f7307b;
            ArrayList arrayList = iVar.f7323c;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                iVar.f = false;
            }
        } else if (this.f7310c) {
            a();
        }
        return super.setVisible(z7, z10);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.f7310c = true;
        this.f = 0;
        if (this.f7311e) {
            a();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f7310c = false;
        this.f7309b = false;
        i iVar = (i) this.f7308a.f7307b;
        ArrayList arrayList = iVar.f7323c;
        arrayList.remove(this);
        if (arrayList.isEmpty()) {
            iVar.f = false;
        }
    }
}
