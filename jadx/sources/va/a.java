package va;

import ea.q;
import java.util.concurrent.atomic.AtomicReference;
import xa.b;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class a {
    static {
        Object objNewInstance;
        AtomicReference atomicReference = b.f11139b.f11140a;
        if (atomicReference.get() == null) {
            String simpleName = xa.a.class.getSimpleName();
            String property = System.getProperty("rxjava.plugin." + simpleName + ".implementation");
            if (property != null) {
                try {
                    objNewInstance = Class.forName(property).asSubclass(xa.a.class).newInstance();
                } catch (ClassCastException unused) {
                    throw new RuntimeException(simpleName + " implementation is not an instance of " + simpleName + ": " + property);
                } catch (ClassNotFoundException e5) {
                    throw new RuntimeException(q.i(simpleName, " implementation class not found: ", property), e5);
                } catch (IllegalAccessException e10) {
                    throw new RuntimeException(q.i(simpleName, " implementation not able to be accessed: ", property), e10);
                } catch (InstantiationException e11) {
                    throw new RuntimeException(q.i(simpleName, " implementation not able to be instantiated: ", property), e11);
                }
            } else {
                objNewInstance = null;
            }
            if (objNewInstance == null) {
                xa.a aVar = xa.a.f11138a;
                while (!atomicReference.compareAndSet(null, aVar) && atomicReference.get() == null) {
                }
            } else {
                xa.a aVar2 = (xa.a) objNewInstance;
                while (!atomicReference.compareAndSet(null, aVar2) && atomicReference.get() == null) {
                }
            }
        }
    }
}
