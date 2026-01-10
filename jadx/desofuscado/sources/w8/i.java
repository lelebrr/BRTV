package w8;

import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class i implements c, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public i9.a f10828a;

    /* renamed from: b, reason: collision with root package name */
    public volatile Object f10829b = k.f10831a;

    /* renamed from: c, reason: collision with root package name */
    public final Object f10830c = this;

    public i(i9.a aVar) {
        this.f10828a = aVar;
    }

    @Override // w8.c
    public final Object getValue() {
        Object objInvoke;
        Object obj = this.f10829b;
        k kVar = k.f10831a;
        if (obj != kVar) {
            return obj;
        }
        synchronized (this.f10830c) {
            objInvoke = this.f10829b;
            if (objInvoke == kVar) {
                i9.a aVar = this.f10828a;
                j9.i.c(aVar);
                objInvoke = aVar.invoke();
                this.f10829b = objInvoke;
                this.f10828a = null;
            }
        }
        return objInvoke;
    }

    public final String toString() {
        return this.f10829b != k.f10831a ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
