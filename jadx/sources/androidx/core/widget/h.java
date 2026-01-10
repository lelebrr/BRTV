package androidx.core.widget;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.appcompat.widget.s1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements View.OnTouchListener {

    /* renamed from: r, reason: collision with root package name */
    public static final int f1298r = ViewConfiguration.getTapTimeout();

    /* renamed from: a, reason: collision with root package name */
    public final a f1299a;

    /* renamed from: b, reason: collision with root package name */
    public final AccelerateInterpolator f1300b;

    /* renamed from: c, reason: collision with root package name */
    public final ListView f1301c;
    public a.f d;

    /* renamed from: e, reason: collision with root package name */
    public final float[] f1302e;
    public final float[] f;

    /* renamed from: g, reason: collision with root package name */
    public final int f1303g;

    /* renamed from: h, reason: collision with root package name */
    public final int f1304h;

    /* renamed from: i, reason: collision with root package name */
    public final float[] f1305i;

    /* renamed from: j, reason: collision with root package name */
    public final float[] f1306j;

    /* renamed from: k, reason: collision with root package name */
    public final float[] f1307k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f1308l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1309m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f1310n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f1311o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f1312p;

    /* renamed from: q, reason: collision with root package name */
    public final s1 f1313q;

    public h(s1 s1Var) {
        a aVar = new a();
        aVar.f1292e = Long.MIN_VALUE;
        aVar.f1293g = -1L;
        aVar.f = 0L;
        this.f1299a = aVar;
        this.f1300b = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.f1302e = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.f1305i = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.f1306j = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f1307k = fArr5;
        this.f1301c = s1Var;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f3 = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr5[0] = f3;
        fArr5[1] = f3;
        float f4 = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f4;
        fArr4[1] = f4;
        this.f1303g = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.f1304h = f1298r;
        aVar.f1289a = 500;
        aVar.f1290b = 500;
        this.f1313q = s1Var;
    }

    public static float b(float f, float f3, float f4) {
        return f > f4 ? f4 : f < f3 ? f3 : f;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final float a(float r4, int r5, float r6, float r7) {
        /*
            r3 = this;
            float[] r0 = r3.f1302e
            r0 = r0[r5]
            float[] r1 = r3.f
            r1 = r1[r5]
            float r0 = r0 * r6
            r2 = 0
            float r0 = b(r0, r2, r1)
            float r1 = r3.c(r4, r0)
            float r6 = r6 - r4
            float r4 = r3.c(r6, r0)
            float r4 = r4 - r1
            android.view.animation.AccelerateInterpolator r6 = r3.f1300b
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 >= 0) goto L26
            float r4 = -r4
            float r4 = r6.getInterpolation(r4)
            float r4 = -r4
            goto L2e
        L26:
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 <= 0) goto L37
            float r4 = r6.getInterpolation(r4)
        L2e:
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = 1065353216(0x3f800000, float:1.0)
            float r4 = b(r4, r6, r0)
            goto L38
        L37:
            r4 = 0
        L38:
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 != 0) goto L3d
            return r2
        L3d:
            float[] r0 = r3.f1305i
            r0 = r0[r5]
            float[] r1 = r3.f1306j
            r1 = r1[r5]
            float[] r2 = r3.f1307k
            r5 = r2[r5]
            float r0 = r0 * r7
            if (r6 <= 0) goto L54
            float r4 = r4 * r0
            float r4 = b(r4, r1, r5)
            return r4
        L54:
            float r4 = -r4
            float r4 = r4 * r0
            float r4 = b(r4, r1, r5)
            float r4 = -r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.h.a(float, int, float, float):float");
    }

    public final float c(float f, float f3) {
        if (f3 == 0.0f) {
            return 0.0f;
        }
        int i6 = this.f1303g;
        if (i6 == 0 || i6 == 1) {
            if (f < f3) {
                if (f >= 0.0f) {
                    return 1.0f - (f / f3);
                }
                if (this.f1311o && i6 == 1) {
                    return 1.0f;
                }
            }
        } else if (i6 == 2 && f < 0.0f) {
            return f / (-f3);
        }
        return 0.0f;
    }

    public final void d() {
        int i6 = 0;
        if (this.f1309m) {
            this.f1311o = false;
            return;
        }
        a aVar = this.f1299a;
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i10 = (int) (jCurrentAnimationTimeMillis - aVar.f1292e);
        int i11 = aVar.f1290b;
        if (i10 > i11) {
            i6 = i11;
        } else if (i10 >= 0) {
            i6 = i10;
        }
        aVar.f1295i = i6;
        aVar.f1294h = aVar.a(jCurrentAnimationTimeMillis);
        aVar.f1293g = jCurrentAnimationTimeMillis;
    }

    public final boolean e() {
        s1 s1Var;
        int count;
        a aVar = this.f1299a;
        float f = aVar.d;
        int iAbs = (int) (f / Math.abs(f));
        Math.abs(aVar.f1291c);
        if (iAbs == 0 || (count = (s1Var = this.f1313q).getCount()) == 0) {
            return false;
        }
        int childCount = s1Var.getChildCount();
        int firstVisiblePosition = s1Var.getFirstVisiblePosition();
        int i6 = firstVisiblePosition + childCount;
        if (iAbs > 0) {
            if (i6 >= count && s1Var.getChildAt(childCount - 1).getBottom() <= s1Var.getHeight()) {
                return false;
            }
        } else {
            if (iAbs >= 0) {
                return false;
            }
            if (firstVisiblePosition <= 0 && s1Var.getChildAt(0).getTop() >= 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
        /*
            r7 = this;
            boolean r0 = r7.f1312p
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r9.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r8 = 3
            if (r0 == r8) goto L16
            goto L7c
        L16:
            r7.d()
            goto L7c
        L1a:
            r7.f1310n = r2
            r7.f1308l = r1
        L1e:
            float r0 = r9.getX()
            int r3 = r8.getWidth()
            float r3 = (float) r3
            android.widget.ListView r4 = r7.f1301c
            int r5 = r4.getWidth()
            float r5 = (float) r5
            float r0 = r7.a(r0, r1, r3, r5)
            float r9 = r9.getY()
            int r8 = r8.getHeight()
            float r8 = (float) r8
            int r3 = r4.getHeight()
            float r3 = (float) r3
            float r8 = r7.a(r9, r2, r8, r3)
            androidx.core.widget.a r9 = r7.f1299a
            r9.f1291c = r0
            r9.d = r8
            boolean r8 = r7.f1311o
            if (r8 != 0) goto L7c
            boolean r8 = r7.e()
            if (r8 == 0) goto L7c
            a.f r8 = r7.d
            if (r8 != 0) goto L60
            a.f r8 = new a.f
            r9 = 4
            r8.<init>(r9, r7)
            r7.d = r8
        L60:
            r7.f1311o = r2
            r7.f1309m = r2
            boolean r8 = r7.f1308l
            if (r8 != 0) goto L75
            int r8 = r7.f1304h
            if (r8 <= 0) goto L75
            a.f r9 = r7.d
            long r5 = (long) r8
            java.util.WeakHashMap r8 = n0.s0.f8353a
            r4.postOnAnimationDelayed(r9, r5)
            goto L7a
        L75:
            a.f r8 = r7.d
            r8.run()
        L7a:
            r7.f1308l = r2
        L7c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.h.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
