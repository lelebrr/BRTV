package ea;

import android.view.View;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6747a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Spark f6748b;

    public /* synthetic */ x(Spark spark, int i6) {
        this.f6747a = i6;
        this.f6748b = spark;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Spark spark = this.f6748b;
        switch (this.f6747a) {
            case 0:
                u uVar = Spark.X1;
                spark.G0();
                break;
            case 1:
                spark.F0(!Spark.f8666g2);
                ka.m0.E0.postDelayed(new a.f(14, this), 500L);
                break;
            case 2:
                spark.F0(!Spark.f8666g2);
                org.bitspark.android.utils.o oVar = org.bitspark.android.utils.o.f;
                if (oVar.f8791e) {
                    oVar.g();
                    break;
                }
                break;
            case 3:
                spark.i0();
                ChannelBean channelBean = ra.f.b().f9641e;
                fa.d0 d0Var = spark.I.Y;
                int iA = d0Var != null ? d0Var.a() : -1;
                if (iA >= 0) {
                    spark.I.j0(channelBean, iA);
                    break;
                }
                break;
            case 4:
                spark.u0();
                break;
            case 5:
                spark.y0();
                break;
            case 6:
                spark.x0();
                break;
            default:
                if (spark.f8714p1.isShown()) {
                    spark.T();
                    break;
                }
                break;
        }
    }
}
