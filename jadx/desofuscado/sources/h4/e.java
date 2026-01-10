package h4;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final e f7245a;

    /* renamed from: b, reason: collision with root package name */
    public static final e f7246b;

    /* renamed from: c, reason: collision with root package name */
    public static final e f7247c;
    public static final /* synthetic */ e[] d;

    static {
        e eVar = new e("NETWORK_UNMETERED", 0);
        f7245a = eVar;
        e eVar2 = new e("DEVICE_IDLE", 1);
        f7246b = eVar2;
        e eVar3 = new e("DEVICE_CHARGING", 2);
        f7247c = eVar3;
        d = new e[]{eVar, eVar2, eVar3};
    }

    public static e valueOf(String str) {
        return (e) Enum.valueOf(e.class, str);
    }

    public static e[] values() {
        return (e[]) d.clone();
    }
}
