package ea;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6749a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Spark f6750b;

    public /* synthetic */ y(Spark spark, int i6) {
        this.f6749a = i6;
        this.f6750b = spark;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        RelativeLayout relativeLayout;
        RelativeLayout relativeLayout2;
        Spark spark = this.f6750b;
        switch (this.f6749a) {
            case 0:
                String strS = a2.a.s("KjZ2ljG7\n", "aGU791jVkCA=\n");
                String str = a2.a.s("5QGTq7V6LfDiDrujszV+3u8BoJa3azfcyBqhsLlhcpPiDqaCuWwrwKo=\n", "im/VxNYPXrM=\n") + z7 + a2.a.s("wCHmcMkPjOWQI64=\n", "4EaUH7x/2Jw=\n") + Spark.f8661b2;
                boolean z10 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS, str);
                if (z7) {
                    if (!Spark.f8669j2) {
                        Spark.s(spark);
                    }
                    if (Spark.f8662c2) {
                        Spark.f8662c2 = false;
                        spark.I.c0();
                        spark.I.X.notifyItemChanged(spark.I.W());
                    }
                    spark.I.f7859l0 = true;
                    Spark.f8661b2 = 100;
                    spark.t0(spark.B);
                    if (org.bitspark.android.utils.m.f(-65535, g.f6658a).intValue() == 0) {
                        spark.f8730y.u(0, false);
                        spark.I.Z();
                        RelativeLayout relativeLayout3 = spark.I.f7851c0;
                        if ((relativeLayout3 != null ? relativeLayout3.getVisibility() : 0) != 0 && (relativeLayout = spark.I.f7851c0) != null) {
                            relativeLayout.setVisibility(0);
                            break;
                        }
                    } else {
                        RadioButton radioButton = spark.E;
                        if (radioButton != null && radioButton.isShown()) {
                            o9.d.y(spark.E);
                            break;
                        }
                    }
                }
                break;
            case 1:
                String strS2 = a2.a.s("WpHk2nTm\n", "GMKpux2IMC0=\n");
                String str2 = a2.a.s("9RYqrcNruIbyGQKlxSTrs/UcPqPEd6SH7wwYrc4y6637Cyqtw2u45Q==\n", "mnhswqAey8U=\n") + z7;
                boolean z11 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS2, str2);
                if (z7) {
                    spark.t0(spark.C);
                    if (!Spark.f8669j2) {
                        Spark.s(spark);
                    }
                    if (Spark.f8662c2) {
                        Spark.f8662c2 = false;
                        ka.m0 m0Var = spark.J;
                        if (m0Var.f7832r0) {
                            m0Var.Z.b();
                        } else {
                            m0Var.f7817b0.b();
                        }
                    }
                    if (org.bitspark.android.utils.m.f(-65535, g.f6658a).intValue() == 0) {
                        spark.f8730y.u(g.f6663h, false);
                        RelativeLayout relativeLayout4 = spark.J.f7821f0;
                        if ((relativeLayout4 != null ? relativeLayout4.getVisibility() : 0) != 0 && (relativeLayout2 = spark.J.f7821f0) != null) {
                            relativeLayout2.setVisibility(0);
                            break;
                        }
                    } else {
                        RadioButton radioButton2 = spark.E;
                        if (radioButton2 != null && radioButton2.isShown()) {
                            o9.d.y(spark.E);
                            break;
                        }
                    }
                }
                break;
            case 2:
                String strS3 = a2.a.s("7sHkV9Ol\n", "rJKpNrrLMqQ=\n");
                String str3 = a2.a.s("1Eisnt1e3F3TR4SW2xGPdtJVnp7MUv1/30+Fs8tf23HVCsqZ31jpcdhTmdE=\n", "uybq8b4rrx4=\n") + z7;
                boolean z12 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS3, str3);
                if (z7) {
                    if (!Spark.f8669j2) {
                        Spark.s(spark);
                    }
                    spark.t0(spark.D);
                    if (org.bitspark.android.utils.m.f(-65535, g.f6658a).intValue() == 0) {
                        spark.f8730y.u(g.f6664i, false);
                        spark.K.Q();
                        RelativeLayout relativeLayout5 = spark.K.V;
                        if ((relativeLayout5 != null ? relativeLayout5.getVisibility() : 0) != 0) {
                            ka.e eVar = spark.K;
                            RelativeLayout relativeLayout6 = eVar.V;
                            if (relativeLayout6 != null) {
                                relativeLayout6.setVisibility(0);
                            }
                            LinearLayout linearLayout = eVar.W;
                            if (linearLayout != null) {
                                linearLayout.setVisibility(0);
                            }
                            spark.K.i0.setVisibility(8);
                            break;
                        }
                    } else {
                        RadioButton radioButton3 = spark.E;
                        if (radioButton3 != null && radioButton3.isShown()) {
                            o9.d.y(spark.E);
                            break;
                        }
                    }
                }
                break;
            case 3:
                String strS4 = a2.a.s("kQfmgRo+\n", "01Sr4HNQ8HI=\n");
                String str4 = a2.a.s("uCLjEAYlPTi/LcsYAGpuDqQp1y0ENCcUlTnRCwo+Ylu/LdY5CjM7CPc=\n", "10ylf2VQTns=\n") + z7;
                boolean z13 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS4, str4);
                if (z7) {
                    spark.t0(spark.E);
                    spark.f8730y.u(g.f6665j, false);
                    break;
                }
                break;
            case 4:
                String strS5 = a2.a.s("a7dKzdfH\n", "KeQHrL6pPkU=\n");
                String str5 = a2.a.s("5bzJWt2xV1Xis+FS2/4Ed/qi/GffoE15yKf7QdGqCDbis/xz0adRZao=\n", "itKPNb7EJBY=\n") + z7;
                boolean z14 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS5, str5);
                if (z7) {
                    spark.t0(spark.F);
                    spark.f8730y.u(g.f6666k, false);
                    break;
                }
                break;
            case 5:
                String strS6 = a2.a.s("Flk9FgMd\n", "VApwd2pzwR0=\n");
                String str6 = a2.a.s("QNPeab13RldH3PZhuzgVZ0rJ7G+wZWd1S9T3RKt2QXtBkbhuv3Fze0zI6yY=\n", "L72YBt4CNRQ=\n") + z7;
                boolean z15 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS6, str6);
                if (z7) {
                    spark.t0(spark.G);
                    spark.f8730y.u(g.f6667l, false);
                    break;
                }
                break;
            default:
                String strS7 = a2.a.s("ZRNDoLDL\n", "J0AOwdmli+w=\n");
                String str7 = a2.a.s("10IZu7o87AfQTTGzvHO/Ic5JMaCLKPst124qoK0m8WiYRD6nnyb8McsM\n", "uCxf1NlJn0Q=\n") + z7;
                boolean z16 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS7, str7);
                if (z7) {
                    spark.t0(spark.H);
                    spark.f8730y.u(g.f6668m, false);
                    FrameLayout frameLayout = spark.N.f7803b0;
                    if (frameLayout != null) {
                        frameLayout.setVisibility(0);
                        break;
                    }
                }
                break;
        }
    }
}
