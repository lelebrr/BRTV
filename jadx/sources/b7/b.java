package b7;

import com.google.common.util.concurrent.ListenableFuture;
import java.io.Serializable;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b {
    public static o a(n nVar, n nVar2) {
        nVar.getClass();
        nVar2.getClass();
        return new o(Arrays.asList(nVar, nVar2));
    }

    public static String b(int i6, int i10, String str) {
        if (i6 < 0) {
            return s("%s (%s) must not be negative", str, Integer.valueOf(i6));
        }
        if (i10 >= 0) {
            return s("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i6), Integer.valueOf(i10));
        }
        throw new IllegalArgumentException(a.e.n(i10, "negative size: "));
    }

    public static void c(Object obj, String str, boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException(s(str, obj));
        }
    }

    public static void d(String str, int i6, int i10, boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException(s(str, Integer.valueOf(i6), Integer.valueOf(i10)));
        }
    }

    public static void e(String str, boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void f(boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException();
        }
    }

    public static void g(boolean z7, String str, long j10) {
        if (!z7) {
            throw new IllegalArgumentException(s(str, Long.valueOf(j10)));
        }
    }

    public static void h(int i6, int i10) {
        String strS;
        if (i6 < 0 || i6 >= i10) {
            if (i6 < 0) {
                strS = s("%s (%s) must not be negative", "index", Integer.valueOf(i6));
            } else {
                if (i10 < 0) {
                    throw new IllegalArgumentException(a.e.n(i10, "negative size: "));
                }
                strS = s("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i6), Integer.valueOf(i10));
            }
            throw new IndexOutOfBoundsException(strS);
        }
    }

    public static void i(ListenableFuture listenableFuture, String str, Object obj) {
        if (listenableFuture == null) {
            throw new NullPointerException(s(str, obj));
        }
    }

    public static void j(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static void k(int i6, int i10) {
        if (i6 < 0 || i6 > i10) {
            throw new IndexOutOfBoundsException(b(i6, i10, "index"));
        }
    }

    public static void l(int i6, int i10, int i11) {
        if (i6 < 0 || i10 < i6 || i10 > i11) {
            throw new IndexOutOfBoundsException((i6 < 0 || i6 > i11) ? b(i6, i11, "start index") : (i10 < 0 || i10 > i11) ? b(i10, i11, "end index") : s("end index (%s) must not be less than start index (%s)", Integer.valueOf(i10), Integer.valueOf(i6)));
        }
    }

    public static void m(Object obj, String str, boolean z7) {
        if (!z7) {
            throw new IllegalStateException(s(str, obj));
        }
    }

    public static void n(String str, boolean z7) {
        if (!z7) {
            throw new IllegalStateException(str);
        }
    }

    public static void o(boolean z7) {
        if (!z7) {
            throw new IllegalStateException();
        }
    }

    public static boolean p(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static boolean q(String str, String str2) {
        char c5;
        int length = str.length();
        if (str == str2) {
            return true;
        }
        if (length != str2.length()) {
            return false;
        }
        for (int i6 = 0; i6 < length; i6++) {
            if (str.charAt(i6) != str2.charAt(i6) && ((c5 = (char) ((r4 | ' ') - 97)) >= 26 || c5 != ((char) ((r5 | ' ') - 97)))) {
                return false;
            }
        }
        return true;
    }

    public static Object r(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        if (obj2 != null) {
            return obj2;
        }
        throw new NullPointerException("Both parameters are null");
    }

    public static String s(String str, Object... objArr) {
        int iIndexOf;
        String string;
        String strValueOf = String.valueOf(str);
        int i6 = 0;
        for (int i10 = 0; i10 < objArr.length; i10++) {
            Object obj = objArr[i10];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e5) {
                    String str2 = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
                    Logger.getLogger("com.google.common.base.Strings").log(Level.WARNING, "Exception during lenientFormat for " + str2, (Throwable) e5);
                    StringBuilder sbX = a.e.x("<", str2, " threw ");
                    sbX.append(e5.getClass().getName());
                    sbX.append(">");
                    string = sbX.toString();
                }
            }
            objArr[i10] = string;
        }
        StringBuilder sb = new StringBuilder((objArr.length * 16) + strValueOf.length());
        int i11 = 0;
        while (i6 < objArr.length && (iIndexOf = strValueOf.indexOf("%s", i11)) != -1) {
            sb.append((CharSequence) strValueOf, i11, iIndexOf);
            sb.append(objArr[i6]);
            i11 = iIndexOf + 2;
            i6++;
        }
        sb.append((CharSequence) strValueOf, i11, strValueOf.length());
        if (i6 < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i6]);
            for (int i12 = i6 + 1; i12 < objArr.length; i12++) {
                sb.append(", ");
                sb.append(objArr[i12]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static e0 t(e0 e0Var) {
        return ((e0Var instanceof g0) || (e0Var instanceof f0)) ? e0Var : e0Var instanceof Serializable ? new f0(e0Var) : new g0(e0Var);
    }

    public static String u(String str) {
        return str == null ? "" : str;
    }

    public static String v(String str) {
        int length = str.length();
        int i6 = 0;
        while (i6 < length) {
            char cCharAt = str.charAt(i6);
            if (cCharAt >= 'A' && cCharAt <= 'Z') {
                char[] charArray = str.toCharArray();
                while (i6 < length) {
                    char c5 = charArray[i6];
                    if (c5 >= 'A' && c5 <= 'Z') {
                        charArray[i6] = (char) (c5 ^ ' ');
                    }
                    i6++;
                }
                return String.valueOf(charArray);
            }
            i6++;
        }
        return str;
    }

    public static a1.b w(Object obj) {
        return new a1.b(obj.getClass().getSimpleName());
    }

    public static String x(String str) {
        int length = str.length();
        int i6 = 0;
        while (i6 < length) {
            char cCharAt = str.charAt(i6);
            if (cCharAt >= 'a' && cCharAt <= 'z') {
                char[] charArray = str.toCharArray();
                while (i6 < length) {
                    char c5 = charArray[i6];
                    if (c5 >= 'a' && c5 <= 'z') {
                        charArray[i6] = (char) (c5 ^ ' ');
                    }
                    i6++;
                }
                return String.valueOf(charArray);
            }
            i6++;
        }
        return str;
    }
}
