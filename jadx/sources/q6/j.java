package q6;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Looper;
import android.provider.Settings;
import android.util.AndroidRuntimeException;
import android.view.Choreographer;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j extends l {

    /* renamed from: q, reason: collision with root package name */
    public static final i f9272q = new i();

    /* renamed from: l, reason: collision with root package name */
    public final m f9273l;

    /* renamed from: m, reason: collision with root package name */
    public final a1.g f9274m;

    /* renamed from: n, reason: collision with root package name */
    public final a1.f f9275n;

    /* renamed from: o, reason: collision with root package name */
    public float f9276o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f9277p;

    public j(Context context, e eVar, m mVar) {
        super(context, eVar);
        this.f9277p = false;
        this.f9273l = mVar;
        mVar.f9290b = this;
        a1.g gVar = new a1.g();
        this.f9274m = gVar;
        gVar.f73b = 1.0f;
        gVar.f74c = false;
        gVar.f72a = Math.sqrt(50.0f);
        gVar.f74c = false;
        a1.f fVar = new a1.f(this);
        this.f9275n = fVar;
        fVar.f69k = gVar;
        if (this.f9286h != 1.0f) {
            this.f9286h = 1.0f;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            canvas.save();
            m mVar = this.f9273l;
            float fB = b();
            mVar.f9289a.a();
            mVar.a(canvas, fB);
            m mVar2 = this.f9273l;
            Paint paint = this.f9287i;
            mVar2.c(canvas, paint);
            this.f9273l.b(canvas, paint, 0.0f, this.f9276o, o9.e.j(this.f9282b.f9255c[0], this.f9288j));
            canvas.restore();
        }
    }

    @Override // q6.l
    public final boolean f(boolean z7, boolean z10, boolean z11) {
        boolean zF = super.f(z7, z10, z11);
        a aVar = this.f9283c;
        ContentResolver contentResolver = this.f9281a.getContentResolver();
        aVar.getClass();
        float f = Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f);
        if (f == 0.0f) {
            this.f9277p = true;
        } else {
            this.f9277p = false;
            float f3 = 50.0f / f;
            a1.g gVar = this.f9274m;
            gVar.getClass();
            if (f3 <= 0.0f) {
                throw new IllegalArgumentException("Spring stiffness constant must be positive.");
            }
            gVar.f72a = Math.sqrt(f3);
            gVar.f74c = false;
        }
        return zF;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f9273l.d();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f9273l.e();
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        this.f9275n.b();
        this.f9276o = getLevel() / 10000.0f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i6) {
        boolean z7 = this.f9277p;
        a1.f fVar = this.f9275n;
        if (z7) {
            fVar.b();
            this.f9276o = i6 / 10000.0f;
            invalidateSelf();
        } else {
            fVar.f62b = this.f9276o * 10000.0f;
            fVar.f63c = true;
            float f = i6;
            if (fVar.f) {
                fVar.f70l = f;
            } else {
                if (fVar.f69k == null) {
                    fVar.f69k = new a1.g(f);
                }
                a1.g gVar = fVar.f69k;
                double d = f;
                gVar.f78i = d;
                double d10 = (float) d;
                if (d10 > Float.MAX_VALUE) {
                    throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
                }
                if (d10 < -3.4028235E38f) {
                    throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
                }
                double dAbs = Math.abs(fVar.f66h * 0.75f);
                gVar.d = dAbs;
                gVar.f75e = dAbs * 62.5d;
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    throw new AndroidRuntimeException("Animations may only be started on the main thread");
                }
                boolean z10 = fVar.f;
                if (!z10 && !z10) {
                    fVar.f = true;
                    if (!fVar.f63c) {
                        fVar.f64e.getClass();
                        fVar.f62b = fVar.d.f9276o * 10000.0f;
                    }
                    float f3 = fVar.f62b;
                    if (f3 > Float.MAX_VALUE || f3 < -3.4028235E38f) {
                        throw new IllegalArgumentException("Starting value need to be in between min value and max value");
                    }
                    ThreadLocal threadLocal = a1.c.f;
                    if (threadLocal.get() == null) {
                        threadLocal.set(new a1.c());
                    }
                    a1.c cVar = (a1.c) threadLocal.get();
                    ArrayList arrayList = cVar.f50b;
                    if (arrayList.size() == 0) {
                        if (cVar.d == null) {
                            cVar.d = new a1.b(cVar.f51c);
                        }
                        a1.b bVar = cVar.d;
                        ((Choreographer) bVar.f48c).postFrameCallback((a1.a) bVar.d);
                    }
                    if (!arrayList.contains(fVar)) {
                        arrayList.add(fVar);
                    }
                }
            }
        }
        return true;
    }
}
