package d2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public static final j f6037a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ j[] f6038b;

    /* JADX INFO: Fake field, exist only in values array */
    j EF3;

    static {
        j jVar = new j("IGNORE", 0);
        j jVar2 = new j("RESPECT_PERFORMANCE", 1);
        f6037a = jVar2;
        f6038b = new j[]{jVar, jVar2, new j("RESPECT_ALL", 2)};
    }

    public static j valueOf(String str) {
        return (j) Enum.valueOf(j.class, str);
    }

    public static j[] values() {
        return (j[]) f6038b.clone();
    }
}
