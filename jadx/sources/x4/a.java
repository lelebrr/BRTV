package x4;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class a extends DialogFragment {

    /* renamed from: a, reason: collision with root package name */
    public AlertDialog f10994a;

    /* renamed from: b, reason: collision with root package name */
    public DialogInterface.OnCancelListener f10995b;

    /* renamed from: c, reason: collision with root package name */
    public AlertDialog f10996c;

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f10995b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        AlertDialog alertDialog = this.f10994a;
        if (alertDialog != null) {
            return alertDialog;
        }
        setShowsDialog(false);
        if (this.f10996c == null) {
            Activity activity = getActivity();
            b5.l.e(activity);
            this.f10996c = new AlertDialog.Builder(activity).create();
        }
        return this.f10996c;
    }
}
