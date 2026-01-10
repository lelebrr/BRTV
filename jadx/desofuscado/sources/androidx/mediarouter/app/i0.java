package androidx.mediarouter.app;

import android.view.KeyEvent;
import android.widget.SeekBar;
import java.util.Collections;
import q1.u0;
import q1.x0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i0 extends q1.m0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2611a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f2612b;

    public /* synthetic */ i0(KeyEvent.Callback callback, int i6) {
        this.f2611a = i6;
        this.f2612b = callback;
    }

    @Override // q1.m0
    public void a() {
        switch (this.f2611a) {
            case 1:
                ((MediaRouteButton) this.f2612b).b();
                break;
        }
    }

    @Override // q1.m0
    public void b() {
        switch (this.f2611a) {
            case 1:
                ((MediaRouteButton) this.f2612b).b();
                break;
        }
    }

    @Override // q1.m0
    public void c() {
        switch (this.f2611a) {
            case 1:
                ((MediaRouteButton) this.f2612b).b();
                break;
        }
    }

    @Override // q1.m0
    public void d(u0 u0Var, q1.s0 s0Var) {
        switch (this.f2611a) {
            case 0:
                ((q0) this.f2612b).p();
                break;
            case 1:
                ((MediaRouteButton) this.f2612b).b();
                break;
            case 2:
                ((f) this.f2612b).j();
                break;
            case 4:
                ((c0) this.f2612b).i();
                break;
        }
    }

    @Override // q1.m0
    public final void e(u0 u0Var, q1.s0 s0Var) {
        q1.p0 p0VarA;
        switch (this.f2611a) {
            case 0:
                q0 q0Var = (q0) this.f2612b;
                if (s0Var == q0Var.f2660h && q1.s0.b() != null) {
                    q1.r0 r0Var = s0Var.f9129a;
                    r0Var.getClass();
                    u0.b();
                    for (q1.s0 s0Var2 : Collections.unmodifiableList(r0Var.f9123b)) {
                        if (!Collections.unmodifiableList(q0Var.f2660h.f9148v).contains(s0Var2) && (p0VarA = q0Var.f2660h.a()) != null && p0VarA.o(s0Var2) && !q0Var.f2662j.contains(s0Var2)) {
                            q0Var.q();
                            q0Var.o();
                            break;
                        }
                    }
                }
                q0Var.p();
                break;
            case 1:
                ((MediaRouteButton) this.f2612b).b();
                break;
            case 2:
                ((f) this.f2612b).j();
                break;
            case 3:
                ((u) this.f2612b).s(true);
                break;
            default:
                ((c0) this.f2612b).i();
                break;
        }
    }

    @Override // q1.m0
    public void h(u0 u0Var, q1.s0 s0Var) {
        switch (this.f2611a) {
            case 0:
                ((q0) this.f2612b).p();
                break;
            case 1:
                ((MediaRouteButton) this.f2612b).b();
                break;
            case 2:
                ((f) this.f2612b).j();
                break;
            case 4:
                ((c0) this.f2612b).i();
                break;
        }
    }

    @Override // q1.m0
    public void i(q1.s0 s0Var) {
        switch (this.f2611a) {
            case 0:
                q0 q0Var = (q0) this.f2612b;
                q0Var.f2660h = s0Var;
                q0Var.q();
                q0Var.o();
                break;
            case 1:
                ((MediaRouteButton) this.f2612b).b();
                break;
            case 2:
                ((f) this.f2612b).dismiss();
                break;
            case 4:
                ((c0) this.f2612b).dismiss();
                break;
        }
    }

    @Override // q1.m0
    public void k() {
        switch (this.f2611a) {
            case 0:
                ((q0) this.f2612b).p();
                break;
            case 1:
                ((MediaRouteButton) this.f2612b).b();
                break;
            case 3:
                ((u) this.f2612b).s(false);
                break;
        }
    }

    @Override // q1.m0
    public void m(q1.s0 s0Var) {
        h0 h0Var;
        KeyEvent.Callback callback = this.f2612b;
        switch (this.f2611a) {
            case 0:
                int i6 = q0.S;
                q0 q0Var = (q0) callback;
                if (q0Var.f2674v != s0Var && (h0Var = (h0) q0Var.f2673u.get(s0Var.f9131c)) != null) {
                    int i10 = h0Var.f2606a.f9142p;
                    h0Var.c(i10 == 0);
                    h0Var.f2608c.setProgress(i10);
                    break;
                }
                break;
            case 3:
                u uVar = (u) callback;
                SeekBar seekBar = (SeekBar) uVar.Q.get(s0Var);
                int i11 = s0Var.f9142p;
                int i12 = u.f2694p0;
                if (seekBar != null && uVar.L != s0Var) {
                    seekBar.setProgress(i11);
                    break;
                }
                break;
        }
    }

    @Override // q1.m0
    public void n(x0 x0Var) {
        switch (this.f2611a) {
            case 1:
                boolean z7 = x0Var != null ? x0Var.f9179e.getBoolean("androidx.mediarouter.media.MediaRouterParams.FIXED_CAST_ICON") : false;
                MediaRouteButton mediaRouteButton = (MediaRouteButton) this.f2612b;
                if (mediaRouteButton.f != z7) {
                    mediaRouteButton.f = z7;
                    mediaRouteButton.refreshDrawableState();
                    break;
                }
                break;
        }
    }
}
