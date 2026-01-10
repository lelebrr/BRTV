package androidx.fragment.app;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class m extends s implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public Handler T;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f1490d0;

    /* renamed from: f0, reason: collision with root package name */
    public Dialog f1492f0;

    /* renamed from: g0, reason: collision with root package name */
    public boolean f1493g0;

    /* renamed from: h0, reason: collision with root package name */
    public boolean f1494h0;
    public boolean i0;
    public final e U = new e(1, this);
    public final j V = new j(this);
    public final k W = new k(this);
    public int X = 0;
    public int Y = 0;
    public boolean Z = true;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f1488b0 = true;

    /* renamed from: c0, reason: collision with root package name */
    public int f1489c0 = -1;

    /* renamed from: e0, reason: collision with root package name */
    public final d f1491e0 = new d(1, this);

    /* renamed from: j0, reason: collision with root package name */
    public boolean f1495j0 = false;

    @Override // androidx.fragment.app.s
    public void A(Bundle bundle) {
        Dialog dialog = this.f1492f0;
        if (dialog != null) {
            Bundle bundleOnSaveInstanceState = dialog.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", bundleOnSaveInstanceState);
        }
        int i6 = this.X;
        if (i6 != 0) {
            bundle.putInt("android:style", i6);
        }
        int i10 = this.Y;
        if (i10 != 0) {
            bundle.putInt("android:theme", i10);
        }
        boolean z7 = this.Z;
        if (!z7) {
            bundle.putBoolean("android:cancelable", z7);
        }
        boolean z10 = this.f1488b0;
        if (!z10) {
            bundle.putBoolean("android:showsDialog", z10);
        }
        int i11 = this.f1489c0;
        if (i11 != -1) {
            bundle.putInt("android:backStackId", i11);
        }
    }

    @Override // androidx.fragment.app.s
    public void B() {
        this.D = true;
        Dialog dialog = this.f1492f0;
        if (dialog != null) {
            this.f1493g0 = false;
            dialog.show();
            View decorView = this.f1492f0.getWindow().getDecorView();
            j9.i.f(decorView, "<this>");
            decorView.setTag(R.id.view_tree_lifecycle_owner, this);
            decorView.setTag(R.id.view_tree_view_model_store_owner, this);
            decorView.setTag(R.id.view_tree_saved_state_registry_owner, this);
        }
    }

    @Override // androidx.fragment.app.s
    public void C() {
        this.D = true;
        Dialog dialog = this.f1492f0;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.s
    public final void E(Bundle bundle) {
        Bundle bundle2;
        this.D = true;
        if (this.f1492f0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f1492f0.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.s
    public final void F(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.F(layoutInflater, viewGroup, bundle);
        if (this.F != null || this.f1492f0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f1492f0.onRestoreInstanceState(bundle2);
    }

    public final void Q(boolean z7, boolean z10) {
        if (this.f1494h0) {
            return;
        }
        this.f1494h0 = true;
        this.i0 = false;
        Dialog dialog = this.f1492f0;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.f1492f0.dismiss();
            if (!z10) {
                if (Looper.myLooper() == this.T.getLooper()) {
                    onDismiss(this.f1492f0);
                } else {
                    this.T.post(this.U);
                }
            }
        }
        this.f1493g0 = true;
        if (this.f1489c0 >= 0) {
            j0 j0VarL = l();
            int i6 = this.f1489c0;
            if (i6 < 0) {
                throw new IllegalArgumentException(a.e.n(i6, "Bad id: "));
            }
            j0VarL.s(new i0(j0VarL, i6), false);
            this.f1489c0 = -1;
            return;
        }
        a aVar = new a(l());
        aVar.h(this);
        if (z7) {
            aVar.e(true);
        } else {
            aVar.e(false);
        }
    }

    public Dialog R() {
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new Dialog(K(), this.Y);
    }

    public void S(k0 k0Var, String str) {
        this.f1494h0 = false;
        this.i0 = true;
        k0Var.getClass();
        a aVar = new a(k0Var);
        aVar.f(0, this, str, 1);
        aVar.e(false);
    }

    @Override // androidx.fragment.app.s
    public final o9.e b() {
        return new l(this, new n(this));
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.f1493g0) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
        }
        Q(true, true);
    }

    @Override // androidx.fragment.app.s
    public final void r(FragmentActivity fragmentActivity) {
        Object obj;
        super.r(fragmentActivity);
        androidx.lifecycle.d0 d0Var = this.O;
        d dVar = this.f1491e0;
        d0Var.getClass();
        androidx.lifecycle.d0.a("observeForever");
        androidx.lifecycle.a0 a0Var = new androidx.lifecycle.a0(d0Var, dVar);
        m.f fVar = d0Var.f1952b;
        m.c cVarC = fVar.c(dVar);
        if (cVarC != null) {
            obj = cVarC.f8103b;
        } else {
            m.c cVar = new m.c(dVar, a0Var);
            fVar.d++;
            m.c cVar2 = fVar.f8109b;
            if (cVar2 == null) {
                fVar.f8108a = cVar;
                fVar.f8109b = cVar;
            } else {
                cVar2.f8104c = cVar;
                cVar.d = cVar2;
                fVar.f8109b = cVar;
            }
            obj = null;
        }
        androidx.lifecycle.c0 c0Var = (androidx.lifecycle.c0) obj;
        if (c0Var instanceof androidx.lifecycle.b0) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (c0Var == null) {
            a0Var.d(true);
        }
        if (this.i0) {
            return;
        }
        this.f1494h0 = false;
    }

    @Override // androidx.fragment.app.s
    public void s(Bundle bundle) {
        super.s(bundle);
        this.T = new Handler();
        this.f1488b0 = this.f1541x == 0;
        if (bundle != null) {
            this.X = bundle.getInt("android:style", 0);
            this.Y = bundle.getInt("android:theme", 0);
            this.Z = bundle.getBoolean("android:cancelable", true);
            this.f1488b0 = bundle.getBoolean("android:showsDialog", this.f1488b0);
            this.f1489c0 = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.s
    public void v() {
        this.D = true;
        Dialog dialog = this.f1492f0;
        if (dialog != null) {
            this.f1493g0 = true;
            dialog.setOnDismissListener(null);
            this.f1492f0.dismiss();
            if (!this.f1494h0) {
                onDismiss(this.f1492f0);
            }
            this.f1492f0 = null;
            this.f1495j0 = false;
        }
    }

    @Override // androidx.fragment.app.s
    public final void w() {
        this.D = true;
        if (!this.i0 && !this.f1494h0) {
            this.f1494h0 = true;
        }
        this.O.i(this.f1491e0);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0046 A[Catch: all -> 0x004e, TryCatch #0 {all -> 0x004e, blocks: (B:12:0x001a, B:14:0x0026, B:24:0x003e, B:26:0x0046, B:29:0x0050, B:20:0x0030, B:22:0x0036, B:23:0x003b, B:30:0x0068), top: B:48:0x001a }] */
    @Override // androidx.fragment.app.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.LayoutInflater x(android.os.Bundle r8) {
        /*
            r7 = this;
            android.view.LayoutInflater r8 = super.x(r8)
            boolean r0 = r7.f1488b0
            r1 = 2
            java.lang.String r2 = "FragmentManager"
            if (r0 == 0) goto L9a
            boolean r3 = r7.f1490d0
            if (r3 == 0) goto L11
            goto L9a
        L11:
            if (r0 != 0) goto L14
            goto L71
        L14:
            boolean r0 = r7.f1495j0
            if (r0 != 0) goto L71
            r0 = 0
            r3 = 1
            r7.f1490d0 = r3     // Catch: java.lang.Throwable -> L4e
            android.app.Dialog r4 = r7.R()     // Catch: java.lang.Throwable -> L4e
            r7.f1492f0 = r4     // Catch: java.lang.Throwable -> L4e
            boolean r5 = r7.f1488b0     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L68
            int r5 = r7.X     // Catch: java.lang.Throwable -> L4e
            if (r5 == r3) goto L3b
            if (r5 == r1) goto L3b
            r6 = 3
            if (r5 == r6) goto L30
            goto L3e
        L30:
            android.view.Window r5 = r4.getWindow()     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L3b
            r6 = 24
            r5.addFlags(r6)     // Catch: java.lang.Throwable -> L4e
        L3b:
            r4.requestWindowFeature(r3)     // Catch: java.lang.Throwable -> L4e
        L3e:
            android.content.Context r4 = r7.j()     // Catch: java.lang.Throwable -> L4e
            boolean r5 = r4 instanceof android.app.Activity     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L50
            android.app.Dialog r5 = r7.f1492f0     // Catch: java.lang.Throwable -> L4e
            android.app.Activity r4 = (android.app.Activity) r4     // Catch: java.lang.Throwable -> L4e
            r5.setOwnerActivity(r4)     // Catch: java.lang.Throwable -> L4e
            goto L50
        L4e:
            r8 = move-exception
            goto L6e
        L50:
            android.app.Dialog r4 = r7.f1492f0     // Catch: java.lang.Throwable -> L4e
            boolean r5 = r7.Z     // Catch: java.lang.Throwable -> L4e
            r4.setCancelable(r5)     // Catch: java.lang.Throwable -> L4e
            android.app.Dialog r4 = r7.f1492f0     // Catch: java.lang.Throwable -> L4e
            androidx.fragment.app.j r5 = r7.V     // Catch: java.lang.Throwable -> L4e
            r4.setOnCancelListener(r5)     // Catch: java.lang.Throwable -> L4e
            android.app.Dialog r4 = r7.f1492f0     // Catch: java.lang.Throwable -> L4e
            androidx.fragment.app.k r5 = r7.W     // Catch: java.lang.Throwable -> L4e
            r4.setOnDismissListener(r5)     // Catch: java.lang.Throwable -> L4e
            r7.f1495j0 = r3     // Catch: java.lang.Throwable -> L4e
            goto L6b
        L68:
            r3 = 0
            r7.f1492f0 = r3     // Catch: java.lang.Throwable -> L4e
        L6b:
            r7.f1490d0 = r0
            goto L71
        L6e:
            r7.f1490d0 = r0
            throw r8
        L71:
            boolean r0 = android.util.Log.isLoggable(r2, r1)
            if (r0 == 0) goto L8d
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "get layout inflater for DialogFragment "
            r0.<init>(r1)
            r0.append(r7)
            java.lang.String r1 = " from dialog context"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            android.util.Log.d(r2, r0)
        L8d:
            android.app.Dialog r0 = r7.f1492f0
            if (r0 == 0) goto L99
            android.content.Context r0 = r0.getContext()
            android.view.LayoutInflater r8 = r8.cloneInContext(r0)
        L99:
            return r8
        L9a:
            boolean r0 = android.util.Log.isLoggable(r2, r1)
            if (r0 == 0) goto Ld5
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "getting layout inflater for DialogFragment "
            r0.<init>(r1)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            boolean r1 = r7.f1488b0
            if (r1 != 0) goto Lc4
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "mShowsDialog = false: "
            r1.<init>(r3)
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            android.util.Log.d(r2, r0)
            goto Ld5
        Lc4:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "mCreatingDialog = true: "
            r1.<init>(r3)
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            android.util.Log.d(r2, r0)
        Ld5:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.m.x(android.os.Bundle):android.view.LayoutInflater");
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }
}
