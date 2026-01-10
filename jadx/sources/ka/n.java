package ka;

import android.view.View;
import com.tencent.mars.xlog.Log;
import fa.d1;
import java.util.HashMap;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.Group;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7840a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f7841b;

    public /* synthetic */ n(r rVar, int i6) {
        this.f7840a = i6;
        this.f7841b = rVar;
    }

    public void a(View view, int i6, Boolean bool) {
        int i10 = 1;
        r rVar = this.f7841b;
        switch (this.f7840a) {
            case 1:
                String strS = a2.a.s("DXKlHjaH\n", "TyHoe1jyVLg=\n");
                String str = a2.a.s("sejSmm+HmKqq4/irbJuLiOSm\n", "3oaV6ADy6OM=\n") + bool;
                boolean z7 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS, str);
                rVar.h0(ea.d.f6630a);
                Log.i(a2.a.s("ezydxSX0\n", "OW/QoEuBTq4=\n"), String.valueOf(view.isSelected()) + a2.a.s("38k=\n", "o+kKFsj0OuI=\n") + view.getTag());
                if (view.getTag() != null) {
                    int iIntValue = ((Integer) view.getTag()).intValue();
                    rVar.f7860m0 = iIntValue;
                    HashMap map = rVar.f7857j0;
                    if (map != null && map.get(Integer.valueOf(iIntValue)) != null && ((Group) rVar.f7857j0.get(Integer.valueOf(rVar.f7860m0))).restrictedAccess) {
                        if (!Spark.f8662c2) {
                            if (!rVar.f7861n0) {
                                rVar.f7861n0 = true;
                                l6.h hVar = new l6.h(rVar.j());
                                hVar.f8017c = new d1(this, view, i6, i10);
                                sa.e eVarB = hVar.b();
                                eVarB.show();
                                eVarB.setOnDismissListener(new ea.t(2, this));
                                break;
                            }
                        } else {
                            r.f7848v0 = 0;
                            rVar.X.notifyItemChanged(i6);
                            rVar.c0();
                            break;
                        }
                    } else {
                        rVar.c0();
                        break;
                    }
                }
                break;
            default:
                String strS2 = a2.a.s("6TktnFKG\n", "q2pg+TzzZ+I=\n");
                String str2 = a2.a.s("lHcaAaH3K1OUdxoBofcrU5R3GU3snXwV2hdVS+G/KFDRJlZPoqBnBdQ8AwI=\n", "t1Q5IoLUCHA=\n") + bool;
                boolean z10 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS2, str2);
                ChannelBean channelBean = (ChannelBean) view.getTag();
                if (rVar.f7865r0) {
                    rVar.f7865r0 = false;
                    org.bitspark.android.utils.o oVar = org.bitspark.android.utils.o.f;
                    oVar.d();
                    oVar.f8789b.k();
                    oVar.e();
                }
                if (channelBean != null) {
                    rVar.U(bool, channelBean);
                    break;
                }
                break;
        }
    }

    public void b(View view, boolean z7) {
        View view2;
        ChannelBean channelBean;
        switch (this.f7840a) {
            case 1:
                if (view == null) {
                    String strS = a2.a.s("xVwWkwpP\n", "hw9b9mQ6idM=\n");
                    String strS2 = a2.a.s("TfOLWhogz0RP9sRBH2zV\n", "KoHkL2oAuS0=\n");
                    boolean z10 = org.bitspark.android.utils.m.f8784b;
                    Log.i(strS, strS2);
                    break;
                } else if (this.f7841b.f7860m0 != ((Integer) view.getTag()).intValue()) {
                    this.f7841b.f7860m0 = ((Integer) view.getTag()).intValue();
                    if (ga.d.d != null && ga.d.d.get(Integer.valueOf(this.f7841b.f7860m0)) != null) {
                        Spark.f8661b2 = ((Group) ga.d.d.get(Integer.valueOf(this.f7841b.f7860m0))).type;
                    }
                    this.f7841b.c0();
                    fa.d0 d0Var = this.f7841b.Y;
                    if (d0Var != null && (view2 = d0Var.f6830e) != null) {
                        view2.setSelected(false);
                        this.f7841b.Y.b(null);
                        break;
                    }
                }
                break;
            default:
                if (z7 && (channelBean = (ChannelBean) view.getTag()) != null) {
                    this.f7841b.g0(ga.h.d(channelBean));
                    break;
                }
                break;
        }
    }
}
