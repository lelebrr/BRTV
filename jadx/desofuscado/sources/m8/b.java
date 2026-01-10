package m8;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements s8.a {

    /* renamed from: a, reason: collision with root package name */
    public static final b f8275a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ b[] f8276b;

    static {
        b bVar = new b("INSTANCE", 0);
        f8275a = bVar;
        f8276b = new b[]{bVar, new b("NEVER", 1)};
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f8276b.clone();
    }

    @Override // s8.a
    public final int e() {
        return 2;
    }

    @Override // s8.b
    public final boolean isEmpty() {
        return true;
    }

    @Override // s8.b
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // s8.b
    public final Object poll() {
        return null;
    }

    @Override // j8.b
    public final void a() {
    }

    @Override // s8.b
    public final void clear() {
    }
}
