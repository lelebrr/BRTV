package x2;

import java.io.File;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c implements f, com.bumptech.glide.load.data.d {

    /* renamed from: a, reason: collision with root package name */
    public final List f10855a;

    /* renamed from: b, reason: collision with root package name */
    public final g f10856b;

    /* renamed from: c, reason: collision with root package name */
    public final e f10857c;
    public int d = -1;

    /* renamed from: e, reason: collision with root package name */
    public v2.e f10858e;
    public List f;

    /* renamed from: g, reason: collision with root package name */
    public int f10859g;

    /* renamed from: h, reason: collision with root package name */
    public volatile b3.t f10860h;

    /* renamed from: i, reason: collision with root package name */
    public File f10861i;

    public c(List list, g gVar, e eVar) {
        this.f10855a = list;
        this.f10856b = gVar;
        this.f10857c = eVar;
    }

    @Override // x2.f
    public final boolean b() {
        while (true) {
            List list = this.f;
            boolean z7 = false;
            if (list != null && this.f10859g < list.size()) {
                this.f10860h = null;
                while (!z7 && this.f10859g < this.f.size()) {
                    List list2 = this.f;
                    int i6 = this.f10859g;
                    this.f10859g = i6 + 1;
                    b3.u uVar = (b3.u) list2.get(i6);
                    File file = this.f10861i;
                    g gVar = this.f10856b;
                    this.f10860h = uVar.a(file, gVar.f10867e, gVar.f, gVar.f10870i);
                    if (this.f10860h != null && this.f10856b.c(this.f10860h.f3220c.a()) != null) {
                        this.f10860h.f3220c.f(this.f10856b.f10876o, this);
                        z7 = true;
                    }
                }
                return z7;
            }
            int i10 = this.d + 1;
            this.d = i10;
            if (i10 >= this.f10855a.size()) {
                return false;
            }
            v2.e eVar = (v2.e) this.f10855a.get(this.d);
            g gVar2 = this.f10856b;
            File fileH = gVar2.f10869h.a().h(new d(eVar, gVar2.f10875n));
            this.f10861i = fileH;
            if (fileH != null) {
                this.f10858e = eVar;
                this.f = this.f10856b.f10866c.b().g(fileH);
                this.f10859g = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void c(Exception exc) {
        this.f10857c.a(this.f10858e, exc, this.f10860h.f3220c, 3);
    }

    @Override // x2.f
    public final void cancel() {
        b3.t tVar = this.f10860h;
        if (tVar != null) {
            tVar.f3220c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void d(Object obj) {
        this.f10857c.c(this.f10858e, obj, this.f10860h.f3220c, 3, this.f10858e);
    }
}
