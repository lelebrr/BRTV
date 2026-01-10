package ta;

import android.os.Bundle;
import android.os.Message;
import android.view.View;
import androidx.fragment.app.j0;
import androidx.lifecycle.d0;
import androidx.lifecycle.v0;
import c2.b;
import com.tencent.mars.xlog.Log;
import ea.d;
import ea.e;
import ea.h;
import ea.q;
import java.util.ArrayList;
import java.util.Iterator;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.SeasonMenu;
import org.bitspark.android.beans.VodMenu;
import org.bitspark.android.utils.m;
import org.bitspark.android.utils.o;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class a extends v0 {
    public final ArrayList E;
    public final ArrayList F;
    public boolean G;

    /* renamed from: n, reason: collision with root package name */
    public b f10258n;

    /* renamed from: o, reason: collision with root package name */
    public String f10259o;

    /* renamed from: q, reason: collision with root package name */
    public ChannelBean f10261q;

    /* renamed from: r, reason: collision with root package name */
    public ChannelBean.SourcesBean f10262r;

    /* renamed from: t, reason: collision with root package name */
    public int f10264t;

    /* renamed from: u, reason: collision with root package name */
    public int f10265u;
    public final d0 d = new d0();

    /* renamed from: e, reason: collision with root package name */
    public final d0 f10250e = new d0();
    public int f = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f10251g = 0;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f10252h = new ArrayList();

    /* renamed from: i, reason: collision with root package name */
    public final d0 f10253i = new d0();

    /* renamed from: j, reason: collision with root package name */
    public final d0 f10254j = new d0();

    /* renamed from: k, reason: collision with root package name */
    public final d0 f10255k = new d0();

    /* renamed from: l, reason: collision with root package name */
    public final d0 f10256l = new d0();

    /* renamed from: m, reason: collision with root package name */
    public final d0 f10257m = new d0();

    /* renamed from: p, reason: collision with root package name */
    public d f10260p = d.f6633e;

    /* renamed from: s, reason: collision with root package name */
    public int f10263s = 0;

    /* renamed from: v, reason: collision with root package name */
    public boolean f10266v = true;

    /* renamed from: w, reason: collision with root package name */
    public int f10267w = 2;

    /* renamed from: x, reason: collision with root package name */
    public int f10268x = 0;

    /* renamed from: y, reason: collision with root package name */
    public final ArrayList f10269y = new ArrayList();

    /* renamed from: z, reason: collision with root package name */
    public final ArrayList f10270z = new ArrayList();
    public final ArrayList A = new ArrayList();
    public final ArrayList B = new ArrayList();
    public final ArrayList C = new ArrayList();
    public final ArrayList D = new ArrayList();

    public a() {
        new ArrayList();
        this.E = new ArrayList();
        this.F = new ArrayList();
        this.G = true;
    }

    public final void c() {
        int seasons = this.f10261q.getSeasons();
        int i6 = 0;
        while (i6 < seasons) {
            StringBuilder sb = new StringBuilder();
            sb.append(a2.a.s("RP45dmbQPA==\n", "F5tYBQm+HOk=\n"));
            int i10 = i6 + 1;
            sb.append(i10);
            this.f10270z.add(new SeasonMenu(sb.toString(), i6 == 0, this.f10261q.getSeasonSources(i10)));
            i6 = i10;
        }
    }

    public final int d(int i6) {
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.A;
            if (i10 >= arrayList.size()) {
                return i6;
            }
            if (((ChannelBean.SourcesBean) arrayList.get(i10)).getId() == this.f10262r.getId()) {
                return i10;
            }
            i10++;
        }
    }

    public final int e(ArrayList arrayList) {
        if (arrayList == null) {
            return -1;
        }
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            ChannelBean.SourcesBean sourcesBean = (ChannelBean.SourcesBean) arrayList.get(i6);
            if (this.f10262r != null && sourcesBean != null && sourcesBean.getId() == this.f10262r.getId()) {
                return i6;
            }
        }
        return -1;
    }

    public final void f() {
        boolean z7;
        b bVar = this.f10258n;
        if (bVar != null) {
            o oVar = o.f;
            ka.b bVar2 = (ka.b) bVar.f3340b;
            ArrayList arrayList = bVar2.i().d;
            int size = arrayList != null ? arrayList.size() : 0;
            String strS = a2.a.s("CXn2\n", "XTixJKXyn6k=\n");
            String strJ = q.j("N4qGk11XClE5h6+xVl03Qj2A/tI=\n", "WOTE8j48WSU=\n", new StringBuilder(), size);
            boolean z10 = m.f8784b;
            Log.i(strS, strJ);
            if (size <= 0 || oVar.f8790c == null) {
                z7 = false;
            } else {
                j0 j0VarI = bVar2.i();
                j0VarI.getClass();
                androidx.fragment.app.a aVar = new androidx.fragment.app.a(j0VarI);
                aVar.h(oVar.f8790c);
                aVar.e(false);
                oVar.f8790c = null;
                oVar.f8791e = false;
                z7 = true;
            }
            o oVar2 = (o) bVar.f;
            if (z7) {
                ((View) bVar.f3341c).setVisibility(8);
                ((View) bVar.d).setVisibility(0);
                o9.d.y((View) bVar.f3342e);
                oVar2.d();
            }
            oVar2.f8789b.k();
            oVar2.e();
        }
    }

    public final boolean g() {
        int iIntValue;
        d0 d0Var = this.f10250e;
        if (d0Var == null || d0Var.d() == null) {
            iIntValue = m.f(-1, a2.a.s("m8/nICFVRUyb1vwtKlBS\n", "yJ+4aGgRABM=\n")).intValue();
            if (iIntValue == -1) {
                iIntValue = h.T ? 0 : 1;
            }
        } else {
            iIntValue = ((Integer) d0Var.d()).intValue();
        }
        return iIntValue == 0;
    }

    public final boolean h() {
        d0 d0Var = this.d;
        return (d0Var.d() == null ? m.f(0, a2.a.s("YGgSY7ud5YN2Zxl+ro4=\n", "MzhNJ/7LrMA=\n")).intValue() : ((Integer) d0Var.d()).intValue()) == 1;
    }

    public final void i(int i6, ChannelBean channelBean, ArrayList arrayList) {
        this.G = true;
        Message message = new Message();
        message.what = 85;
        Bundle bundle = new Bundle();
        bundle.putString(a2.a.s("OO95ynv3phM=\n", "VYoXvy+O1nY=\n"), this.f10260p.name());
        bundle.putInt(a2.a.s("xhN/Gg==\n", "pXsWfvbgtqs=\n"), channelBean.getChid());
        bundle.putInt(a2.a.s("iXL/Zqs=\n", "5ReJA8dkeqk=\n"), channelBean.getLevel());
        bundle.putString(a2.a.s("lzfg1g==\n", "+VaNs0G+O3w=\n"), channelBean.getName().getInit());
        bundle.putInt(a2.a.s("vb2L7Hk=\n", "1NPviQHxnsw=\n"), i6);
        ArrayList<String> arrayList2 = new ArrayList<>();
        ArrayList<String> arrayList3 = new ArrayList<>();
        ArrayList<String> arrayList4 = new ArrayList<>();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ChannelBean.SourcesBean sourcesBean = (ChannelBean.SourcesBean) it.next();
            arrayList2.add("" + sourcesBean.getId());
            arrayList3.add(sourcesBean.getSubTitle());
            arrayList4.add(sourcesBean.getAddress());
        }
        bundle.putStringArrayList(a2.a.s("WggXvjtRUk9d\n", "KX11918dOzw=\n"), arrayList2);
        bundle.putStringArrayList(a2.a.s("OEfNYz63PkcHW9xj\n", "SzKvF1fDUiI=\n"), arrayList3);
        bundle.putStringArrayList(a2.a.s("dhAsq2Fbxg==\n", "A2JA5wgosnc=\n"), arrayList4);
        message.setData(bundle);
        Spark.X1.sendMessage(message);
    }

    public final void j() {
        this.f10267w = 2;
        this.f10263s = 0;
        this.f10262r = null;
        this.f10265u = 0;
        this.f10264t = -1;
        this.G = true;
    }

    public final void k() {
        j();
        this.f10270z.clear();
        this.A.clear();
        this.B.clear();
        this.D.clear();
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.F;
            if (i6 >= arrayList.size()) {
                return;
            }
            VodMenu vodMenu = (VodMenu) arrayList.get(i6);
            if (i6 != e.f6640e.f6642a) {
                vodMenu.setEnable(false);
            } else {
                vodMenu.setEnable(true);
            }
            i6++;
        }
    }

    public final void l() {
        int seasons;
        this.f10270z.clear();
        this.A.clear();
        ChannelBean channelBean = this.f10261q;
        ArrayList arrayList = this.A;
        boolean z7 = true;
        if (channelBean != null && (seasons = channelBean.getSeasons()) != 0) {
            if (seasons == 1) {
                arrayList.addAll(this.f10261q.getSources());
            } else {
                c();
                m(this.f10263s);
            }
        }
        VodMenu vodMenu = (VodMenu) this.F.get(0);
        if (this.f10270z.size() <= 1 && arrayList.size() <= 1) {
            z7 = false;
        }
        vodMenu.setEnable(z7);
    }

    public final void m(int i6) {
        ArrayList arrayList = this.A;
        arrayList.clear();
        ArrayList arrayList2 = this.f10270z;
        if (i6 < arrayList2.size()) {
            arrayList.addAll(((SeasonMenu) arrayList2.get(i6)).getSourceList());
        }
    }

    public final void n() {
        ArrayList arrayList = this.E;
        arrayList.clear();
        int i6 = 0;
        while (true) {
            ArrayList arrayList2 = this.F;
            if (i6 >= arrayList2.size()) {
                return;
            }
            VodMenu vodMenu = (VodMenu) arrayList2.get(i6);
            if (vodMenu.isEnable()) {
                arrayList.add(vodMenu);
            }
            i6++;
        }
    }

    public final void o(int i6) {
        ArrayList arrayList = this.A;
        if (i6 < arrayList.size()) {
            this.f10262r = (ChannelBean.SourcesBean) arrayList.get(i6);
        }
    }
}
