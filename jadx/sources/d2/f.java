package d2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public static final f f6025a;

    /* renamed from: b, reason: collision with root package name */
    public static final f f6026b;

    /* renamed from: c, reason: collision with root package name */
    public static final f f6027c;
    public static final f d;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ f[] f6028e;

    static {
        f fVar = new f("MEMORY_CACHE", 0);
        f6025a = fVar;
        f fVar2 = new f("MEMORY", 1);
        f6026b = fVar2;
        f fVar3 = new f("DISK", 2);
        f6027c = fVar3;
        f fVar4 = new f("NETWORK", 3);
        d = fVar4;
        f6028e = new f[]{fVar, fVar2, fVar3, fVar4};
    }

    public static f valueOf(String str) {
        return (f) Enum.valueOf(f.class, str);
    }

    public static f[] values() {
        return (f[]) f6028e.clone();
    }
}
