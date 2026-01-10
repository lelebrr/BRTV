package ea;

import android.view.View;
import android.widget.LinearLayout;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6716a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LinearLayout f6717b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LinearLayout f6718c;
    public final /* synthetic */ Spark d;

    public /* synthetic */ o(Spark spark, LinearLayout linearLayout, LinearLayout linearLayout2, int i6) {
        this.f6716a = i6;
        this.d = spark;
        this.f6717b = linearLayout;
        this.f6718c = linearLayout2;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        switch (this.f6716a) {
            case 0:
                if (z7) {
                    Spark spark = this.d;
                    spark.f8711o0 = false;
                    this.f6717b.setSelected(true);
                    this.f6718c.setSelected(spark.f8711o0);
                    break;
                }
                break;
            default:
                if (z7) {
                    Spark spark2 = this.d;
                    spark2.f8711o0 = true;
                    this.f6717b.setSelected(!true);
                    this.f6718c.setSelected(spark2.f8711o0);
                    break;
                }
                break;
        }
    }
}
