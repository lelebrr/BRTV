package ea;

import org.bitspark.android.Spark;
import org.bitspark.android.beans.EpgBeans;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n0 implements androidx.lifecycle.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spark f6715a;

    public n0(Spark spark) {
        this.f6715a = spark;
    }

    @Override // androidx.lifecycle.e0
    public final void c(Object obj) {
        Spark spark = this.f6715a;
        EpgBeans.EpgBean epgBean = (EpgBeans.EpgBean) spark.i0.f10257m.d();
        if (epgBean == null) {
            spark.s0();
            return;
        }
        String name = epgBean.getName();
        String strH = q.h(org.bitspark.android.utils.m.a(epgBean.getTime()), a2.a.s("MA==\n", "HTF7gMJglTI=\n") + org.bitspark.android.utils.m.a(epgBean.getEndTime()));
        spark.f8726v1.setText(name);
        spark.f8724u1.setText(strH);
    }
}
