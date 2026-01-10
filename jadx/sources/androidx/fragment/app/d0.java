package androidx.fragment.app;

import java.lang.reflect.InvocationTargetException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: b, reason: collision with root package name */
    public static final p.l f1439b = new p.l(0);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j0 f1440a;

    public d0(j0 j0Var) {
        this.f1440a = j0Var;
    }

    public static Class b(String str, ClassLoader classLoader) throws ClassNotFoundException {
        p.l lVar = f1439b;
        p.l lVar2 = (p.l) lVar.get(classLoader);
        if (lVar2 == null) {
            lVar2 = new p.l(0);
            lVar.put(classLoader, lVar2);
        }
        Class cls = (Class) lVar2.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        lVar2.put(str, cls2);
        return cls2;
    }

    public static Class c(String str, ClassLoader classLoader) {
        try {
            return b(str, classLoader);
        } catch (ClassCastException e5) {
            throw new q(a.e.r("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e5, 0);
        } catch (ClassNotFoundException e10) {
            throw new q(a.e.r("Unable to instantiate fragment ", str, ": make sure class name exists"), e10, 0);
        }
    }

    public final s a(String str) {
        try {
            return (s) c(str, this.f1440a.f1468n.f1555g.getClassLoader()).getConstructor(null).newInstance(null);
        } catch (IllegalAccessException e5) {
            throw new q(a.e.r("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e5, 0);
        } catch (InstantiationException e10) {
            throw new q(a.e.r("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e10, 0);
        } catch (NoSuchMethodException e11) {
            throw new q(a.e.r("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e11, 0);
        } catch (InvocationTargetException e12) {
            throw new q(a.e.r("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e12, 0);
        }
    }
}
