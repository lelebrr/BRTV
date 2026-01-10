package v2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public static final i f10666a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ i[] f10667b;

    /* JADX INFO: Fake field, exist only in values array */
    i EF2;

    static {
        i iVar = new i("SRGB", 0);
        i iVar2 = new i("DISPLAY_P3", 1);
        f10666a = iVar2;
        f10667b = new i[]{iVar, iVar2};
    }

    public static i valueOf(String str) {
        return (i) Enum.valueOf(i.class, str);
    }

    public static i[] values() {
        return (i[]) f10667b.clone();
    }
}
