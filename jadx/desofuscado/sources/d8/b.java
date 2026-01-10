package d8;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final b f6327a;

    /* renamed from: b, reason: collision with root package name */
    public static final b f6328b;

    /* renamed from: c, reason: collision with root package name */
    public static final b f6329c;
    public static final b d;

    /* renamed from: e, reason: collision with root package name */
    public static final b f6330e;
    public static final b f;

    /* renamed from: g, reason: collision with root package name */
    public static final b f6331g;

    /* renamed from: h, reason: collision with root package name */
    public static final b f6332h;

    /* renamed from: i, reason: collision with root package name */
    public static final b f6333i;

    /* renamed from: j, reason: collision with root package name */
    public static final b f6334j;

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ b[] f6335k;

    static {
        b bVar = new b("ATTACH", 0);
        f6327a = bVar;
        b bVar2 = new b("CREATE", 1);
        f6328b = bVar2;
        b bVar3 = new b("CREATE_VIEW", 2);
        f6329c = bVar3;
        b bVar4 = new b("START", 3);
        d = bVar4;
        b bVar5 = new b("RESUME", 4);
        f6330e = bVar5;
        b bVar6 = new b("PAUSE", 5);
        f = bVar6;
        b bVar7 = new b("STOP", 6);
        f6331g = bVar7;
        b bVar8 = new b("DESTROY_VIEW", 7);
        f6332h = bVar8;
        b bVar9 = new b("DESTROY", 8);
        f6333i = bVar9;
        b bVar10 = new b("DETACH", 9);
        f6334j = bVar10;
        f6335k = new b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8, bVar9, bVar10};
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f6335k.clone();
    }
}
