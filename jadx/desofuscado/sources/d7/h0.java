package d7;

import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h0 extends t {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6153a;

    /* renamed from: b, reason: collision with root package name */
    public int f6154b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i0 f6155c;

    public h0(i0 i0Var, int i6) {
        this.f6155c = i0Var;
        Object obj = i0.f6167j;
        this.f6153a = i0Var.j()[i6];
        this.f6154b = i6;
    }

    public final void a() {
        int i6 = this.f6154b;
        Object obj = this.f6153a;
        i0 i0Var = this.f6155c;
        if (i6 != -1 && i6 < i0Var.size()) {
            if (b7.b.p(obj, i0Var.j()[this.f6154b])) {
                return;
            }
        }
        Object obj2 = i0.f6167j;
        this.f6154b = i0Var.e(obj);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f6153a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        i0 i0Var = this.f6155c;
        Map mapC = i0Var.c();
        if (mapC != null) {
            return mapC.get(this.f6153a);
        }
        a();
        int i6 = this.f6154b;
        if (i6 == -1) {
            return null;
        }
        return i0Var.k()[i6];
    }

    @Override // d7.t, java.util.Map.Entry
    public final Object setValue(Object obj) {
        i0 i0Var = this.f6155c;
        Map mapC = i0Var.c();
        Object obj2 = this.f6153a;
        if (mapC != null) {
            return mapC.put(obj2, obj);
        }
        a();
        int i6 = this.f6154b;
        if (i6 == -1) {
            i0Var.put(obj2, obj);
            return null;
        }
        Object obj3 = i0Var.k()[i6];
        i0Var.k()[this.f6154b] = obj;
        return obj3;
    }
}
