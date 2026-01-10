package ea;

import android.view.View;
import fa.b1;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c0 implements fa.o0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spark f6629a;

    public c0(Spark spark) {
        this.f6629a = spark;
    }

    @Override // fa.o0
    public final void a(int i6, View view) {
        Spark spark = this.f6629a;
        b1 b1Var = spark.f8725v0;
        b1Var.f6817e = i6;
        b1Var.notifyDataSetChanged();
        spark.i0.f10262r = (ChannelBean.SourcesBean) spark.f8725v0.f6819h.get(i6);
        ta.a aVar = spark.i0;
        aVar.i(i6, aVar.f10261q, aVar.A);
    }
}
