package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class w0 implements y0 {

    /* renamed from: b, reason: collision with root package name */
    public static final w0 f2010b = new w0(0);

    /* renamed from: c, reason: collision with root package name */
    public static final w0 f2011c = new w0(1);
    public static w0 d;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2012a;

    public /* synthetic */ w0(int i6) {
        this.f2012a = i6;
    }

    @Override // androidx.lifecycle.y0
    public v0 a(Class cls) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        switch (this.f2012a) {
            case 5:
                throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
            default:
                try {
                    Object objNewInstance = cls.getDeclaredConstructor(null).newInstance(null);
                    j9.i.e(objNewInstance, "{\n                modelC…wInstance()\n            }");
                    return (v0) objNewInstance;
                } catch (IllegalAccessException e5) {
                    throw new RuntimeException(a.e.q(cls, "Cannot create an instance of "), e5);
                } catch (InstantiationException e10) {
                    throw new RuntimeException(a.e.q(cls, "Cannot create an instance of "), e10);
                } catch (NoSuchMethodException e11) {
                    throw new RuntimeException(a.e.q(cls, "Cannot create an instance of "), e11);
                }
        }
    }

    @Override // androidx.lifecycle.y0
    public v0 b(Class cls, j1.b bVar) {
        switch (this.f2012a) {
            case 5:
                return new r0();
            default:
                return a(cls);
        }
    }
}
