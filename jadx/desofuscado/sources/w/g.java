package w;

import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class g implements e {
    public final n d;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f10771g;

    /* renamed from: a, reason: collision with root package name */
    public n f10767a = null;

    /* renamed from: b, reason: collision with root package name */
    public boolean f10768b = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10769c = false;

    /* renamed from: e, reason: collision with root package name */
    public int f10770e = 1;

    /* renamed from: h, reason: collision with root package name */
    public int f10772h = 1;

    /* renamed from: i, reason: collision with root package name */
    public h f10773i = null;

    /* renamed from: j, reason: collision with root package name */
    public boolean f10774j = false;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f10775k = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f10776l = new ArrayList();

    public g(n nVar) {
        this.d = nVar;
    }

    @Override // w.e
    public final void a(e eVar) {
        ArrayList arrayList = this.f10776l;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((g) it.next()).f10774j) {
                return;
            }
        }
        this.f10769c = true;
        n nVar = this.f10767a;
        if (nVar != null) {
            nVar.a(this);
        }
        if (this.f10768b) {
            this.d.a(this);
            return;
        }
        Iterator it2 = arrayList.iterator();
        g gVar = null;
        int i6 = 0;
        while (it2.hasNext()) {
            g gVar2 = (g) it2.next();
            if (!(gVar2 instanceof h)) {
                i6++;
                gVar = gVar2;
            }
        }
        if (gVar != null && i6 == 1 && gVar.f10774j) {
            h hVar = this.f10773i;
            if (hVar != null) {
                if (!hVar.f10774j) {
                    return;
                } else {
                    this.f = this.f10772h * hVar.f10771g;
                }
            }
            d(gVar.f10771g + this.f);
        }
        n nVar2 = this.f10767a;
        if (nVar2 != null) {
            nVar2.a(this);
        }
    }

    public final void b(n nVar) {
        this.f10775k.add(nVar);
        if (this.f10774j) {
            nVar.a(nVar);
        }
    }

    public final void c() {
        this.f10776l.clear();
        this.f10775k.clear();
        this.f10774j = false;
        this.f10771g = 0;
        this.f10769c = false;
        this.f10768b = false;
    }

    public void d(int i6) {
        if (this.f10774j) {
            return;
        }
        this.f10774j = true;
        this.f10771g = i6;
        Iterator it = this.f10775k.iterator();
        while (it.hasNext()) {
            e eVar = (e) it.next();
            eVar.a(eVar);
        }
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.d.f10784b.Y);
        sb.append(":");
        switch (this.f10770e) {
            case 1:
                str = "UNKNOWN";
                break;
            case 2:
                str = "HORIZONTAL_DIMENSION";
                break;
            case 3:
                str = "VERTICAL_DIMENSION";
                break;
            case 4:
                str = "LEFT";
                break;
            case 5:
                str = "RIGHT";
                break;
            case 6:
                str = "TOP";
                break;
            case 7:
                str = "BOTTOM";
                break;
            case 8:
                str = "BASELINE";
                break;
            default:
                str = "null";
                break;
        }
        sb.append(str);
        sb.append("(");
        sb.append(this.f10774j ? Integer.valueOf(this.f10771g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f10776l.size());
        sb.append(":d=");
        sb.append(this.f10775k.size());
        sb.append(">");
        return sb.toString();
    }
}
