package androidx.media3.common.util;

import android.os.Bundle;
import android.util.SparseArray;
import com.google.android.material.internal.ParcelableSparseArray;
import d7.h5;
import d7.s1;
import d7.u1;
import d7.z1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class BundleCollectionUtil {
    private BundleCollectionUtil() {
    }

    public static HashMap<String, String> bundleToStringHashMap(Bundle bundle) {
        HashMap<String, String> map = new HashMap<>();
        if (bundle == Bundle.EMPTY) {
            return map;
        }
        for (String str : bundle.keySet()) {
            String string = bundle.getString(str);
            if (string != null) {
                map.put(str, string);
            }
        }
        return map;
    }

    public static z1 bundleToStringImmutableMap(Bundle bundle) {
        return bundle == Bundle.EMPTY ? h5.f6165g : z1.b(bundleToStringHashMap(bundle));
    }

    public static void ensureClassLoader(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader((ClassLoader) Util.castNonNull(BundleCollectionUtil.class.getClassLoader()));
        }
    }

    public static <T> u1 fromBundleList(b7.i iVar, List<Bundle> list) {
        s1 s1VarK = u1.k();
        for (int i6 = 0; i6 < list.size(); i6++) {
            s1VarK.a(iVar.apply((Bundle) Assertions.checkNotNull(list.get(i6))));
        }
        return s1VarK.g();
    }

    public static <T> SparseArray<T> fromBundleSparseArray(b7.i iVar, SparseArray<Bundle> sparseArray) {
        ParcelableSparseArray parcelableSparseArray = (SparseArray<T>) new SparseArray(sparseArray.size());
        for (int i6 = 0; i6 < sparseArray.size(); i6++) {
            parcelableSparseArray.put(sparseArray.keyAt(i6), iVar.apply(sparseArray.valueAt(i6)));
        }
        return parcelableSparseArray;
    }

    public static Bundle getBundleWithDefault(Bundle bundle, String str, Bundle bundle2) {
        Bundle bundle3 = bundle.getBundle(str);
        return bundle3 != null ? bundle3 : bundle2;
    }

    public static ArrayList<Integer> getIntegerArrayListWithDefault(Bundle bundle, String str, ArrayList<Integer> arrayList) {
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(str);
        return integerArrayList != null ? integerArrayList : arrayList;
    }

    public static Bundle stringMapToBundle(Map<String, String> map) {
        Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        return bundle;
    }

    public static <T> ArrayList<Bundle> toBundleArrayList(Collection<T> collection, b7.i iVar) {
        ArrayList<Bundle> arrayList = new ArrayList<>(collection.size());
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add((Bundle) iVar.apply(it.next()));
        }
        return arrayList;
    }

    public static <T> u1 toBundleList(List<T> list, b7.i iVar) {
        s1 s1VarK = u1.k();
        for (int i6 = 0; i6 < list.size(); i6++) {
            s1VarK.a((Bundle) iVar.apply(list.get(i6)));
        }
        return s1VarK.g();
    }

    public static <T> SparseArray<Bundle> toBundleSparseArray(SparseArray<T> sparseArray, b7.i iVar) {
        SparseArray<Bundle> sparseArray2 = new SparseArray<>(sparseArray.size());
        for (int i6 = 0; i6 < sparseArray.size(); i6++) {
            sparseArray2.put(sparseArray.keyAt(i6), (Bundle) iVar.apply(sparseArray.valueAt(i6)));
        }
        return sparseArray2;
    }
}
