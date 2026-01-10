package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f843a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v1 f844b;

    public /* synthetic */ u1(v1 v1Var, int i6) {
        this.f843a = i6;
        this.f844b = v1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f843a) {
            case 0:
                ViewParent parent = this.f844b.d.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                    break;
                }
                break;
            default:
                v1 v1Var = this.f844b;
                v1Var.a();
                View view = v1Var.d;
                if (view.isEnabled() && !view.isLongClickable() && v1Var.c()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    v1Var.f858g = true;
                    break;
                }
                break;
        }
    }
}
