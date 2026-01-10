package z3;

import android.util.SparseArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public static final w f11585a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ w[] f11586b;

    static {
        w wVar = new w("DEFAULT", 0);
        f11585a = wVar;
        w wVar2 = new w("UNMETERED_ONLY", 1);
        w wVar3 = new w("UNMETERED_OR_DAILY", 2);
        w wVar4 = new w("FAST_IF_RADIO_AWAKE", 3);
        w wVar5 = new w("NEVER", 4);
        w wVar6 = new w("UNRECOGNIZED", 5);
        f11586b = new w[]{wVar, wVar2, wVar3, wVar4, wVar5, wVar6};
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, wVar);
        sparseArray.put(1, wVar2);
        sparseArray.put(2, wVar3);
        sparseArray.put(3, wVar4);
        sparseArray.put(4, wVar5);
        sparseArray.put(-1, wVar6);
    }

    public static w valueOf(String str) {
        return (w) Enum.valueOf(w.class, str);
    }

    public static w[] values() {
        return (w[]) f11586b.clone();
    }
}
