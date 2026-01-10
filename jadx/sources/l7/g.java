package l7;

import java.lang.reflect.Field;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final a f8063a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ g[] f8064b;

    static {
        a aVar = new a();
        f8063a = aVar;
        f8064b = new g[]{aVar, new g() { // from class: l7.b
            @Override // l7.g
            public final String b(Field field) {
                return g.c(field.getName());
            }
        }, new g() { // from class: l7.c
            @Override // l7.g
            public final String b(Field field) {
                return g.c(g.a(field.getName(), " "));
            }
        }, new g() { // from class: l7.d
            @Override // l7.g
            public final String b(Field field) {
                return g.a(field.getName(), "_").toLowerCase(Locale.ENGLISH);
            }
        }, new g() { // from class: l7.e
            @Override // l7.g
            public final String b(Field field) {
                return g.a(field.getName(), "-").toLowerCase(Locale.ENGLISH);
            }
        }, new g() { // from class: l7.f
            @Override // l7.g
            public final String b(Field field) {
                return g.a(field.getName(), ".").toLowerCase(Locale.ENGLISH);
            }
        }};
    }

    public static String a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i6 = 0; i6 < length; i6++) {
            char cCharAt = str.charAt(i6);
            if (Character.isUpperCase(cCharAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static String c(String str) {
        int length = str.length() - 1;
        int i6 = 0;
        while (!Character.isLetter(str.charAt(i6)) && i6 < length) {
            i6++;
        }
        char cCharAt = str.charAt(i6);
        if (Character.isUpperCase(cCharAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(cCharAt);
        if (i6 == 0) {
            return upperCase + str.substring(1);
        }
        return str.substring(0, i6) + upperCase + str.substring(i6 + 1);
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f8064b.clone();
    }

    public abstract String b(Field field);
}
