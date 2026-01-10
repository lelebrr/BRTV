package o7;

import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.security.AccessController;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import l7.r;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends r {
    public static final a d = new a(0);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8568a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f8569b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f8570c;

    public b(Class cls) {
        this.f8568a = 3;
        this.f8570c = new HashMap();
        this.f8569b = new HashMap();
        try {
            for (Field field : cls.getDeclaredFields()) {
                if (field.isEnumConstant()) {
                    AccessController.doPrivileged(new o(field));
                    Enum r42 = (Enum) field.get(null);
                    String strName = r42.name();
                    m7.b bVar = (m7.b) field.getAnnotation(m7.b.class);
                    if (bVar != null) {
                        strName = bVar.value();
                        for (String str : bVar.alternate()) {
                            ((HashMap) this.f8570c).put(str, r42);
                        }
                    }
                    ((HashMap) this.f8570c).put(strName, r42);
                    ((HashMap) this.f8569b).put(r42, strName);
                }
            }
        } catch (IllegalAccessException e5) {
            throw new AssertionError(e5);
        }
    }

    @Override // l7.r
    public final Object a(t7.a aVar) throws IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        switch (this.f8568a) {
            case 0:
                if (aVar.u() == 9) {
                    aVar.q();
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.h()) {
                    arrayList.add(((l) this.f8569b).f8598b.a(aVar));
                }
                aVar.e();
                int size = arrayList.size();
                Object objNewInstance = Array.newInstance((Class<?>) this.f8570c, size);
                for (int i6 = 0; i6 < size; i6++) {
                    Array.set(objNewInstance, i6, arrayList.get(i6));
                }
                return objNewInstance;
            case 1:
                if (aVar.u() == 9) {
                    aVar.q();
                    return null;
                }
                Collection collection = (Collection) ((n7.m) this.f8570c).o();
                aVar.a();
                while (aVar.h()) {
                    collection.add(((l) this.f8569b).f8598b.a(aVar));
                }
                aVar.e();
                return collection;
            case 2:
                Object objA = ((m) this.f8569b).f8602c.a(aVar);
                if (objA != null) {
                    Class cls = (Class) this.f8570c;
                    if (!cls.isInstance(objA)) {
                        throw new l7.n("Expected a " + cls.getName() + " but was " + objA.getClass().getName());
                    }
                }
                return objA;
            default:
                if (aVar.u() != 9) {
                    return (Enum) ((HashMap) this.f8570c).get(aVar.s());
                }
                aVar.q();
                return null;
        }
    }

    @Override // l7.r
    public final void b(t7.b bVar, Object obj) throws IOException {
        switch (this.f8568a) {
            case 0:
                if (obj == null) {
                    bVar.i();
                    break;
                } else {
                    bVar.b();
                    int length = Array.getLength(obj);
                    for (int i6 = 0; i6 < length; i6++) {
                        ((l) this.f8569b).b(bVar, Array.get(obj, i6));
                    }
                    bVar.e();
                    break;
                }
            case 1:
                Collection collection = (Collection) obj;
                if (collection == null) {
                    bVar.i();
                    break;
                } else {
                    bVar.b();
                    Iterator it = collection.iterator();
                    while (it.hasNext()) {
                        ((l) this.f8569b).b(bVar, it.next());
                    }
                    bVar.e();
                    break;
                }
            case 2:
                ((m) this.f8569b).f8602c.b(bVar, obj);
                break;
            default:
                Enum r62 = (Enum) obj;
                bVar.n(r62 == null ? null : (String) ((HashMap) this.f8569b).get(r62));
                break;
        }
    }

    public b(l7.k kVar, Type type, r rVar, n7.m mVar) {
        this.f8568a = 1;
        this.f8569b = new l(kVar, rVar, type);
        this.f8570c = mVar;
    }

    public b(l7.k kVar, r rVar, Class cls) {
        this.f8568a = 0;
        this.f8569b = new l(kVar, rVar, cls);
        this.f8570c = cls;
    }

    public b(m mVar, Class cls) {
        this.f8568a = 2;
        this.f8569b = mVar;
        this.f8570c = cls;
    }
}
