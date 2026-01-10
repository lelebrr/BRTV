package ea;

import android.content.DialogInterface;
import android.widget.LinearLayout;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p implements DialogInterface.OnShowListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LinearLayout f6722a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LinearLayout f6723b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Spark f6724c;

    public p(Spark spark, LinearLayout linearLayout, LinearLayout linearLayout2) {
        this.f6724c = spark;
        this.f6722a = linearLayout;
        this.f6723b = linearLayout2;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public final void onShow(DialogInterface dialogInterface) {
        Spark spark = this.f6724c;
        boolean z7 = !spark.f8711o0;
        LinearLayout linearLayout = this.f6722a;
        linearLayout.setSelected(z7);
        boolean z10 = spark.f8711o0;
        LinearLayout linearLayout2 = this.f6723b;
        linearLayout2.setSelected(z10);
        if (spark.f8711o0) {
            linearLayout2.requestFocus();
        } else {
            linearLayout.requestFocus();
        }
    }
}
