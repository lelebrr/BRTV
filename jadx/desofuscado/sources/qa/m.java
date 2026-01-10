package qa;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import org.bitspark.android.beans.Menu;
import org.bitspark.android.beans.SettingBean;
import org.bitspark.android.beans.Source;
import org.bitspark.android.beans.SubtitleMenu;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m implements androidx.leanback.widget.n {

    /* renamed from: a, reason: collision with root package name */
    public i9.l f9425a;

    /* renamed from: b, reason: collision with root package name */
    public i f9426b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f9427c;

    public static void b(View view, Object obj, i9.l lVar) {
        j9.i.f(view, a2.a.s("UU14ng==\n", "IyIX6vGYXe0=\n"));
        view.setOnClickListener(new com.youth.banner.adapter.a(lVar, 1, obj));
    }

    public static void c(View view, final Object obj) {
        j9.i.f(view, a2.a.s("FH93dQ==\n", "ZhAYAeKHViM=\n"));
        view.setOnKeyListener(new View.OnKeyListener() { // from class: ia.a
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view2, int i6, KeyEvent keyEvent) {
                return false;
            }
        });
    }

    public static void d(View view) {
        if (view == null || !view.hasTransientState()) {
            return;
        }
        view.animate().cancel();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i6 = 0; view.hasTransientState() && i6 < childCount; i6++) {
                d(viewGroup.getChildAt(i6));
            }
        }
    }

    private final void f(final ia.b bVar, Object obj) {
        final SettingBean settingBean = (SettingBean) obj;
        j9.i.f(bVar, a2.a.s("IemFVkZeG8ky8g==\n", "V4DgIQ4xd60=\n"));
        j9.i.f(settingBean, a2.a.s("Rwm4aQ==\n", "I2jMCPBqEs0=\n"));
        ja.c cVar = (ja.c) bVar.f7364b;
        cVar.f7483m = settingBean;
        synchronized (cVar) {
            cVar.f7485o |= 1;
        }
        cVar.G();
        cVar.S();
        View view = ((ja.c) bVar.f7364b).d;
        j9.i.e(view, a2.a.s("8GaPY21HQP25LdUY\n", "lwP7MQIoNNU=\n"));
        b(view, settingBean, this.f9425a);
        View view2 = ((ja.c) bVar.f7364b).d;
        j9.i.e(view2, a2.a.s("BaX2zKJIOuJM7qy3\n", "YsCCns0nTso=\n"));
        c(view2, settingBean);
        ((ja.c) bVar.f7364b).d.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: qa.n
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view3, boolean z7) {
                i iVar = this.f9428a.f9426b;
                if (iVar != null) {
                    View view4 = ((ja.c) bVar.f7364b).d;
                    j9.i.e(view4, a2.a.s("FILC6UTIpnldyZiS\n", "c+e2uyun0lE=\n"));
                    iVar.a(view4, Boolean.valueOf(z7), settingBean);
                }
            }
        });
    }

    private final void g(ia.b bVar, Object obj) {
        Source source = (Source) obj;
        j9.i.f(bVar, a2.a.s("7TvHvZsI8Az+IA==\n", "m1KiytNnnGg=\n"));
        j9.i.f(source, a2.a.s("8MDnug==\n", "lKGT24V8c/w=\n"));
        ja.d dVar = (ja.d) bVar.f7364b;
        dVar.f7487m = source;
        synchronized (dVar) {
            dVar.f7489o |= 1;
        }
        dVar.G();
        dVar.S();
        ((ja.d) bVar.f7364b).d.setSelected(source.isSelected());
        View view = ((ja.d) bVar.f7364b).d;
        j9.i.e(view, a2.a.s("kF+ji9C9WqjZFPnw\n", "9zrX2b/SLoA=\n"));
        b(view, source, this.f9425a);
        View view2 = ((ja.d) bVar.f7364b).d;
        j9.i.e(view2, a2.a.s("3JiyOaAPbi6V0+hC\n", "u/3Ga89gGgY=\n"));
        c(view2, source);
    }

    private final void h(ia.b bVar, Object obj) {
        SubtitleMenu subtitleMenu = (SubtitleMenu) obj;
        j9.i.f(bVar, a2.a.s("AmpNDvW93Q0RcQ==\n", "dAMoeb3SsWk=\n"));
        j9.i.f(subtitleMenu, a2.a.s("c2z17A==\n", "Fw2BjWibwFM=\n"));
        ja.e eVar = (ja.e) bVar.f7364b;
        eVar.f7491m = subtitleMenu;
        synchronized (eVar) {
            eVar.f7493o |= 1;
        }
        eVar.G();
        eVar.S();
        ((ja.e) bVar.f7364b).d.setSelected(subtitleMenu.isSelected());
        View view = ((ja.e) bVar.f7364b).d;
        j9.i.e(view, a2.a.s("HndetoY1NYRXPATN\n", "eRIq5OlaQaw=\n"));
        b(view, subtitleMenu, this.f9425a);
        View view2 = ((ja.e) bVar.f7364b).d;
        j9.i.e(view2, a2.a.s("Kfx3XYyjNvBgty0m\n", "TpkDD+PMQtg=\n"));
        c(view2, subtitleMenu);
    }

    public final void e(ia.b bVar, Object obj) {
        switch (this.f9427c) {
            case 0:
                Menu menu = (Menu) obj;
                j9.i.f(bVar, a2.a.s("GgZqNPcVrAMJHQ==\n", "bG8PQ796wGc=\n"));
                j9.i.f(menu, a2.a.s("6tyOsQ==\n", "jr360M3OEVg=\n"));
                ja.f fVar = (ja.f) bVar.f7364b;
                fVar.U(menu);
                boolean zIsSelected = menu.isSelected();
                View view = fVar.d;
                view.setSelected(zIsSelected);
                j9.i.e(view, a2.a.s("mN0CUdN7PiLRllgq\n", "/7h2A7wUSgo=\n"));
                b(view, menu, this.f9425a);
                j9.i.e(view, a2.a.s("jJ5qOrk/j0bF1TBB\n", "6/seaNZQ+24=\n"));
                c(view, menu);
                return;
            case 1:
                f(bVar, obj);
                return;
            case 2:
                g(bVar, obj);
                return;
            case 3:
                Menu menu2 = (Menu) obj;
                j9.i.f(bVar, a2.a.s("iNUxtZRtMbebzg==\n", "/rxUwtwCXdM=\n"));
                j9.i.f(menu2, a2.a.s("lFlpqw==\n", "8DgdyqGQ2zw=\n"));
                ja.f fVar2 = (ja.f) bVar.f7364b;
                fVar2.U(menu2);
                boolean zIsSelected2 = menu2.isSelected();
                View view2 = fVar2.d;
                view2.setSelected(zIsSelected2);
                j9.i.e(view2, a2.a.s("tJ354XXtWRT91qOa\n", "0/iNsxqCLTw=\n"));
                b(view2, menu2, this.f9425a);
                j9.i.e(view2, a2.a.s("6lQBdcPGHFmjH1sO\n", "jTF1J6ypaHE=\n"));
                c(view2, menu2);
                return;
            case 4:
                h(bVar, obj);
                return;
            default:
                String str = (String) obj;
                j9.i.f(bVar, a2.a.s("2Gp28Za/H1TLcQ==\n", "rgMTht7QczA=\n"));
                j9.i.f(str, a2.a.s("tHeToA==\n", "0BbnwYXnOaU=\n"));
                ja.g gVar = (ja.g) bVar.f7364b;
                gVar.f7499m = str;
                synchronized (gVar) {
                    gVar.f7500n |= 1;
                }
                gVar.G();
                gVar.S();
                View view3 = ((ja.g) bVar.f7364b).d;
                j9.i.e(view3, a2.a.s("S4jfTNkisbsCw4U3\n", "LO2rHrZNxZM=\n"));
                b(view3, str, this.f9425a);
                View view4 = ((ja.g) bVar.f7364b).d;
                j9.i.e(view4, a2.a.s("ixxmRIsme7TCVzw/\n", "7HkSFuRJD5w=\n"));
                c(view4, str);
                return;
        }
    }

    @Override // androidx.leanback.widget.n
    public final void a() {
    }
}
