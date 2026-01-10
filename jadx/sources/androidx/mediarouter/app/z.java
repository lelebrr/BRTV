package androidx.mediarouter.app;

import android.app.Dialog;
import android.view.View;
import android.widget.TextView;
import com.tencent.mars.xlog.Log;
import java.io.IOException;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.Menu;
import org.bitspark.android.keyboard.custom.MyKeyBoardView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2735a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2736b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2737c;

    public /* synthetic */ z(Object obj, int i6, Object obj2) {
        this.f2735a = i6;
        this.f2737c = obj;
        this.f2736b = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws IOException {
        int bindingAdapterPosition;
        boolean z7 = false;
        Object obj = this.f2736b;
        Object obj2 = this.f2737c;
        switch (this.f2735a) {
            case 0:
                a0 a0Var = (a0) obj2;
                q1.s0 s0Var = (q1.s0) obj;
                a0Var.f2549e.f2556g.f2566m = s0Var;
                s0Var.l(true);
                a0Var.f2547b.setVisibility(4);
                a0Var.f2548c.setVisibility(0);
                break;
            case 1:
                Spark spark = (Spark) obj2;
                if (spark.f8711o0) {
                    spark.i0.d.h(1);
                    org.bitspark.android.utils.m.m(1, a2.a.s("OHp0y8+DbOgudX/W2pA=\n", "ayorj4rVJas=\n"));
                    org.bitspark.android.utils.b.c().getClass();
                    try {
                        boolean z10 = x4.b.d.b(spark, x4.c.f10998a) == 0;
                        boolean z11 = n5.c.b(spark, a2.a.s("IB4kKbOUaq8vFGdmup93pyoVZ2C5iCurIgI9KbKJZKUmBiZ1v9VhsS0QJG6gng==\n", "Q3FJB9T7Bcg=\n"), false) > 0;
                        if (z10 && z11) {
                            z7 = true;
                        }
                    } catch (Exception e5) {
                        String strS = a2.a.s("jYG9m7UnZg6NnpuUqgM=\n", "5PL69sZmEG8=\n");
                        String string = e5.toString();
                        boolean z12 = org.bitspark.android.utils.m.f8784b;
                        Log.i(strS, string);
                    }
                    if (z7) {
                        String str = ea.h.f6672a;
                    }
                    spark.E0.setVisibility(8);
                    spark.T1.setVisibility(8);
                } else {
                    spark.E0.setVisibility(8);
                    spark.T1.setVisibility(8);
                    spark.i0.d.h(0);
                    org.bitspark.android.utils.m.m(0, a2.a.s("4IQVbel5NCL2ix5w/Go=\n", "s9RKKawvfWE=\n"));
                }
                ((Dialog) obj).dismiss();
                spark.T.h();
                break;
            case 2:
                fa.x xVar = (fa.x) obj2;
                if (xVar.d != null && (bindingAdapterPosition = ((fa.w) obj).getBindingAdapterPosition()) != -1) {
                    int i6 = 0;
                    while (i6 < xVar.f6971c.size()) {
                        ((Menu) xVar.f6971c.get(i6)).setSelected(i6 == bindingAdapterPosition);
                        i6++;
                    }
                    xVar.notifyDataSetChanged();
                    if (bindingAdapterPosition < xVar.f6971c.size()) {
                        ea.k kVar = xVar.d;
                        Spark spark2 = kVar.f6705b;
                        spark2.G0 = false;
                        spark2.i0.C.clear();
                        ra.f.b().a();
                        ra.f.b().f9643h = false;
                        ra.f fVarB = ra.f.b();
                        ChannelBean channelBean = fVarB.f9641e;
                        if (channelBean != null) {
                            fVarB.e(channelBean, Boolean.valueOf(fVarB.f9642g), bindingAdapterPosition, fVarB.f9647l);
                            break;
                        }
                    }
                }
                break;
            default:
                ma.a aVar = (ma.a) obj2;
                na.a aVar2 = aVar.f8281e;
                if (aVar2 != null) {
                    MyKeyBoardView.a(aVar2.f8507a, view, ((t3.d) obj).getLayoutPosition());
                }
                na.a aVar3 = aVar.f8282g;
                if (aVar3 != null && aVar3.f8507a.f8750i != null) {
                    String string2 = view instanceof TextView ? ((TextView) view).getText().toString() : null;
                    android.util.Log.e(a2.a.s("RU9fCoGN\n", "eHJiYeT0gfM=\n"), string2 + "");
                    break;
                }
                break;
        }
    }
}
