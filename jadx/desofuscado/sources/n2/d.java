package n2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final d f8377a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ d[] f8378b;

    /* JADX INFO: Fake field, exist only in values array */
    d EF3;

    static {
        d dVar = new d("EXACT", 0);
        d dVar2 = new d("INEXACT", 1);
        d dVar3 = new d("AUTOMATIC", 2);
        f8377a = dVar3;
        f8378b = new d[]{dVar, dVar2, dVar3};
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) f8378b.clone();
    }
}
