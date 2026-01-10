package ka;

import android.app.AlertDialog;
import android.content.DialogInterface;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7874a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ androidx.fragment.app.s f7875b;

    public /* synthetic */ x(int i6, androidx.fragment.app.s sVar) {
        this.f7874a = i6;
        this.f7875b = sVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        switch (this.f7874a) {
            case 0:
                dialogInterface.dismiss();
                y yVar = (y) this.f7875b;
                if (yVar.h() != null) {
                    ((Spark) yVar.h()).J0();
                    break;
                }
                break;
            default:
                r4.g gVar = (r4.g) this.f7875b;
                AlertDialog alertDialog = gVar.f9554o0;
                if (alertDialog != null) {
                    alertDialog.cancel();
                    gVar.f9554o0 = null;
                    break;
                }
                break;
        }
    }
}
