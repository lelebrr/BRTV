package d8;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final a f6322a;

    /* renamed from: b, reason: collision with root package name */
    public static final a f6323b;

    /* renamed from: c, reason: collision with root package name */
    public static final a f6324c;
    public static final a d;

    /* renamed from: e, reason: collision with root package name */
    public static final a f6325e;
    public static final a f;

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ a[] f6326g;

    static {
        a aVar = new a("CREATE", 0);
        f6322a = aVar;
        a aVar2 = new a("START", 1);
        f6323b = aVar2;
        a aVar3 = new a("RESUME", 2);
        f6324c = aVar3;
        a aVar4 = new a("PAUSE", 3);
        d = aVar4;
        a aVar5 = new a("STOP", 4);
        f6325e = aVar5;
        a aVar6 = new a("DESTROY", 5);
        f = aVar6;
        f6326g = new a[]{aVar, aVar2, aVar3, aVar4, aVar5, aVar6};
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f6326g.clone();
    }
}
