package v;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final d f10529a;

    /* renamed from: b, reason: collision with root package name */
    public static final d f10530b;

    /* renamed from: c, reason: collision with root package name */
    public static final d f10531c;
    public static final d d;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ d[] f10532e;

    static {
        d dVar = new d("FIXED", 0);
        f10529a = dVar;
        d dVar2 = new d("WRAP_CONTENT", 1);
        f10530b = dVar2;
        d dVar3 = new d("MATCH_CONSTRAINT", 2);
        f10531c = dVar3;
        d dVar4 = new d("MATCH_PARENT", 3);
        d = dVar4;
        f10532e = new d[]{dVar, dVar2, dVar3, dVar4};
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) f10532e.clone();
    }
}
