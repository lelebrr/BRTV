package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class t0 {

    /* renamed from: a, reason: collision with root package name */
    public static final List f2002a;

    /* renamed from: b, reason: collision with root package name */
    public static final List f2003b;

    static {
        List listAsList = Arrays.asList(Application.class, m0.class);
        j9.i.e(listAsList, "asList(...)");
        f2002a = listAsList;
        f2003b = a2.a.F(m0.class);
    }

    public static final Constructor a(Class cls, List list) throws SecurityException {
        j9.i.f(list, "signature");
        Constructor<?>[] constructors = cls.getConstructors();
        j9.i.e(constructors, "modelClass.constructors");
        for (Constructor<?> constructor : constructors) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            j9.i.e(parameterTypes, "constructor.parameterTypes");
            List listL = x8.i.L(parameterTypes);
            if (list.equals(listL)) {
                return constructor;
            }
            if (list.size() == listL.size() && listL.containsAll(list)) {
                throw new UnsupportedOperationException("Class " + cls.getSimpleName() + " must have parameters in the proper order: " + list);
            }
        }
        return null;
    }

    public static final v0 b(Class cls, Constructor constructor, Object... objArr) {
        try {
            return (v0) constructor.newInstance(Arrays.copyOf(objArr, objArr.length));
        } catch (IllegalAccessException e5) {
            throw new RuntimeException(a.e.q(cls, "Failed to access "), e5);
        } catch (InstantiationException e10) {
            throw new RuntimeException("A " + cls + " cannot be instantiated.", e10);
        } catch (InvocationTargetException e11) {
            throw new RuntimeException(a.e.q(cls, "An exception happened in constructor of "), e11.getCause());
        }
    }
}
