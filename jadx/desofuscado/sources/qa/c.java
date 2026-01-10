package qa;

import androidx.lifecycle.o0;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.Source;
import org.bitspark.android.beans.SubtitleMenu;
import t9.u;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements i9.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9380a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f9381b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Spark f9382c;
    public final /* synthetic */ Serializable d;

    public /* synthetic */ c(Spark spark, ArrayList arrayList, g gVar) {
        this.f9382c = spark;
        this.d = arrayList;
        this.f9381b = gVar;
    }

    @Override // i9.l
    public final Object invoke(Object obj) {
        switch (this.f9380a) {
            case 0:
                Source source = (Source) obj;
                j9.i.f(source, a2.a.s("0ptAezaS\n", "ofQ1CVX38qg=\n"));
                Spark spark = this.f9382c;
                spark.G0 = false;
                spark.i0.C.clear();
                ra.f.b().a();
                ra.f.b().f9643h = false;
                ArrayList arrayList = (ArrayList) this.d;
                int iIndexOf = arrayList.indexOf(source);
                ra.f fVarB = ra.f.b();
                ChannelBean channelBean = fVarB.f9641e;
                if (channelBean != null) {
                    fVarB.e(channelBean, Boolean.valueOf(fVarB.f9642g), iIndexOf, fVarB.f9647l);
                }
                source.getShort_title();
                g gVar = this.f9381b;
                gVar.getClass();
                Iterator it = arrayList.iterator();
                int i6 = 0;
                while (it.hasNext()) {
                    Object next = it.next();
                    int i10 = i6 + 1;
                    if (i6 < 0) {
                        x8.k.P();
                        throw null;
                    }
                    ((Source) next).setSelected(i6 == iIndexOf);
                    i6 = i10;
                }
                gVar.a().a();
                return w8.l.f10832a;
            default:
                SubtitleMenu subtitleMenu = (SubtitleMenu) obj;
                j9.i.f(subtitleMenu, a2.a.s("TclXJLUDo/N82VQ+\n", "Prw1UNx3z5Y=\n"));
                g gVar2 = this.f9381b;
                int size = gVar2.f9390a.i0.C.size();
                int i11 = 0;
                while (true) {
                    Spark spark2 = gVar2.f9390a;
                    if (i11 >= size) {
                        u.k(o0.d(this.f9382c), null, new e((ChannelBean) this.d, subtitleMenu, null), 3);
                        ta.a aVar = spark2.i0;
                        spark2.k0(aVar.f10251g, aVar.C);
                        gVar2.a().a();
                        return w8.l.f10832a;
                    }
                    SubtitleMenu subtitleMenu2 = (SubtitleMenu) spark2.i0.C.get(i11);
                    subtitleMenu2.setSelected(j9.i.a(subtitleMenu.getLanguage(), subtitleMenu2.getLanguage()));
                    if (subtitleMenu2.isSelected()) {
                        spark2.i0.f10251g = i11;
                    }
                    i11++;
                }
        }
    }

    public /* synthetic */ c(g gVar, Spark spark, ChannelBean channelBean) {
        this.f9381b = gVar;
        this.f9382c = spark;
        this.d = channelBean;
    }
}
