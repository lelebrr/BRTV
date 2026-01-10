package v2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final a f10656a;

    /* renamed from: b, reason: collision with root package name */
    public static final a f10657b;

    /* renamed from: c, reason: collision with root package name */
    public static final a f10658c;
    public static final /* synthetic */ a[] d;

    static {
        a aVar = new a("PREFER_ARGB_8888", 0);
        f10656a = aVar;
        a aVar2 = new a("PREFER_RGB_565", 1);
        f10657b = aVar2;
        d = new a[]{aVar, aVar2};
        f10658c = aVar;
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) d.clone();
    }
}
