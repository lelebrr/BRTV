package q7;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import l7.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends b {
    public static Class d;

    /* renamed from: b, reason: collision with root package name */
    public final Object f9315b;

    /* renamed from: c, reason: collision with root package name */
    public final Field f9316c;

    public c() throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException, SecurityException, IllegalArgumentException {
        Object obj;
        Field declaredField = null;
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            d = cls;
            Field declaredField2 = cls.getDeclaredField("theUnsafe");
            declaredField2.setAccessible(true);
            obj = declaredField2.get(null);
        } catch (Exception unused) {
            obj = null;
        }
        this.f9315b = obj;
        try {
            declaredField = AccessibleObject.class.getDeclaredField("override");
        } catch (Exception unused2) {
        }
        this.f9316c = declaredField;
    }

    @Override // q7.b
    public final void a(AccessibleObject accessibleObject) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Field field;
        Object obj = this.f9315b;
        if (obj != null && (field = this.f9316c) != null) {
            try {
                Long l9 = (Long) d.getMethod("objectFieldOffset", Field.class).invoke(obj, field);
                l9.getClass();
                d.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(obj, accessibleObject, l9, Boolean.TRUE);
                return;
            } catch (Exception unused) {
            }
        }
        try {
            accessibleObject.setAccessible(true);
        } catch (SecurityException e5) {
            throw new n("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e5);
        }
    }
}
