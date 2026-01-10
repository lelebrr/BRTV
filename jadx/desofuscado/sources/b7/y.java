package b7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class y implements n {

    /* renamed from: a, reason: collision with root package name */
    public static final w f3319a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ y[] f3320b;

    /* JADX INFO: Fake field, exist only in values array */
    y EF0;

    static {
        y yVar = new y() { // from class: b7.u
            @Override // b7.n
            public final boolean apply(Object obj) {
                return true;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "Predicates.alwaysTrue()";
            }
        };
        y yVar2 = new y() { // from class: b7.v
            @Override // b7.n
            public final boolean apply(Object obj) {
                return false;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "Predicates.alwaysFalse()";
            }
        };
        w wVar = new w();
        f3319a = wVar;
        f3320b = new y[]{yVar, yVar2, wVar, new y() { // from class: b7.x
            @Override // b7.n
            public final boolean apply(Object obj) {
                return obj != null;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "Predicates.notNull()";
            }
        }};
    }

    public static y valueOf(String str) {
        return (y) Enum.valueOf(y.class, str);
    }

    public static y[] values() {
        return (y[]) f3320b.clone();
    }
}
