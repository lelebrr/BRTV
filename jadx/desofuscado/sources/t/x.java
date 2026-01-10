package t;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public static final x f10037a;

    /* renamed from: b, reason: collision with root package name */
    public static final x f10038b;

    /* renamed from: c, reason: collision with root package name */
    public static final x f10039c;
    public static final x d;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ x[] f10040e;

    static {
        x xVar = new x("UNDEFINED", 0);
        f10037a = xVar;
        x xVar2 = new x("SETUP", 1);
        f10038b = xVar2;
        x xVar3 = new x("MOVING", 2);
        f10039c = xVar3;
        x xVar4 = new x("FINISHED", 3);
        d = xVar4;
        f10040e = new x[]{xVar, xVar2, xVar3, xVar4};
    }

    public static x valueOf(String str) {
        return (x) Enum.valueOf(x.class, str);
    }

    public static x[] values() {
        return (x[]) f10040e.clone();
    }
}
