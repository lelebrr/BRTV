package androidx.fragment.app;

import android.app.Dialog;
import android.content.DialogInterface;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j implements DialogInterface.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f1456a;

    public j(m mVar) {
        this.f1456a = mVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        m mVar = this.f1456a;
        Dialog dialog = mVar.f1492f0;
        if (dialog != null) {
            mVar.onCancel(dialog);
        }
    }
}
