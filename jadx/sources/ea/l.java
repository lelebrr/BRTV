package ea;

import android.content.DialogInterface;
import android.content.Intent;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6707a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Spark f6708b;

    public /* synthetic */ l(Spark spark, int i6) {
        this.f6707a = i6;
        this.f6708b = spark;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        Spark spark = this.f6708b;
        switch (this.f6707a) {
            case 0:
                try {
                    spark.startActivity(new Intent(a2.a.s("/6yFH8O0QIztp5UZxbND0bCVqD/pkWHxzZ2yKPiJbezZkQ==\n", "nsLhbazdJKI=\n")));
                } catch (Exception e5) {
                    String strS = a2.a.s("m0GV4AId\n", "2RLYgWtzSgE=\n");
                    String string = e5.toString();
                    boolean z7 = org.bitspark.android.utils.m.f8784b;
                    Log.i(strS, string);
                }
                dialogInterface.dismiss();
                String str = h.f6672a;
                spark.finish();
                break;
            default:
                Spark.s(spark);
                spark.F0(true);
                dialogInterface.dismiss();
                break;
        }
    }
}
