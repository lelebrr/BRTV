package d7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class k3 {

    /* renamed from: a, reason: collision with root package name */
    public static final i3 f6199a;

    /* renamed from: b, reason: collision with root package name */
    public static final j3 f6200b;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ k3[] f6201c;

    static {
        i3 i3Var = new i3();
        f6199a = i3Var;
        j3 j3Var = new j3();
        f6200b = j3Var;
        f6201c = new k3[]{i3Var, j3Var};
    }

    public static k3 valueOf(String str) {
        return (k3) Enum.valueOf(k3.class, str);
    }

    public static k3[] values() {
        return (k3[]) f6201c.clone();
    }

    public abstract b7.h a();
}
