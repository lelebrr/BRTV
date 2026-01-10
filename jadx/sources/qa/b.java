package qa;

import android.app.Activity;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.leanback.widget.VerticalGridView;
import androidx.leanback.widget.e0;
import com.p2elite.brtv2.R;
import ja.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.Menu;
import org.bitspark.android.beans.Source;
import x8.r;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements i9.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9378a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9379b;

    public /* synthetic */ b(int i6, Object obj) {
        this.f9378a = i6;
        this.f9379b = obj;
    }

    @Override // i9.l
    public final Object invoke(Object obj) {
        VerticalGridView verticalGridView;
        VerticalGridView verticalGridView2;
        TextView textView;
        String string;
        VerticalGridView verticalGridView3;
        VerticalGridView verticalGridView4;
        VerticalGridView verticalGridView5;
        TextView textView2;
        VerticalGridView verticalGridView6;
        VerticalGridView verticalGridView7;
        TextView textView3;
        Object obj2 = this.f9379b;
        int i6 = 0;
        int i10 = 1;
        switch (this.f9378a) {
            case 0:
                String str = (String) obj;
                j9.i.f(str, a2.a.s("ZQgzYA==\n", "C2leBQOAux0=\n"));
                g gVar = (g) obj2;
                ChannelBean channelBean = (ChannelBean) gVar.f9390a.i0.f10255k.d();
                if (channelBean != null) {
                    List<ChannelBean.SourcesBean> sources = channelBean.getSources();
                    j9.i.e(sources, a2.a.s("LyhZ1FIfxrotPgWpE0Sd\n", "SE0thz1qtNk=\n"));
                    ArrayList arrayList = new ArrayList();
                    for (ChannelBean.SourcesBean sourcesBean : sources) {
                        if (!TextUtils.isEmpty(sourcesBean.getSubTitle())) {
                            int id = sourcesBean.getId();
                            String address = sourcesBean.getAddress();
                            j9.i.e(address, a2.a.s("krsnxHZZgouGrXurPBPZ\n", "9d5ThRI98O4=\n"));
                            String subTitle = sourcesBean.getSubTitle();
                            if (subTitle == null) {
                                subTitle = "";
                            }
                            arrayList.add(new Source(id, address, subTitle, r.f11098a, false, 0, false));
                        }
                    }
                    Spark spark = gVar.f9390a;
                    if (str.equals(spark.getString(R.string.Source))) {
                        int chid = channelBean.getChid();
                        if (!arrayList.isEmpty()) {
                            int size = arrayList.size();
                            int i11 = 0;
                            while (true) {
                                if (i11 >= size) {
                                    String str2 = (String) ra.f.b().f9640c.get(String.valueOf(chid));
                                    if (str2 == null) {
                                        str2 = ea.h.H;
                                    }
                                    Iterator it = arrayList.iterator();
                                    int i12 = 0;
                                    while (true) {
                                        if (!it.hasNext()) {
                                            i12 = -1;
                                        } else if (!j9.i.a(str2, ((Source) it.next()).getShort_title())) {
                                            i12++;
                                        }
                                    }
                                    if (i12 < 0) {
                                        i12 = 0;
                                    }
                                    ((Source) arrayList.get(i12)).setSelected(true);
                                } else if (!((Source) arrayList.get(i11)).isSelected()) {
                                    i11++;
                                }
                            }
                        }
                        o oVarA = gVar.a();
                        c cVar = new c(spark, arrayList, gVar);
                        oVarA.getClass();
                        a2.a.s("fGI2RRaafg==\n", "Dw1DN3X/DRE=\n");
                        a2.a.s("az5UiWku6FVp\n", "Akox5CpCgTY=\n");
                        l lVarB = oVarA.b();
                        lVarB.f9406h = cVar;
                        a2.a.s("ox7XC43Esg==\n", "0HGiee6hwRc=\n");
                        if (lVarB.f9411m == null) {
                            Activity activity = lVarB.f9401a;
                            LayoutInflater layoutInflaterFrom = LayoutInflater.from(activity);
                            FrameLayout frameLayout = ((ja.h) lVarB.f).f7501l;
                            int i13 = ja.n.f7516o;
                            lVarB.f9411m = (ja.n) w0.c.a(layoutInflaterFrom, R.layout.view_live_setting_source, frameLayout);
                            Typeface typefaceCreateFromAsset = Typeface.createFromAsset(activity.getAssets(), a2.a.s("1Y0WEqqEvIzdiwpI8bGp\n", "s+J4ZoXFyuk=\n"));
                            ja.n nVar = lVarB.f9411m;
                            if (nVar != null && (textView3 = nVar.f7518m) != null) {
                                textView3.setTypeface(typefaceCreateFromAsset);
                            }
                            ja.n nVar2 = lVarB.f9411m;
                            if (nVar2 != null && (verticalGridView7 = nVar2.f7519n) != null) {
                                verticalGridView7.setAdapter(lVarB.f9416r);
                            }
                            lVarB.f9414p.f9425a = new h(lVarB, i10);
                        }
                        com.bumptech.glide.d.H(lVarB.f9415q, arrayList);
                        ja.n nVar3 = lVarB.f9411m;
                        j9.i.c(nVar3);
                        String strS = a2.a.s("LZ77Kzx9MeFk1aFQ\n", "SvuPeVMSRck=\n");
                        View view = nVar3.d;
                        j9.i.e(view, strS);
                        lVarB.c(view, j.f9397b);
                        ja.n nVar4 = lVarB.f9411m;
                        if (nVar4 != null && (verticalGridView6 = nVar4.f7519n) != null) {
                            com.bumptech.glide.d.D(verticalGridView6, 0);
                        }
                    } else if (str.equals(spark.getString(R.string.Subtitles_Language))) {
                        o oVarA2 = gVar.a();
                        ArrayList arrayList2 = spark.i0.C;
                        j9.i.e(arrayList2, a2.a.s("wV7C4vsWesLEQ9ji5Aprwg==\n", "rTe0h6hjGLY=\n"));
                        if (spark.i0.f == 0) {
                            string = spark.getString(R.string.Top);
                            j9.i.e(string, a2.a.s("t0s4eYSA10K3BmIE3ts=\n", "0C5MKvDyviw=\n"));
                        } else {
                            string = spark.getString(R.string.Bottom);
                            j9.i.e(string, a2.a.s("CmmZgdCkE3MKJMP8iv8=\n", "bQzt0qTWeh0=\n"));
                        }
                        c cVar2 = new c(gVar, spark, channelBean);
                        d dVar = new d(spark, i6, gVar);
                        oVarA2.getClass();
                        a2.a.s("fP8jmJ3dSh9D4zKY\n", "D4pB7PSpJno=\n");
                        a2.a.s("Y9Un0+PiFrJczybG/v8VuQ==\n", "EKBFp4qWetc=\n");
                        a2.a.s("qQ6Q4cDQMSKZF5v2wg==\n", "2nvylamkXUc=\n");
                        a2.a.s("uflOOBb+eaiG408tC+N6o4ngRS8U\n", "yowsTH+KFc0=\n");
                        l lVarB2 = oVarA2.b();
                        lVarB2.f9407i = cVar2;
                        lVarB2.f9408j = dVar;
                        a2.a.s("dPS5MeAgU4tL6Kgx\n", "B4HbRYlUP+4=\n");
                        a2.a.s("qN3OeHOEq8CQ19Vt\n", "xLKtGQftxK4=\n");
                        p pVar = lVarB2.f9412n;
                        Activity activity2 = lVarB2.f9401a;
                        if (pVar == null) {
                            LayoutInflater layoutInflaterFrom2 = LayoutInflater.from(activity2);
                            FrameLayout frameLayout2 = ((ja.h) lVarB2.f).f7501l;
                            int i14 = p.f7522o;
                            lVarB2.f9412n = (p) w0.c.a(layoutInflaterFrom2, R.layout.view_live_setting_subtitle, frameLayout2);
                            Typeface typefaceCreateFromAsset2 = Typeface.createFromAsset(activity2.getAssets(), a2.a.s("kQh7NjLU93OZDmdsaeHi\n", "92cVQh2VgRY=\n"));
                            p pVar2 = lVarB2.f9412n;
                            if (pVar2 != null && (textView2 = pVar2.f7524m) != null) {
                                textView2.setTypeface(typefaceCreateFromAsset2);
                            }
                            p pVar3 = lVarB2.f9412n;
                            if (pVar3 != null && (verticalGridView5 = pVar3.f7525n) != null) {
                                a2.a.s("1zmjczPO\n", "603LGkDwxp4=\n");
                                verticalGridView5.addItemDecoration(new sa.b(0, 0, (int) (8 * activity2.getResources().getDisplayMetrics().density), 0));
                            }
                            p pVar4 = lVarB2.f9412n;
                            if (pVar4 != null && (verticalGridView4 = pVar4.f7525n) != null) {
                                verticalGridView4.setAdapter(lVarB2.B);
                            }
                            lVarB2.f9423y.f9425a = new h(lVarB2, 3);
                            lVarB2.f9424z.f9425a = new h(lVarB2, 4);
                        }
                        a1.b bVar = lVarB2.A;
                        ArrayList arrayList3 = (ArrayList) bVar.d;
                        int size2 = arrayList3.size();
                        e0 e0Var = (e0) bVar.f47b;
                        if (size2 != 0) {
                            arrayList3.clear();
                            e0Var.d(0, size2);
                        }
                        boolean zIsEmpty = arrayList2.isEmpty();
                        ArrayList arrayList4 = (ArrayList) bVar.d;
                        if (!zIsEmpty) {
                            String string2 = activity2.getString(R.string.language);
                            int size3 = arrayList4.size();
                            arrayList4.add(size3, string2);
                            e0Var.c(size3, 1);
                            int size4 = arrayList4.size();
                            int size5 = arrayList2.size();
                            if (size5 != 0) {
                                arrayList4.addAll(size4, arrayList2);
                                e0Var.c(size4, size5);
                            }
                        }
                        String string3 = activity2.getString(R.string.Position);
                        int size6 = arrayList4.size();
                        arrayList4.add(size6, string3);
                        e0Var.c(size6, 1);
                        ArrayList<Menu> arrayList5 = lVarB2.E;
                        for (Menu menu : arrayList5) {
                            menu.setSelected(string.equals(menu.getName()));
                        }
                        int size7 = arrayList4.size();
                        int size8 = arrayList5.size();
                        if (size8 != 0) {
                            arrayList4.addAll(size7, arrayList5);
                            e0Var.c(size7, size8);
                        }
                        p pVar5 = lVarB2.f9412n;
                        j9.i.c(pVar5);
                        String strS2 = a2.a.s("8+6Ksqb0L6q6pdDJ\n", "lIv+4MmbW4I=\n");
                        View view2 = pVar5.d;
                        j9.i.e(view2, strS2);
                        lVarB2.c(view2, j.f9398c);
                        p pVar6 = lVarB2.f9412n;
                        if (pVar6 != null && (verticalGridView3 = pVar6.f7525n) != null) {
                            com.bumptech.glide.d.D(verticalGridView3, 1);
                        }
                    } else if (str.equals(spark.getString(R.string.Display_mode))) {
                        o oVarA3 = gVar.a();
                        d dVar2 = new d(gVar, spark);
                        oVarA3.getClass();
                        a2.a.s("Kzf7eP0=\n", "SFuSG5ar8YA=\n");
                        l lVarB3 = oVarA3.b();
                        lVarB3.f9409k = dVar2;
                        if (lVarB3.f9413o == null) {
                            Activity activity3 = lVarB3.f9401a;
                            LayoutInflater layoutInflaterFrom3 = LayoutInflater.from(activity3);
                            FrameLayout frameLayout3 = ((ja.h) lVarB3.f).f7501l;
                            int i15 = ja.j.f7504o;
                            lVarB3.f9413o = (ja.j) w0.c.a(layoutInflaterFrom3, R.layout.view_live_setting_fullscreen, frameLayout3);
                            Typeface typefaceCreateFromAsset3 = Typeface.createFromAsset(activity3.getAssets(), a2.a.s("NDg4wyX6OJc8PiSZfs8t\n", "UldWtwq7TvI=\n"));
                            ja.j jVar = lVarB3.f9413o;
                            if (jVar != null && (textView = jVar.f7506m) != null) {
                                textView.setTypeface(typefaceCreateFromAsset3);
                            }
                            ja.j jVar2 = lVarB3.f9413o;
                            if (jVar2 != null && (verticalGridView2 = jVar2.f7507n) != null) {
                                verticalGridView2.setAdapter(lVarB3.f9422x);
                            }
                            lVarB3.f9420v.f9425a = new h(lVarB3, i6);
                        }
                        com.bumptech.glide.d.H(lVarB3.f9421w, lVarB3.D);
                        ja.j jVar3 = lVarB3.f9413o;
                        j9.i.c(jVar3);
                        String strS3 = a2.a.s("nD0duIzad//VdkfD\n", "+1hp6uO1A9c=\n");
                        View view3 = jVar3.d;
                        j9.i.e(view3, strS3);
                        lVarB3.c(view3, j.d);
                        ja.j jVar4 = lVarB3.f9413o;
                        if (jVar4 != null && (verticalGridView = jVar4.f7507n) != null) {
                            com.bumptech.glide.d.D(verticalGridView, 0);
                        }
                    }
                }
                return w8.l.f10832a;
            default:
                return obj == ((x8.a) obj2) ? "(this Collection)" : String.valueOf(obj);
        }
    }
}
