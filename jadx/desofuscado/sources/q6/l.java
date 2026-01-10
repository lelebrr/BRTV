package q6;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import androidx.appcompat.widget.g3;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class l extends Drawable implements Animatable {

    /* renamed from: k, reason: collision with root package name */
    public static final g3 f9280k = new g3("growFraction", Float.class, 7);

    /* renamed from: a, reason: collision with root package name */
    public final Context f9281a;

    /* renamed from: b, reason: collision with root package name */
    public final e f9282b;
    public ObjectAnimator d;

    /* renamed from: e, reason: collision with root package name */
    public ObjectAnimator f9284e;
    public ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9285g;

    /* renamed from: h, reason: collision with root package name */
    public float f9286h;

    /* renamed from: j, reason: collision with root package name */
    public int f9288j;

    /* renamed from: i, reason: collision with root package name */
    public final Paint f9287i = new Paint();

    /* renamed from: c, reason: collision with root package name */
    public a f9283c = new a();

    public l(Context context, e eVar) {
        this.f9281a = context;
        this.f9282b = eVar;
        setAlpha(255);
    }

    public final float b() {
        e eVar = this.f9282b;
        if (eVar.f9256e == 0 && eVar.f == 0) {
            return 1.0f;
        }
        return this.f9286h;
    }

    public final boolean c() {
        ObjectAnimator objectAnimator = this.f9284e;
        return objectAnimator != null && objectAnimator.isRunning();
    }

    public final boolean d() {
        ObjectAnimator objectAnimator = this.d;
        return objectAnimator != null && objectAnimator.isRunning();
    }

    public final boolean e(boolean z7, boolean z10, boolean z11) {
        a aVar = this.f9283c;
        ContentResolver contentResolver = this.f9281a.getContentResolver();
        aVar.getClass();
        return f(z7, z10, z11 && Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) > 0.0f);
    }

    public boolean f(boolean z7, boolean z10, boolean z11) {
        int i6 = 1;
        int i10 = 0;
        ObjectAnimator objectAnimator = this.d;
        g3 g3Var = f9280k;
        if (objectAnimator == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, g3Var, 0.0f, 1.0f);
            this.d = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(500L);
            this.d.setInterpolator(y5.a.f11407b);
            ObjectAnimator objectAnimator2 = this.d;
            if (objectAnimator2 != null && objectAnimator2.isRunning()) {
                throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
            }
            this.d = objectAnimator2;
            objectAnimator2.addListener(new k(this, i10));
        }
        if (this.f9284e == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, g3Var, 1.0f, 0.0f);
            this.f9284e = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(500L);
            this.f9284e.setInterpolator(y5.a.f11407b);
            ObjectAnimator objectAnimator3 = this.f9284e;
            if (objectAnimator3 != null && objectAnimator3.isRunning()) {
                throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
            }
            this.f9284e = objectAnimator3;
            objectAnimator3.addListener(new k(this, i6));
        }
        if (!isVisible() && !z7) {
            return false;
        }
        ObjectAnimator objectAnimator4 = z7 ? this.d : this.f9284e;
        if (!z11) {
            if (objectAnimator4.isRunning()) {
                objectAnimator4.end();
            } else {
                boolean z12 = this.f9285g;
                this.f9285g = true;
                new ValueAnimator[]{objectAnimator4}[0].end();
                this.f9285g = z12;
            }
            return super.setVisible(z7, false);
        }
        if (z11 && objectAnimator4.isRunning()) {
            return false;
        }
        boolean z13 = !z7 || super.setVisible(z7, false);
        e eVar = this.f9282b;
        if (!z7 ? eVar.f != 0 : eVar.f9256e != 0) {
            boolean z14 = this.f9285g;
            this.f9285g = true;
            new ValueAnimator[]{objectAnimator4}[0].end();
            this.f9285g = z14;
            return z13;
        }
        if (z10 || !objectAnimator4.isPaused()) {
            objectAnimator4.start();
        } else {
            objectAnimator4.resume();
        }
        return z13;
    }

    public final void g(c cVar) {
        ArrayList arrayList = this.f;
        if (arrayList == null || !arrayList.contains(cVar)) {
            return;
        }
        this.f.remove(cVar);
        if (this.f.isEmpty()) {
            this.f = null;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f9288j;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return d() || c();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        this.f9288j = i6;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f9287i.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z7, boolean z10) {
        return e(z7, z10, true);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        f(true, true, false);
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        f(false, true, false);
    }
}
