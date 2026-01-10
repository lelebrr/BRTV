package androidx.mediarouter.app;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class g extends androidx.fragment.app.m {

    /* renamed from: k0, reason: collision with root package name */
    public final boolean f2600k0 = false;

    /* renamed from: l0, reason: collision with root package name */
    public androidx.appcompat.app.i0 f2601l0;

    /* renamed from: m0, reason: collision with root package name */
    public q1.l0 f2602m0;

    public g() {
        this.Z = true;
        Dialog dialog = this.f1492f0;
        if (dialog != null) {
            dialog.setCancelable(true);
        }
    }

    @Override // androidx.fragment.app.m
    public final Dialog R() {
        if (this.f2600k0) {
            c0 c0Var = new c0(j());
            this.f2601l0 = c0Var;
            T();
            c0Var.j(this.f2602m0);
        } else {
            f fVar = new f(j());
            this.f2601l0 = fVar;
            T();
            fVar.k(this.f2602m0);
        }
        return this.f2601l0;
    }

    public final void T() {
        if (this.f2602m0 == null) {
            Bundle bundle = this.f1524g;
            if (bundle != null) {
                this.f2602m0 = q1.l0.b(bundle.getBundle("selector"));
            }
            if (this.f2602m0 == null) {
                this.f2602m0 = q1.l0.f9055c;
            }
        }
    }

    @Override // androidx.fragment.app.s, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.D = true;
        androidx.appcompat.app.i0 i0Var = this.f2601l0;
        if (i0Var == null) {
            return;
        }
        if (!this.f2600k0) {
            f fVar = (f) i0Var;
            fVar.getWindow().setLayout(n5.d.v(fVar.getContext()), -2);
        } else {
            c0 c0Var = (c0) i0Var;
            Context context = c0Var.f2560g;
            c0Var.getWindow().setLayout(!context.getResources().getBoolean(R.bool.is_tablet) ? -1 : n5.d.v(context), context.getResources().getBoolean(R.bool.is_tablet) ? -2 : -1);
        }
    }
}
