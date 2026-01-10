package w8;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ d[] f10824a = {new d("SYNCHRONIZED", 0), new d("PUBLICATION", 1), new d("NONE", 2)};

    /* JADX INFO: Fake field, exist only in values array */
    d EF7;

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) f10824a.clone();
    }
}
