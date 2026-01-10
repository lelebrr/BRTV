package n2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static final g f8381a;

    /* renamed from: b, reason: collision with root package name */
    public static final g f8382b;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ g[] f8383c;

    static {
        g gVar = new g("FILL", 0);
        f8381a = gVar;
        g gVar2 = new g("FIT", 1);
        f8382b = gVar2;
        f8383c = new g[]{gVar, gVar2};
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f8383c.clone();
    }
}
