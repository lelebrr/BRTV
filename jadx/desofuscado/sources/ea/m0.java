package ea;

import org.bitspark.android.Spark;
import org.bitspark.android.beans.EpgBeans;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m0 implements androidx.lifecycle.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spark f6712a;

    public m0(Spark spark) {
        this.f6712a = spark;
    }

    @Override // androidx.lifecycle.e0
    public final void c(Object obj) {
        Spark spark = this.f6712a;
        EpgBeans.EpgBean epgBean = (EpgBeans.EpgBean) spark.i0.f10256l.d();
        EpgBeans.EpgBean epgBean2 = (EpgBeans.EpgBean) spark.i0.f10257m.d();
        if (epgBean == null) {
            spark.r0();
            return;
        }
        String name = epgBean.getName();
        String strH = q.h(org.bitspark.android.utils.m.a(epgBean.getTime()), a2.a.s("Qg==\n", "b4JsQSt+SDg=\n") + org.bitspark.android.utils.m.a(epgBean.getEndTime()));
        spark.f8722t1.setText(name);
        spark.f8720s1.setText(strH);
        long jLongValue = epgBean.getEndTime().longValue() - epgBean.getTime().longValue();
        spark.f8718r1.setProgress((int) org.bitspark.android.utils.m.j(epgBean.getTime()));
        spark.f8718r1.setMax((int) jLongValue);
        Long time = epgBean.getTime();
        a3.c cVar = spark.f8715q0;
        if (cVar != null) {
            ka.m0.E0.removeCallbacks(cVar);
        }
        a3.c cVar2 = new a3.c(spark, 14, time);
        spark.f8715q0 = cVar2;
        ka.m0.E0.post(cVar2);
        if (epgBean2 == null) {
            spark.s0();
            return;
        }
        String name2 = epgBean2.getName();
        String strH2 = q.h(org.bitspark.android.utils.m.a(epgBean2.getTime()), a2.a.s("og==\n", "jxnAhLT0tqg=\n") + org.bitspark.android.utils.m.a(epgBean2.getEndTime()));
        spark.f8726v1.setText(name2);
        spark.f8724u1.setText(strH2);
    }
}
