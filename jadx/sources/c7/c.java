package c7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final c f3418a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ c[] f3419b;

    static {
        c cVar = new c("INSTANCE", 0);
        f3418a = cVar;
        f3419b = new c[]{cVar};
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f3419b.clone();
    }
}
