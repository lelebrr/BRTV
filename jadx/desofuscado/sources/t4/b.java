package t4;

import android.view.View;
import b5.l;
import com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity;
import com.google.android.gms.internal.cast.l2;
import com.google.android.gms.internal.cast.m2;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import q4.f;
import q4.g;
import r4.d;
import r4.n;
import u4.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements d, g {

    /* renamed from: h, reason: collision with root package name */
    public static final v4.b f10137h = new v4.b("UIMediaController", null);

    /* renamed from: a, reason: collision with root package name */
    public final ExpandedControllerActivity f10138a;

    /* renamed from: b, reason: collision with root package name */
    public final f f10139b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f10140c = new HashMap();
    public final HashSet d = new HashSet();

    /* renamed from: e, reason: collision with root package name */
    public final n f10141e = new n();
    public e f;

    /* renamed from: g, reason: collision with root package name */
    public r4.f f10142g;

    public b(ExpandedControllerActivity expandedControllerActivity) {
        this.f10138a = expandedControllerActivity;
        q4.a aVarC = q4.a.c(expandedControllerActivity);
        l2.a(m2.UI_MEDIA_CONTROLLER);
        f fVarA = aVarC != null ? aVarC.a() : null;
        this.f10139b = fVarA;
        if (fVarA != null) {
            fVarA.a(this);
            r(fVarA.c());
        }
    }

    @Override // q4.g
    public final void a(q4.e eVar, int i6) {
        q();
    }

    @Override // r4.d
    public final void b() {
        t();
        e eVar = this.f;
        if (eVar != null) {
            eVar.b();
        }
    }

    @Override // r4.d
    public final void c() {
        t();
    }

    @Override // q4.g
    public final void d(q4.e eVar, boolean z7) {
        r((q4.b) eVar);
    }

    @Override // r4.d
    public final void e() {
        t();
        e eVar = this.f;
        if (eVar != null) {
            eVar.e();
        }
    }

    @Override // r4.d
    public final void f() {
        Iterator it = this.f10140c.values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((List) it.next()).iterator();
            while (it2.hasNext()) {
                ((a) it2.next()).c();
            }
        }
        e eVar = this.f;
        if (eVar != null) {
            eVar.f();
        }
    }

    @Override // q4.g
    public final /* bridge */ /* synthetic */ void g(q4.e eVar, int i6) {
    }

    @Override // q4.g
    public final void h(q4.e eVar, String str) {
        r((q4.b) eVar);
    }

    @Override // q4.g
    public final void i(q4.e eVar, int i6) {
        q();
    }

    @Override // r4.d
    public final void j() {
        t();
        e eVar = this.f;
        if (eVar != null) {
            eVar.j();
        }
    }

    @Override // q4.g
    public final /* bridge */ /* synthetic */ void k(q4.e eVar, String str) {
    }

    @Override // q4.g
    public final /* bridge */ /* synthetic */ void l(q4.e eVar) {
    }

    @Override // q4.g
    public final void m(q4.e eVar, int i6) {
        q();
    }

    @Override // q4.g
    public final /* bridge */ /* synthetic */ void n(q4.e eVar) {
    }

    @Override // r4.d
    public final void o() {
        t();
    }

    public final r4.f p() {
        l.b("Must be called from the main thread.");
        return this.f10142g;
    }

    public final void q() {
        l.b("Must be called from the main thread.");
        if (this.f10142g != null) {
            this.f10141e.f9566a = null;
            Iterator it = this.f10140c.values().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((List) it.next()).iterator();
                while (it2.hasNext()) {
                    ((a) it2.next()).e();
                }
            }
            l.e(this.f10142g);
            r4.f fVar = this.f10142g;
            fVar.getClass();
            l.b("Must be called from the main thread.");
            fVar.f9546g.remove(this);
            this.f10142g = null;
        }
    }

    public final void r(q4.e eVar) {
        l.b("Must be called from the main thread.");
        if (this.f10142g == null && eVar != null && eVar.a()) {
            q4.b bVar = (q4.b) eVar;
            r4.f fVarF = bVar.f();
            this.f10142g = fVarF;
            if (fVarF != null) {
                l.b("Must be called from the main thread.");
                fVarF.f9546g.add(this);
                n nVar = this.f10141e;
                l.e(nVar);
                nVar.f9566a = bVar.f();
                Iterator it = this.f10140c.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((List) it.next()).iterator();
                    while (it2.hasNext()) {
                        ((a) it2.next()).d(bVar);
                    }
                }
                t();
            }
        }
    }

    public final void s(View view, a aVar) {
        f fVar = this.f10139b;
        if (fVar == null) {
            return;
        }
        HashMap map = this.f10140c;
        List arrayList = (List) map.get(view);
        if (arrayList == null) {
            arrayList = new ArrayList();
            map.put(view, arrayList);
        }
        arrayList.add(aVar);
        l.b("Must be called from the main thread.");
        if (this.f10142g != null) {
            q4.b bVarC = fVar.c();
            l.e(bVarC);
            aVar.d(bVarC);
            t();
        }
    }

    public final void t() {
        Iterator it = this.f10140c.values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((List) it.next()).iterator();
            while (it2.hasNext()) {
                ((a) it2.next()).b();
            }
        }
    }
}
