package ea;

import android.content.DialogInterface;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f6710a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Spark f6711b;

    public m(Spark spark, boolean z7) {
        this.f6711b = spark;
        this.f6710a = z7;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        dialogInterface.dismiss();
        String str = h.f6672a;
        if (this.f6710a) {
            this.f6711b.finish();
        } else {
            Spark.X1.sendEmptyMessage(8);
        }
    }
}
