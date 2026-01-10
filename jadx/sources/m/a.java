package m;

import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends f {

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f8098e = new HashMap();

    @Override // m.f
    public final c c(Object obj) {
        return (c) this.f8098e.get(obj);
    }

    @Override // m.f
    public final Object d(Object obj) {
        Object objD = super.d(obj);
        this.f8098e.remove(obj);
        return objD;
    }
}
