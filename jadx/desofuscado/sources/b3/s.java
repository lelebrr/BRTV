package b3;

import java.util.ArrayDeque;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s {

    /* renamed from: b, reason: collision with root package name */
    public static final ArrayDeque f3216b;

    /* renamed from: a, reason: collision with root package name */
    public Object f3217a;

    static {
        char[] cArr = r3.n.f9510a;
        f3216b = new ArrayDeque(0);
    }

    public static s a(Object obj) {
        s sVar;
        ArrayDeque arrayDeque = f3216b;
        synchronized (arrayDeque) {
            sVar = (s) arrayDeque.poll();
        }
        if (sVar == null) {
            sVar = new s();
        }
        sVar.f3217a = obj;
        return sVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        sVar.getClass();
        return this.f3217a.equals(sVar.f3217a);
    }

    public final int hashCode() {
        return this.f3217a.hashCode();
    }
}
