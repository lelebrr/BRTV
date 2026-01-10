package ua;

import a.q;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f10502a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final q[] f10503b = new q[4];

    public static void a(q qVar) throws SecurityException {
        Method[] methods;
        j jVar;
        boolean zB;
        try {
            methods = ((Class) qVar.f).getDeclaredMethods();
        } catch (Throwable unused) {
            methods = ((Class) qVar.f).getMethods();
            qVar.f27a = true;
        }
        for (Method method : methods) {
            int modifiers = method.getModifiers();
            if ((modifiers & 1) != 0 && (modifiers & 5192) == 0) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1 && (jVar = (j) method.getAnnotation(j.class)) != null) {
                    Class<?> cls = parameterTypes[0];
                    HashMap map = (HashMap) qVar.f29c;
                    Object objPut = map.put(cls, method);
                    if (objPut == null) {
                        zB = true;
                    } else {
                        if (objPut instanceof Method) {
                            if (!qVar.b((Method) objPut, cls)) {
                                throw new IllegalStateException();
                            }
                            map.put(cls, qVar);
                        }
                        zB = qVar.b(method, cls);
                    }
                    if (zB) {
                        ((ArrayList) qVar.f28b).add(new l(method, cls, jVar.threadMode(), jVar.priority(), jVar.sticky()));
                    }
                }
            }
        }
    }

    public static ArrayList b(q qVar) {
        ArrayList arrayList = new ArrayList((ArrayList) qVar.f28b);
        ((ArrayList) qVar.f28b).clear();
        ((HashMap) qVar.f29c).clear();
        ((HashMap) qVar.d).clear();
        int i6 = 0;
        ((StringBuilder) qVar.f30e).setLength(0);
        qVar.f = null;
        qVar.f27a = false;
        synchronized (f10503b) {
            while (true) {
                if (i6 >= 4) {
                    break;
                }
                try {
                    q[] qVarArr = f10503b;
                    if (qVarArr[i6] == null) {
                        qVarArr[i6] = qVar;
                        break;
                    }
                    i6++;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return arrayList;
    }

    public static q c() {
        synchronized (f10503b) {
            for (int i6 = 0; i6 < 4; i6++) {
                try {
                    q[] qVarArr = f10503b;
                    q qVar = qVarArr[i6];
                    if (qVar != null) {
                        qVarArr[i6] = null;
                        return qVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return new q();
        }
    }
}
