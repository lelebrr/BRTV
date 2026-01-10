package a9;

import com.lzy.okgo.cache.CacheEntity;
import i9.p;
import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j implements i, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final j f179a = new j();

    @Override // a9.i
    public final i c(h hVar) {
        j9.i.f(hVar, CacheEntity.KEY);
        return this;
    }

    @Override // a9.i
    public final g e(h hVar) {
        j9.i.f(hVar, CacheEntity.KEY);
        return null;
    }

    @Override // a9.i
    public final i f(i iVar) {
        j9.i.f(iVar, "context");
        return iVar;
    }

    public final int hashCode() {
        return 0;
    }

    public final String toString() {
        return "EmptyCoroutineContext";
    }

    @Override // a9.i
    public final Object a(Object obj, p pVar) {
        return obj;
    }
}
