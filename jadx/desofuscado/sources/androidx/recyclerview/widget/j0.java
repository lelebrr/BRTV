package androidx.recyclerview.widget;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j0 {

    /* renamed from: a, reason: collision with root package name */
    public static final j0 f2868a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ j0[] f2869b;

    static {
        j0 j0Var = new j0("ALLOW", 0);
        f2868a = j0Var;
        f2869b = new j0[]{j0Var, new j0("PREVENT_WHEN_EMPTY", 1), new j0("PREVENT", 2)};
    }

    public static j0 valueOf(String str) {
        return (j0) Enum.valueOf(j0.class, str);
    }

    public static j0[] values() {
        return (j0[]) f2869b.clone();
    }
}
