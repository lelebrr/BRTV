package ea;

import android.widget.RadioButton;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p0 implements b2.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spark f6725a;

    public p0(Spark spark) {
        this.f6725a = spark;
    }

    @Override // b2.j
    public final void onPageSelected(int i6) {
        String strS = a2.a.s("X3gE05ps\n", "HStJsvMCXRU=\n");
        String str = a2.a.s("LBQ7Ev5XkUAvHwgH/Fb4BQ==\n", "Q3prc5kywiU=\n") + g.f6670o.get(Integer.valueOf(i6));
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, str);
        c cVar = (c) g.f6670o.get(Integer.valueOf(i6));
        Spark spark = this.f6725a;
        spark.getClass();
        if (org.bitspark.android.utils.o.f.f8791e) {
            spark.i0.f();
        }
        switch (cVar.ordinal()) {
            case 0:
                spark.B.requestFocus();
                spark.f8733z.check(R.id.rb_menu);
                spark.O.d();
                spark.K0 = true;
                break;
            case 1:
                spark.C.requestFocus();
                spark.f8733z.check(R.id.rb_vod);
                spark.O.d();
                spark.K0 = false;
                break;
            case 2:
                spark.D.requestFocus();
                spark.f8733z.check(R.id.rb_history);
                spark.O.d();
                spark.K0 = false;
                break;
            case 3:
                RadioButton radioButton = spark.E;
                if (radioButton != null && radioButton.isShown()) {
                    o9.d.y(spark.E);
                }
                spark.f8733z.check(R.id.rb_user);
                spark.O.d();
                spark.K0 = false;
                break;
            case 4:
                spark.F.requestFocus();
                spark.f8733z.check(R.id.rb_apps);
                spark.O.d();
                spark.K0 = false;
                break;
            case 5:
                spark.G.requestFocus();
                spark.f8733z.check(R.id.rb_setting);
                spark.O.d();
                spark.K0 = false;
                break;
            case 6:
                o9.d.y(spark.H);
                spark.f8733z.check(R.id.rb_home);
                spark.O.d();
                spark.K0 = false;
                break;
        }
    }

    @Override // b2.j
    public final void onPageScrollStateChanged(int i6) {
    }

    @Override // b2.j
    public final void a(int i6, float f) {
    }
}
