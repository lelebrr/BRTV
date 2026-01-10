package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import y.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MockView extends View {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f994a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f995b;

    /* renamed from: c, reason: collision with root package name */
    public final Paint f996c;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f997e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public final Rect f998g;

    /* renamed from: h, reason: collision with root package name */
    public int f999h;

    /* renamed from: i, reason: collision with root package name */
    public int f1000i;

    /* renamed from: j, reason: collision with root package name */
    public int f1001j;

    /* renamed from: k, reason: collision with root package name */
    public int f1002k;

    public MockView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f994a = new Paint();
        this.f995b = new Paint();
        this.f996c = new Paint();
        this.d = true;
        this.f997e = true;
        this.f = null;
        this.f998g = new Rect();
        this.f999h = Color.argb(255, 0, 0, 0);
        this.f1000i = Color.argb(255, 200, 200, 200);
        this.f1001j = Color.argb(255, 50, 50, 50);
        this.f1002k = 4;
        a(context, attributeSet);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.f11214h);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i6);
                if (index == 1) {
                    this.f = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == 4) {
                    this.d = typedArrayObtainStyledAttributes.getBoolean(index, this.d);
                } else if (index == 0) {
                    this.f999h = typedArrayObtainStyledAttributes.getColor(index, this.f999h);
                } else if (index == 2) {
                    this.f1001j = typedArrayObtainStyledAttributes.getColor(index, this.f1001j);
                } else if (index == 3) {
                    this.f1000i = typedArrayObtainStyledAttributes.getColor(index, this.f1000i);
                } else if (index == 5) {
                    this.f997e = typedArrayObtainStyledAttributes.getBoolean(index, this.f997e);
                }
            }
        }
        if (this.f == null) {
            try {
                this.f = context.getResources().getResourceEntryName(getId());
            } catch (Exception unused) {
            }
        }
        int i10 = this.f999h;
        Paint paint = this.f994a;
        paint.setColor(i10);
        paint.setAntiAlias(true);
        int i11 = this.f1000i;
        Paint paint2 = this.f995b;
        paint2.setColor(i11);
        paint2.setAntiAlias(true);
        this.f996c.setColor(this.f1001j);
        this.f1002k = Math.round((getResources().getDisplayMetrics().xdpi / 160.0f) * this.f1002k);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.d) {
            width--;
            height--;
            float f = width;
            float f3 = height;
            canvas.drawLine(0.0f, 0.0f, f, f3, this.f994a);
            canvas.drawLine(0.0f, f3, f, 0.0f, this.f994a);
            canvas.drawLine(0.0f, 0.0f, f, 0.0f, this.f994a);
            canvas.drawLine(f, 0.0f, f, f3, this.f994a);
            canvas.drawLine(f, f3, 0.0f, f3, this.f994a);
            canvas.drawLine(0.0f, f3, 0.0f, 0.0f, this.f994a);
        }
        String str = this.f;
        if (str == null || !this.f997e) {
            return;
        }
        int length = str.length();
        Paint paint = this.f995b;
        Rect rect = this.f998g;
        paint.getTextBounds(str, 0, length, rect);
        float fWidth = (width - rect.width()) / 2.0f;
        float fHeight = ((height - rect.height()) / 2.0f) + rect.height();
        rect.offset((int) fWidth, (int) fHeight);
        int i6 = rect.left;
        int i10 = this.f1002k;
        rect.set(i6 - i10, rect.top - i10, rect.right + i10, rect.bottom + i10);
        canvas.drawRect(rect, this.f996c);
        canvas.drawText(this.f, fWidth, fHeight, paint);
    }

    public MockView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f994a = new Paint();
        this.f995b = new Paint();
        this.f996c = new Paint();
        this.d = true;
        this.f997e = true;
        this.f = null;
        this.f998g = new Rect();
        this.f999h = Color.argb(255, 0, 0, 0);
        this.f1000i = Color.argb(255, 200, 200, 200);
        this.f1001j = Color.argb(255, 50, 50, 50);
        this.f1002k = 4;
        a(context, attributeSet);
    }
}
