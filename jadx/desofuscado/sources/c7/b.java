package c7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final b f3398a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ b[] f3399b;

    static {
        b bVar = new b("INSTANCE", 0);
        f3398a = bVar;
        f3399b = new b[]{bVar};
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f3399b.clone();
    }
}
