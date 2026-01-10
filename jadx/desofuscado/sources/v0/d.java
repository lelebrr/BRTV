package v0;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.OverScroller;
import b2.e;
import com.youth.banner.config.BannerConfig;
import java.util.Arrays;
import n0.s0;
import s4.h;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: x, reason: collision with root package name */
    public static final e f10631x = new e(1);

    /* renamed from: a, reason: collision with root package name */
    public int f10632a;

    /* renamed from: b, reason: collision with root package name */
    public int f10633b;
    public float[] d;

    /* renamed from: e, reason: collision with root package name */
    public float[] f10635e;
    public float[] f;

    /* renamed from: g, reason: collision with root package name */
    public float[] f10636g;

    /* renamed from: h, reason: collision with root package name */
    public int[] f10637h;

    /* renamed from: i, reason: collision with root package name */
    public int[] f10638i;

    /* renamed from: j, reason: collision with root package name */
    public int[] f10639j;

    /* renamed from: k, reason: collision with root package name */
    public int f10640k;

    /* renamed from: l, reason: collision with root package name */
    public VelocityTracker f10641l;

    /* renamed from: m, reason: collision with root package name */
    public final float f10642m;

    /* renamed from: n, reason: collision with root package name */
    public float f10643n;

    /* renamed from: o, reason: collision with root package name */
    public int f10644o;

    /* renamed from: p, reason: collision with root package name */
    public final int f10645p;

    /* renamed from: q, reason: collision with root package name */
    public int f10646q;

    /* renamed from: r, reason: collision with root package name */
    public final OverScroller f10647r;

    /* renamed from: s, reason: collision with root package name */
    public final r4.b f10648s;

    /* renamed from: t, reason: collision with root package name */
    public View f10649t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f10650u;

    /* renamed from: v, reason: collision with root package name */
    public final ViewGroup f10651v;

    /* renamed from: c, reason: collision with root package name */
    public int f10634c = -1;

    /* renamed from: w, reason: collision with root package name */
    public final h f10652w = new h(2, this);

    public d(Context context, ViewGroup viewGroup, r4.b bVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (bVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f10651v = viewGroup;
        this.f10648s = bVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        int i6 = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f10645p = i6;
        this.f10644o = i6;
        this.f10633b = viewConfiguration.getScaledTouchSlop();
        this.f10642m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f10643n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f10647r = new OverScroller(context, f10631x);
    }

    public final void a() {
        this.f10634c = -1;
        float[] fArr = this.d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f10635e, 0.0f);
            Arrays.fill(this.f, 0.0f);
            Arrays.fill(this.f10636g, 0.0f);
            Arrays.fill(this.f10637h, 0);
            Arrays.fill(this.f10638i, 0);
            Arrays.fill(this.f10639j, 0);
            this.f10640k = 0;
        }
        VelocityTracker velocityTracker = this.f10641l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f10641l = null;
        }
    }

    public final void b(int i6, View view) {
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = this.f10651v;
        if (parent != viewGroup) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + viewGroup + ")");
        }
        this.f10649t = view;
        this.f10634c = i6;
        this.f10648s.F(i6, view);
        p(1);
    }

    public final boolean c(float f, float f3, int i6, int i10) {
        float fAbs = Math.abs(f);
        float fAbs2 = Math.abs(f3);
        if ((this.f10637h[i6] & i10) != i10 || (this.f10646q & i10) == 0 || (this.f10639j[i6] & i10) == i10 || (this.f10638i[i6] & i10) == i10) {
            return false;
        }
        float f4 = this.f10633b;
        if (fAbs <= f4 && fAbs2 <= f4) {
            return false;
        }
        if (fAbs < fAbs2 * 0.5f) {
            this.f10648s.getClass();
        }
        return (this.f10638i[i6] & i10) == 0 && fAbs > ((float) this.f10633b);
    }

    public final boolean d(View view, float f, float f3) {
        if (view == null) {
            return false;
        }
        r4.b bVar = this.f10648s;
        boolean z7 = bVar.x(view) > 0;
        boolean z10 = bVar.y() > 0;
        if (!z7 || !z10) {
            return z7 ? Math.abs(f) > ((float) this.f10633b) : z10 && Math.abs(f3) > ((float) this.f10633b);
        }
        float f4 = (f3 * f3) + (f * f);
        int i6 = this.f10633b;
        return f4 > ((float) (i6 * i6));
    }

    public final void e(int i6) {
        float[] fArr = this.d;
        if (fArr != null) {
            int i10 = this.f10640k;
            int i11 = 1 << i6;
            if ((i10 & i11) != 0) {
                fArr[i6] = 0.0f;
                this.f10635e[i6] = 0.0f;
                this.f[i6] = 0.0f;
                this.f10636g[i6] = 0.0f;
                this.f10637h[i6] = 0;
                this.f10638i[i6] = 0;
                this.f10639j[i6] = 0;
                this.f10640k = (~i11) & i10;
            }
        }
    }

    public final int f(int i6, int i10, int i11) {
        if (i6 == 0) {
            return 0;
        }
        float width = this.f10651v.getWidth() / 2;
        float fSin = (((float) Math.sin((Math.min(1.0f, Math.abs(i6) / r0) - 0.5f) * 0.47123894f)) * width) + width;
        int iAbs = Math.abs(i10);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fSin / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i6) / i11) + 1.0f) * 256.0f), BannerConfig.SCROLL_TIME);
    }

    public final boolean g() {
        if (this.f10632a == 2) {
            OverScroller overScroller = this.f10647r;
            boolean zComputeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.f10649t.getLeft();
            int top = currY - this.f10649t.getTop();
            if (left != 0) {
                s0.i(left, this.f10649t);
            }
            if (top != 0) {
                s0.j(top, this.f10649t);
            }
            if (left != 0 || top != 0) {
                this.f10648s.H(this.f10649t, currX, currY);
            }
            if (zComputeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                this.f10651v.post(this.f10652w);
            }
        }
        return this.f10632a == 2;
    }

    public final View h(int i6, int i10) {
        ViewGroup viewGroup = this.f10651v;
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            this.f10648s.getClass();
            View childAt = viewGroup.getChildAt(childCount);
            if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && i10 >= childAt.getTop() && i10 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final boolean i(int i6, int i10, int i11, int i12) {
        float f;
        float f3;
        float f4;
        float f5;
        int left = this.f10649t.getLeft();
        int top = this.f10649t.getTop();
        int i13 = i6 - left;
        int i14 = i10 - top;
        OverScroller overScroller = this.f10647r;
        if (i13 == 0 && i14 == 0) {
            overScroller.abortAnimation();
            p(0);
            return false;
        }
        View view = this.f10649t;
        int i15 = (int) this.f10643n;
        int i16 = (int) this.f10642m;
        int iAbs = Math.abs(i11);
        if (iAbs < i15) {
            i11 = 0;
        } else if (iAbs > i16) {
            i11 = i11 > 0 ? i16 : -i16;
        }
        int i17 = (int) this.f10643n;
        int iAbs2 = Math.abs(i12);
        if (iAbs2 < i17) {
            i12 = 0;
        } else if (iAbs2 > i16) {
            i12 = i12 > 0 ? i16 : -i16;
        }
        int iAbs3 = Math.abs(i13);
        int iAbs4 = Math.abs(i14);
        int iAbs5 = Math.abs(i11);
        int iAbs6 = Math.abs(i12);
        int i18 = iAbs5 + iAbs6;
        int i19 = iAbs3 + iAbs4;
        if (i11 != 0) {
            f = iAbs5;
            f3 = i18;
        } else {
            f = iAbs3;
            f3 = i19;
        }
        float f10 = f / f3;
        if (i12 != 0) {
            f4 = iAbs6;
            f5 = i18;
        } else {
            f4 = iAbs4;
            f5 = i19;
        }
        float f11 = f4 / f5;
        r4.b bVar = this.f10648s;
        overScroller.startScroll(left, top, i13, i14, (int) ((f(i14, i12, bVar.y()) * f11) + (f(i13, i11, bVar.x(view)) * f10)));
        p(2);
        return true;
    }

    public final boolean j(int i6) {
        if ((this.f10640k & (1 << i6)) != 0) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i6 + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public final void k(MotionEvent motionEvent) {
        int i6;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f10641l == null) {
            this.f10641l = VelocityTracker.obtain();
        }
        this.f10641l.addMovement(motionEvent);
        int i10 = 0;
        r4.b bVar = this.f10648s;
        if (actionMasked == 0) {
            float x10 = motionEvent.getX();
            float y7 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewH = h((int) x10, (int) y7);
            n(x10, y7, pointerId);
            t(pointerId, viewH);
            if ((this.f10637h[pointerId] & this.f10646q) != 0) {
                bVar.E();
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.f10632a == 1) {
                l();
            }
            a();
            return;
        }
        if (actionMasked == 2) {
            if (this.f10632a != 1) {
                int pointerCount = motionEvent.getPointerCount();
                while (i10 < pointerCount) {
                    int pointerId2 = motionEvent.getPointerId(i10);
                    if (j(pointerId2)) {
                        float x11 = motionEvent.getX(i10);
                        float y9 = motionEvent.getY(i10);
                        float f = x11 - this.d[pointerId2];
                        float f3 = y9 - this.f10635e[pointerId2];
                        m(f, f3, pointerId2);
                        if (this.f10632a != 1) {
                            View viewH2 = h((int) x11, (int) y9);
                            if (d(viewH2, f, f3) && t(pointerId2, viewH2)) {
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    i10++;
                }
                o(motionEvent);
                return;
            }
            if (j(this.f10634c)) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f10634c);
                float x12 = motionEvent.getX(iFindPointerIndex);
                float y10 = motionEvent.getY(iFindPointerIndex);
                float[] fArr = this.f;
                int i11 = this.f10634c;
                int i12 = (int) (x12 - fArr[i11]);
                int i13 = (int) (y10 - this.f10636g[i11]);
                int left = this.f10649t.getLeft() + i12;
                int top = this.f10649t.getTop() + i13;
                int left2 = this.f10649t.getLeft();
                int top2 = this.f10649t.getTop();
                if (i12 != 0) {
                    left = bVar.d(left, this.f10649t);
                    s0.i(left - left2, this.f10649t);
                }
                if (i13 != 0) {
                    top = bVar.e(top, this.f10649t);
                    s0.j(top - top2, this.f10649t);
                }
                if (i12 != 0 || i13 != 0) {
                    bVar.H(this.f10649t, left, top);
                }
                o(motionEvent);
                return;
            }
            return;
        }
        if (actionMasked == 3) {
            if (this.f10632a == 1) {
                this.f10650u = true;
                bVar.I(this.f10649t, 0.0f, 0.0f);
                this.f10650u = false;
                if (this.f10632a == 1) {
                    p(0);
                }
            }
            a();
            return;
        }
        if (actionMasked != 5) {
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.f10632a == 1 && pointerId3 == this.f10634c) {
                int pointerCount2 = motionEvent.getPointerCount();
                while (true) {
                    if (i10 >= pointerCount2) {
                        i6 = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(i10);
                    if (pointerId4 != this.f10634c) {
                        View viewH3 = h((int) motionEvent.getX(i10), (int) motionEvent.getY(i10));
                        View view = this.f10649t;
                        if (viewH3 == view && t(pointerId4, view)) {
                            i6 = this.f10634c;
                            break;
                        }
                    }
                    i10++;
                }
                if (i6 == -1) {
                    l();
                }
            }
            e(pointerId3);
            return;
        }
        int pointerId5 = motionEvent.getPointerId(actionIndex);
        float x13 = motionEvent.getX(actionIndex);
        float y11 = motionEvent.getY(actionIndex);
        n(x13, y11, pointerId5);
        if (this.f10632a == 0) {
            t(pointerId5, h((int) x13, (int) y11));
            if ((this.f10637h[pointerId5] & this.f10646q) != 0) {
                bVar.E();
                return;
            }
            return;
        }
        int i14 = (int) x13;
        int i15 = (int) y11;
        View view2 = this.f10649t;
        if (view2 != null && i14 >= view2.getLeft() && i14 < view2.getRight() && i15 >= view2.getTop() && i15 < view2.getBottom()) {
            i10 = 1;
        }
        if (i10 != 0) {
            t(pointerId5, this.f10649t);
        }
    }

    public final void l() {
        VelocityTracker velocityTracker = this.f10641l;
        float f = this.f10642m;
        velocityTracker.computeCurrentVelocity(1000, f);
        float xVelocity = this.f10641l.getXVelocity(this.f10634c);
        float f3 = this.f10643n;
        float fAbs = Math.abs(xVelocity);
        float f4 = 0.0f;
        if (fAbs < f3) {
            xVelocity = 0.0f;
        } else if (fAbs > f) {
            xVelocity = xVelocity > 0.0f ? f : -f;
        }
        float yVelocity = this.f10641l.getYVelocity(this.f10634c);
        float f5 = this.f10643n;
        float fAbs2 = Math.abs(yVelocity);
        if (fAbs2 >= f5) {
            if (fAbs2 > f) {
                if (yVelocity <= 0.0f) {
                    f = -f;
                }
                f4 = f;
            } else {
                f4 = yVelocity;
            }
        }
        this.f10650u = true;
        this.f10648s.I(this.f10649t, xVelocity, f4);
        this.f10650u = false;
        if (this.f10632a == 1) {
            p(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r3v3, types: [r4.b] */
    public final void m(float f, float f3, int i6) {
        boolean zC = c(f, f3, i6, 1);
        boolean z7 = zC;
        if (c(f3, f, i6, 4)) {
            z7 = (zC ? 1 : 0) | 4;
        }
        boolean z10 = z7;
        if (c(f, f3, i6, 2)) {
            z10 = (z7 ? 1 : 0) | 2;
        }
        ?? r02 = z10;
        if (c(f3, f, i6, 8)) {
            r02 = (z10 ? 1 : 0) | 8;
        }
        if (r02 != 0) {
            int[] iArr = this.f10638i;
            iArr[i6] = iArr[i6] | r02;
            this.f10648s.D(r02, i6);
        }
    }

    public final void n(float f, float f3, int i6) {
        float[] fArr = this.d;
        if (fArr == null || fArr.length <= i6) {
            int i10 = i6 + 1;
            float[] fArr2 = new float[i10];
            float[] fArr3 = new float[i10];
            float[] fArr4 = new float[i10];
            float[] fArr5 = new float[i10];
            int[] iArr = new int[i10];
            int[] iArr2 = new int[i10];
            int[] iArr3 = new int[i10];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f10635e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f10636g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f10637h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f10638i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f10639j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.d = fArr2;
            this.f10635e = fArr3;
            this.f = fArr4;
            this.f10636g = fArr5;
            this.f10637h = iArr;
            this.f10638i = iArr2;
            this.f10639j = iArr3;
        }
        float[] fArr9 = this.d;
        this.f[i6] = f;
        fArr9[i6] = f;
        float[] fArr10 = this.f10635e;
        this.f10636g[i6] = f3;
        fArr10[i6] = f3;
        int[] iArr7 = this.f10637h;
        int i11 = (int) f;
        int i12 = (int) f3;
        ViewGroup viewGroup = this.f10651v;
        int i13 = i11 < viewGroup.getLeft() + this.f10644o ? 1 : 0;
        if (i12 < viewGroup.getTop() + this.f10644o) {
            i13 |= 4;
        }
        if (i11 > viewGroup.getRight() - this.f10644o) {
            i13 |= 2;
        }
        if (i12 > viewGroup.getBottom() - this.f10644o) {
            i13 |= 8;
        }
        iArr7[i6] = i13;
        this.f10640k |= 1 << i6;
    }

    public final void o(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i6 = 0; i6 < pointerCount; i6++) {
            int pointerId = motionEvent.getPointerId(i6);
            if (j(pointerId)) {
                float x10 = motionEvent.getX(i6);
                float y7 = motionEvent.getY(i6);
                this.f[pointerId] = x10;
                this.f10636g[pointerId] = y7;
            }
        }
    }

    public final void p(int i6) {
        this.f10651v.removeCallbacks(this.f10652w);
        if (this.f10632a != i6) {
            this.f10632a = i6;
            this.f10648s.G(i6);
            if (this.f10632a == 0) {
                this.f10649t = null;
            }
        }
    }

    public final boolean q(int i6, int i10) {
        if (this.f10650u) {
            return i(i6, i10, (int) this.f10641l.getXVelocity(this.f10634c), (int) this.f10641l.getYVelocity(this.f10634c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean r(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: v0.d.r(android.view.MotionEvent):boolean");
    }

    public final boolean s(View view, int i6, int i10) {
        this.f10649t = view;
        this.f10634c = -1;
        boolean zI = i(i6, i10, 0, 0);
        if (!zI && this.f10632a == 0 && this.f10649t != null) {
            this.f10649t = null;
        }
        return zI;
    }

    public final boolean t(int i6, View view) {
        if (view == this.f10649t && this.f10634c == i6) {
            return true;
        }
        if (view == null || !this.f10648s.O(i6, view)) {
            return false;
        }
        this.f10634c = i6;
        b(i6, view);
        return true;
    }
}
