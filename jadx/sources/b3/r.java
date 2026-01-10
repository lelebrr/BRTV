package b3;

import java.util.ArrayDeque;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r extends r3.j {
    @Override // r3.j
    public final void c(Object obj, Object obj2) {
        s sVar = (s) obj;
        sVar.getClass();
        ArrayDeque arrayDeque = s.f3216b;
        synchronized (arrayDeque) {
            arrayDeque.offer(sVar);
        }
    }
}
