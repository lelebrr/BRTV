package ea;

import android.content.DialogInterface;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6727a;

    public /* synthetic */ r(int i6) {
        this.f6727a = i6;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        switch (this.f6727a) {
            case 0:
                Spark.X1.sendEmptyMessage(9999);
                dialogInterface.dismiss();
                break;
            case 1:
                dialogInterface.dismiss();
                break;
            case 2:
                dialogInterface.dismiss();
                break;
            case 3:
                dialogInterface.dismiss();
                break;
            case 4:
                dialogInterface.dismiss();
                break;
            case 5:
                dialogInterface.dismiss();
                break;
            case 6:
                dialogInterface.dismiss();
                break;
            default:
                Spark.X1.sendEmptyMessage(9999);
                dialogInterface.dismiss();
                break;
        }
    }
}
