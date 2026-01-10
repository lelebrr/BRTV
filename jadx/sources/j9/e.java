package j9;

import i9.r;
import i9.s;
import i9.t;
import i9.u;
import i9.v;
import i9.w;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements p9.b, d {

    /* renamed from: b, reason: collision with root package name */
    public static final Map f7467b;

    /* renamed from: c, reason: collision with root package name */
    public static final HashMap f7468c;
    public static final LinkedHashMap d;

    /* renamed from: a, reason: collision with root package name */
    public final Class f7469a;

    static {
        int i6 = 0;
        List listAsList = Arrays.asList(i9.a.class, i9.l.class, i9.p.class, i9.q.class, r.class, s.class, t.class, u.class, v.class, w.class, i9.b.class, i9.c.class, i9.d.class, i9.e.class, i9.f.class, i9.g.class, i9.h.class, i9.i.class, i9.j.class, i9.k.class, i9.m.class, i9.n.class, i9.o.class);
        i.e(listAsList, "asList(...)");
        ArrayList arrayList = new ArrayList(x8.l.Q(listAsList));
        for (Object obj : listAsList) {
            int i10 = i6 + 1;
            if (i6 < 0) {
                x8.k.P();
                throw null;
            }
            arrayList.add(new w8.f((Class) obj, Integer.valueOf(i6)));
            i6 = i10;
        }
        f7467b = x8.u.q(arrayList);
        HashMap map = new HashMap();
        map.put("boolean", "kotlin.Boolean");
        map.put("char", "kotlin.Char");
        map.put("byte", "kotlin.Byte");
        map.put("short", "kotlin.Short");
        map.put("int", "kotlin.Int");
        map.put("float", "kotlin.Float");
        map.put("long", "kotlin.Long");
        map.put("double", "kotlin.Double");
        HashMap map2 = new HashMap();
        map2.put("java.lang.Boolean", "kotlin.Boolean");
        map2.put("java.lang.Character", "kotlin.Char");
        map2.put("java.lang.Byte", "kotlin.Byte");
        map2.put("java.lang.Short", "kotlin.Short");
        map2.put("java.lang.Integer", "kotlin.Int");
        map2.put("java.lang.Float", "kotlin.Float");
        map2.put("java.lang.Long", "kotlin.Long");
        map2.put("java.lang.Double", "kotlin.Double");
        HashMap map3 = new HashMap();
        map3.put("java.lang.Object", "kotlin.Any");
        map3.put("java.lang.String", "kotlin.String");
        map3.put("java.lang.CharSequence", "kotlin.CharSequence");
        map3.put("java.lang.Throwable", "kotlin.Throwable");
        map3.put("java.lang.Cloneable", "kotlin.Cloneable");
        map3.put("java.lang.Number", "kotlin.Number");
        map3.put("java.lang.Comparable", "kotlin.Comparable");
        map3.put("java.lang.Enum", "kotlin.Enum");
        map3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        map3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        map3.put("java.util.Iterator", "kotlin.collections.Iterator");
        map3.put("java.util.Collection", "kotlin.collections.Collection");
        map3.put("java.util.List", "kotlin.collections.List");
        map3.put("java.util.Set", "kotlin.collections.Set");
        map3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        map3.put("java.util.Map", "kotlin.collections.Map");
        map3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        map3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        map3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        map3.putAll(map);
        map3.putAll(map2);
        Collection<String> collectionValues = map.values();
        i.e(collectionValues, "<get-values>(...)");
        for (String str : collectionValues) {
            StringBuilder sb = new StringBuilder("kotlin.jvm.internal.");
            i.c(str);
            sb.append(r9.f.k0('.', str, str));
            sb.append("CompanionObject");
            map3.put(sb.toString(), str.concat(".Companion"));
        }
        for (Map.Entry entry : f7467b.entrySet()) {
            Class cls = (Class) entry.getKey();
            int iIntValue = ((Number) entry.getValue()).intValue();
            map3.put(cls.getName(), "kotlin.Function" + iIntValue);
        }
        f7468c = map3;
        LinkedHashMap linkedHashMap = new LinkedHashMap(x8.u.p(map3.size()));
        for (Map.Entry entry2 : map3.entrySet()) {
            Object key = entry2.getKey();
            String str2 = (String) entry2.getValue();
            i.c(str2);
            linkedHashMap.put(key, r9.f.k0('.', str2, str2));
        }
        d = linkedHashMap;
    }

    public e(Class cls) {
        i.f(cls, "jClass");
        this.f7469a = cls;
    }

    @Override // j9.d
    public final Class a() {
        return this.f7469a;
    }

    public final String b() {
        String str;
        Class cls = this.f7469a;
        i.f(cls, "jClass");
        String strConcat = null;
        if (cls.isAnonymousClass()) {
            return null;
        }
        if (!cls.isLocalClass()) {
            boolean zIsArray = cls.isArray();
            LinkedHashMap linkedHashMap = d;
            if (!zIsArray) {
                String str2 = (String) linkedHashMap.get(cls.getName());
                return str2 == null ? cls.getSimpleName() : str2;
            }
            Class<?> componentType = cls.getComponentType();
            if (componentType.isPrimitive() && (str = (String) linkedHashMap.get(componentType.getName())) != null) {
                strConcat = str.concat("Array");
            }
            return strConcat == null ? "Array" : strConcat;
        }
        String simpleName = cls.getSimpleName();
        Method enclosingMethod = cls.getEnclosingMethod();
        if (enclosingMethod != null) {
            return r9.f.j0(simpleName, enclosingMethod.getName() + '$');
        }
        Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
        if (enclosingConstructor != null) {
            return r9.f.j0(simpleName, enclosingConstructor.getName() + '$');
        }
        int iB0 = r9.f.b0(simpleName, '$', 0, false, 6);
        if (iB0 == -1) {
            return simpleName;
        }
        String strSubstring = simpleName.substring(iB0 + 1, simpleName.length());
        i.e(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof e) && com.bumptech.glide.d.p(this).equals(com.bumptech.glide.d.p((p9.b) obj));
    }

    public final int hashCode() {
        return com.bumptech.glide.d.p(this).hashCode();
    }

    public final String toString() {
        return this.f7469a + " (Kotlin reflection is not available)";
    }
}
