package androidx.lifecycle;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import com.lzy.okgo.cache.CacheEntity;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m0 {
    public static final Class[] f = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f1973a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f1974b;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f1975c;
    public final LinkedHashMap d;

    /* renamed from: e, reason: collision with root package name */
    public final v1.d f1976e;

    public m0(HashMap map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f1973a = linkedHashMap;
        this.f1974b = new LinkedHashMap();
        this.f1975c = new LinkedHashMap();
        this.d = new LinkedHashMap();
        this.f1976e = new a.c(1, this);
        linkedHashMap.putAll(map);
    }

    public static Bundle a(m0 m0Var) {
        j9.i.f(m0Var, "this$0");
        Iterator it = x8.u.r(m0Var.f1974b).entrySet().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            LinkedHashMap linkedHashMap = m0Var.f1973a;
            if (!zHasNext) {
                Set<String> setKeySet = linkedHashMap.keySet();
                ArrayList arrayList = new ArrayList(setKeySet.size());
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                for (String str : setKeySet) {
                    arrayList.add(str);
                    arrayList2.add(linkedHashMap.get(str));
                }
                w8.f[] fVarArr = {new w8.f("keys", arrayList), new w8.f("values", arrayList2)};
                Bundle bundle = new Bundle(2);
                for (int i6 = 0; i6 < 2; i6++) {
                    w8.f fVar = fVarArr[i6];
                    String str2 = (String) fVar.f10825a;
                    Object obj = fVar.f10826b;
                    if (obj == null) {
                        bundle.putString(str2, null);
                    } else if (obj instanceof Boolean) {
                        bundle.putBoolean(str2, ((Boolean) obj).booleanValue());
                    } else if (obj instanceof Byte) {
                        bundle.putByte(str2, ((Number) obj).byteValue());
                    } else if (obj instanceof Character) {
                        bundle.putChar(str2, ((Character) obj).charValue());
                    } else if (obj instanceof Double) {
                        bundle.putDouble(str2, ((Number) obj).doubleValue());
                    } else if (obj instanceof Float) {
                        bundle.putFloat(str2, ((Number) obj).floatValue());
                    } else if (obj instanceof Integer) {
                        bundle.putInt(str2, ((Number) obj).intValue());
                    } else if (obj instanceof Long) {
                        bundle.putLong(str2, ((Number) obj).longValue());
                    } else if (obj instanceof Short) {
                        bundle.putShort(str2, ((Number) obj).shortValue());
                    } else if (obj instanceof Bundle) {
                        bundle.putBundle(str2, (Bundle) obj);
                    } else if (obj instanceof CharSequence) {
                        bundle.putCharSequence(str2, (CharSequence) obj);
                    } else if (obj instanceof Parcelable) {
                        bundle.putParcelable(str2, (Parcelable) obj);
                    } else if (obj instanceof boolean[]) {
                        bundle.putBooleanArray(str2, (boolean[]) obj);
                    } else if (obj instanceof byte[]) {
                        bundle.putByteArray(str2, (byte[]) obj);
                    } else if (obj instanceof char[]) {
                        bundle.putCharArray(str2, (char[]) obj);
                    } else if (obj instanceof double[]) {
                        bundle.putDoubleArray(str2, (double[]) obj);
                    } else if (obj instanceof float[]) {
                        bundle.putFloatArray(str2, (float[]) obj);
                    } else if (obj instanceof int[]) {
                        bundle.putIntArray(str2, (int[]) obj);
                    } else if (obj instanceof long[]) {
                        bundle.putLongArray(str2, (long[]) obj);
                    } else if (obj instanceof short[]) {
                        bundle.putShortArray(str2, (short[]) obj);
                    } else if (obj instanceof Object[]) {
                        Class<?> componentType = obj.getClass().getComponentType();
                        j9.i.c(componentType);
                        if (Parcelable.class.isAssignableFrom(componentType)) {
                            bundle.putParcelableArray(str2, (Parcelable[]) obj);
                        } else if (String.class.isAssignableFrom(componentType)) {
                            bundle.putStringArray(str2, (String[]) obj);
                        } else if (CharSequence.class.isAssignableFrom(componentType)) {
                            bundle.putCharSequenceArray(str2, (CharSequence[]) obj);
                        } else {
                            if (!Serializable.class.isAssignableFrom(componentType)) {
                                throw new IllegalArgumentException("Illegal value array type " + componentType.getCanonicalName() + " for key \"" + str2 + '\"');
                            }
                            bundle.putSerializable(str2, (Serializable) obj);
                        }
                    } else if (obj instanceof Serializable) {
                        bundle.putSerializable(str2, (Serializable) obj);
                    } else if (obj instanceof IBinder) {
                        bundle.putBinder(str2, (IBinder) obj);
                    } else if (obj instanceof Size) {
                        j0.c.a(bundle, str2, (Size) obj);
                    } else {
                        if (!(obj instanceof SizeF)) {
                            throw new IllegalArgumentException("Illegal value type " + obj.getClass().getCanonicalName() + " for key \"" + str2 + '\"');
                        }
                        j0.c.b(bundle, str2, (SizeF) obj);
                    }
                }
                return bundle;
            }
            Map.Entry entry = (Map.Entry) it.next();
            String str3 = (String) entry.getKey();
            Bundle bundleSaveState = ((v1.d) entry.getValue()).saveState();
            j9.i.f(str3, CacheEntity.KEY);
            if (bundleSaveState != null) {
                Class[] clsArr = f;
                for (int i10 = 0; i10 < 29; i10++) {
                    Class cls = clsArr[i10];
                    j9.i.c(cls);
                    if (!cls.isInstance(bundleSaveState)) {
                    }
                }
                throw new IllegalArgumentException("Can't put value with type " + bundleSaveState.getClass() + " into saved state");
            }
            Object obj2 = m0Var.f1975c.get(str3);
            d0 d0Var = obj2 instanceof d0 ? (d0) obj2 : null;
            if (d0Var != null) {
                d0Var.j(bundleSaveState);
            } else {
                linkedHashMap.put(str3, bundleSaveState);
            }
            v9.a aVar = (v9.a) m0Var.d.get(str3);
            if (aVar != null) {
                ((v9.b) aVar).a(bundleSaveState);
            }
        }
    }

    public m0() {
        this.f1973a = new LinkedHashMap();
        this.f1974b = new LinkedHashMap();
        this.f1975c = new LinkedHashMap();
        this.d = new LinkedHashMap();
        this.f1976e = new a.c(1, this);
    }
}
