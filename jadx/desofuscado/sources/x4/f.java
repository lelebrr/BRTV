package x4;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class f extends androidx.fragment.app.m {

    /* renamed from: k0, reason: collision with root package name */
    public AlertDialog f11005k0;

    /* renamed from: l0, reason: collision with root package name */
    public DialogInterface.OnCancelListener f11006l0;

    /* renamed from: m0, reason: collision with root package name */
    public AlertDialog f11007m0;

    @Override // androidx.fragment.app.m
    public final Dialog R() {
        AlertDialog alertDialog = this.f11005k0;
        if (alertDialog != null) {
            return alertDialog;
        }
        this.f1488b0 = false;
        if (this.f11007m0 == null) {
            Context contextJ = j();
            b5.l.e(contextJ);
            this.f11007m0 = new AlertDialog.Builder(contextJ).create();
        }
        return this.f11007m0;
    }

    @Override // androidx.fragment.app.m, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f11006l0;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }
}
