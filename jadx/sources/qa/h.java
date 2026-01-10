package qa;

import java.util.ArrayList;
import org.bitspark.android.beans.Menu;
import org.bitspark.android.beans.SettingBean;
import org.bitspark.android.beans.Source;
import org.bitspark.android.beans.SubtitleMenu;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class h implements i9.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9393a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f9394b;

    public /* synthetic */ h(l lVar, int i6) {
        this.f9393a = i6;
        this.f9394b = lVar;
    }

    @Override // i9.l
    public final Object invoke(Object obj) {
        switch (this.f9393a) {
            case 0:
                Menu menu = (Menu) obj;
                j9.i.f(menu, a2.a.s("sxk=\n", "2m3zR6FrbbA=\n"));
                l lVar = this.f9394b;
                ArrayList<Menu> arrayList = lVar.D;
                for (Menu menu2 : arrayList) {
                    menu2.setSelected(j9.i.a(menu.getName(), menu2.getName()));
                }
                com.bumptech.glide.d.H(lVar.f9421w, arrayList);
                d dVar = lVar.f9409k;
                if (dVar != null) {
                    dVar.invoke(menu);
                }
                break;
            case 1:
                Source source = (Source) obj;
                j9.i.f(source, a2.a.s("ppU=\n", "z+HohCLy/lo=\n"));
                c cVar = this.f9394b.f9406h;
                if (cVar != null) {
                    cVar.invoke(source);
                }
                break;
            case 2:
                SettingBean settingBean = (SettingBean) obj;
                j9.i.f(settingBean, a2.a.s("aO8=\n", "AZtxyhLABKU=\n"));
                d dVar2 = this.f9394b.f9405g;
                if (dVar2 != null) {
                    dVar2.invoke(settingBean.getName());
                }
                break;
            case 3:
                SubtitleMenu subtitleMenu = (SubtitleMenu) obj;
                j9.i.f(subtitleMenu, a2.a.s("H5w=\n", "duhK3wYxqQ4=\n"));
                c cVar2 = this.f9394b.f9407i;
                if (cVar2 != null) {
                    cVar2.invoke(subtitleMenu);
                }
                break;
            default:
                Menu menu3 = (Menu) obj;
                j9.i.f(menu3, a2.a.s("hvM=\n", "74dULzLOgAQ=\n"));
                d dVar3 = this.f9394b.f9408j;
                if (dVar3 != null) {
                    dVar3.invoke(menu3.getName());
                }
                break;
        }
        return w8.l.f10832a;
    }
}
