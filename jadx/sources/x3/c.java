package x3;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final c f10991a;

    /* renamed from: b, reason: collision with root package name */
    public static final c f10992b;

    /* renamed from: c, reason: collision with root package name */
    public static final c f10993c;
    public static final /* synthetic */ c[] d;

    static {
        c cVar = new c("DEFAULT", 0);
        f10991a = cVar;
        c cVar2 = new c("VERY_LOW", 1);
        f10992b = cVar2;
        c cVar3 = new c("HIGHEST", 2);
        f10993c = cVar3;
        d = new c[]{cVar, cVar2, cVar3};
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) d.clone();
    }
}
