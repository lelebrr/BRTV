package androidx.lifecycle;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public static final o f1980a;

    /* renamed from: b, reason: collision with root package name */
    public static final o f1981b;

    /* renamed from: c, reason: collision with root package name */
    public static final o f1982c;
    public static final o d;

    /* renamed from: e, reason: collision with root package name */
    public static final o f1983e;
    public static final /* synthetic */ o[] f;

    static {
        o oVar = new o("DESTROYED", 0);
        f1980a = oVar;
        o oVar2 = new o("INITIALIZED", 1);
        f1981b = oVar2;
        o oVar3 = new o("CREATED", 2);
        f1982c = oVar3;
        o oVar4 = new o("STARTED", 3);
        d = oVar4;
        o oVar5 = new o("RESUMED", 4);
        f1983e = oVar5;
        f = new o[]{oVar, oVar2, oVar3, oVar4, oVar5};
    }

    public static o valueOf(String str) {
        return (o) Enum.valueOf(o.class, str);
    }

    public static o[] values() {
        return (o[]) f.clone();
    }
}
