package androidx.mediarouter.app;

import android.app.Dialog;
import android.content.res.Configuration;
import android.content.res.Resources;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class v extends androidx.fragment.app.m {

    /* renamed from: k0, reason: collision with root package name */
    public final boolean f2728k0 = false;

    /* renamed from: l0, reason: collision with root package name */
    public androidx.appcompat.app.i0 f2729l0;

    /* renamed from: m0, reason: collision with root package name */
    public q1.l0 f2730m0;

    public v() {
        this.Z = true;
        Dialog dialog = this.f1492f0;
        if (dialog != null) {
            dialog.setCancelable(true);
        }
    }

    @Override // androidx.fragment.app.m, androidx.fragment.app.s
    public final void C() {
        super.C();
        androidx.appcompat.app.i0 i0Var = this.f2729l0;
        if (i0Var == null || this.f2728k0) {
            return;
        }
        ((u) i0Var).l(false);
    }

    @Override // androidx.fragment.app.m
    public final Dialog R() {
        if (this.f2728k0) {
            q0 q0Var = new q0(j());
            this.f2729l0 = q0Var;
            q0Var.l(this.f2730m0);
        } else {
            this.f2729l0 = new u(j());
        }
        return this.f2729l0;
    }

    @Override // androidx.fragment.app.s, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) throws Resources.NotFoundException {
        this.D = true;
        androidx.appcompat.app.i0 i0Var = this.f2729l0;
        if (i0Var != null) {
            if (this.f2728k0) {
                ((q0) i0Var).m();
            } else {
                ((u) i0Var).u();
            }
        }
    }
}
