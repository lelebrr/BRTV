package androidx.fragment.app;

import android.app.Dialog;
import android.content.DialogInterface;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f1481a;

    public k(m mVar) {
        this.f1481a = mVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        m mVar = this.f1481a;
        Dialog dialog = mVar.f1492f0;
        if (dialog != null) {
            mVar.onDismiss(dialog);
        }
    }
}
