package k7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final c f7740a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ c[] f7741b;

    static {
        c cVar = new c("DEFAULT", 0);
        f7740a = cVar;
        f7741b = new c[]{cVar, new c("SIGNED", 1), new c("FIXED", 2)};
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f7741b.clone();
    }
}
