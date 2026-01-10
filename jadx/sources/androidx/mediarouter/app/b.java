package androidx.mediarouter.app;

import android.app.Activity;
import android.view.View;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.List;
import org.bitspark.android.R$drawable;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.SettingBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2550a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2551b;

    public /* synthetic */ b(int i6, Object obj) {
        this.f2550a = i6;
        this.f2551b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f2550a) {
            case 0:
                ((f) this.f2551b).dismiss();
                break;
            default:
                qa.g gVar = (qa.g) this.f2551b;
                ChannelBean channelBean = (ChannelBean) gVar.f9390a.i0.f10255k.d();
                if (channelBean != null) {
                    gVar.f9390a.T();
                    qa.o oVarA = gVar.a();
                    List<ChannelBean.SourcesBean> sources = channelBean.getSources();
                    boolean z7 = false;
                    if (sources != null && sources.size() > 1) {
                        z7 = true;
                    }
                    oVarA.getClass();
                    String strS = a2.a.s("SXHmkek=\n", "Kh2P8oLBubY=\n");
                    qa.b bVar = gVar.f9392c;
                    j9.i.f(bVar, strS);
                    qa.l lVarB = oVarA.b();
                    ArrayList arrayList = lVarB.C;
                    arrayList.clear();
                    Activity activity = lVarB.f9401a;
                    if (z7) {
                        int i6 = R$drawable.selector_setting_source;
                        String string = activity.getString(R.string.Source);
                        j9.i.e(string, a2.a.s("x+MIz5WVq8nHrlKyz84=\n", "oIZ8nOHnwqc=\n"));
                        arrayList.add(new SettingBean(i6, string));
                    }
                    int i10 = R$drawable.selector_setting_fullscreen;
                    String string2 = activity.getString(R.string.Display_mode);
                    j9.i.e(string2, a2.a.s("A8MuWmeJdmUDjnQnPdI=\n", "ZKZaCRP7Hws=\n"));
                    arrayList.add(new SettingBean(i10, string2));
                    a2.a.s("eniclMqrrS16YoTYiK3sIHV+hNiep+wte2Pdlp+koGNgdICdyqe+JDpvmYyZuK0xfyORlo66oypw\nI6OIi7qn\n", "FA3w+OrIzEM=\n");
                    if (Spark.f8672m2 == 1) {
                        int i11 = R$drawable.selector_setting_subtitle;
                        String string3 = activity.getString(R.string.Subtitles_Language);
                        j9.i.e(string3, a2.a.s("j/fO7AIlDAyPupSRWH4=\n", "6JK6v3ZXZWI=\n"));
                        arrayList.add(new SettingBean(i11, string3));
                    }
                    com.bumptech.glide.d.H(lVarB.f9418t, arrayList);
                    lVarB.f9405g = new qa.d(oVarA, 2, bVar);
                    if (lVarB.d != null && !lVarB.a().isShowing()) {
                        lVarB.a().show();
                    }
                    lVarB.b();
                    break;
                }
                break;
        }
    }
}
