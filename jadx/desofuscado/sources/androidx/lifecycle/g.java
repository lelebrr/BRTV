package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g implements u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1960a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final Object f1961b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f1962c;

    public g(e eVar, u uVar) {
        j9.i.f(eVar, "defaultLifecycleObserver");
        this.f1961b = eVar;
        this.f1962c = uVar;
    }

    @Override // androidx.lifecycle.u
    public final void onStateChanged(w wVar, n nVar) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        switch (this.f1960a) {
            case 0:
                int i6 = f.f1959a[nVar.ordinal()];
                e eVar = (e) this.f1961b;
                switch (i6) {
                    case 1:
                        eVar.c(wVar);
                        break;
                    case 2:
                        eVar.onStart(wVar);
                        break;
                    case 3:
                        eVar.b(wVar);
                        break;
                    case 4:
                        eVar.e(wVar);
                        break;
                    case 5:
                        eVar.onStop(wVar);
                        break;
                    case 6:
                        eVar.onDestroy(wVar);
                        break;
                    case 7:
                        throw new IllegalArgumentException("ON_ANY must not been send by anybody");
                }
                u uVar = (u) this.f1962c;
                if (uVar != null) {
                    uVar.onStateChanged(wVar, nVar);
                    return;
                }
                return;
            case 1:
                if (nVar == n.ON_START) {
                    ((p) this.f1961b).c(this);
                    ((androidx.appcompat.widget.v) this.f1962c).g();
                    return;
                }
                return;
            default:
                HashMap map = ((b) this.f1962c).f1939a;
                List list = (List) map.get(nVar);
                v vVar = (v) this.f1961b;
                b.a(list, wVar, nVar, vVar);
                b.a((List) map.get(n.ON_ANY), wVar, nVar, vVar);
                return;
        }
    }

    public g(v vVar) {
        this.f1961b = vVar;
        d dVar = d.f1947c;
        Class<?> cls = vVar.getClass();
        b bVar = (b) dVar.f1948a.get(cls);
        this.f1962c = bVar == null ? dVar.a(cls, null) : bVar;
    }

    public g(androidx.appcompat.widget.v vVar, p pVar) {
        this.f1961b = pVar;
        this.f1962c = vVar;
    }
}
