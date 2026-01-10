package com.google.android.gms.internal.cast;

import android.os.Bundle;
import com.google.android.gms.common.Feature;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class z0 {

    /* renamed from: b, reason: collision with root package name */
    public static final Feature[] f4502b = {new Feature("usage_and_diagnostics_listener"), new Feature("usage_and_diagnostics_consents"), new Feature("usage_and_diagnostics_check_consents"), new Feature("usage_and_diagnostics_settings_access"), new Feature("el_capitan")};

    /* renamed from: c, reason: collision with root package name */
    public static final l6.h f4503c = new l6.h("UsageReporting.API", new d1(0), new y4.d());

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4504a;

    public /* synthetic */ z0(int i6) {
        this.f4504a = i6;
    }

    public static int a(int i6) {
        return (int) (Integer.rotateLeft((int) (i6 * (-862048943)), 15) * 461845907);
    }

    public static int b(int i6, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("cannot store more than Integer.MAX_VALUE elements");
        }
        if (i10 <= i6) {
            return i6;
        }
        int i11 = i6 + (i6 >> 1) + 1;
        if (i11 < i10) {
            int iHighestOneBit = Integer.highestOneBit(i10 - 1);
            i11 = iHighestOneBit + iHighestOneBit;
        }
        if (i11 < 0) {
            return Integer.MAX_VALUE;
        }
        return i11;
    }

    public static String d(w6 w6Var) {
        StringBuilder sb = new StringBuilder(w6Var.e());
        for (int i6 = 0; i6 < w6Var.e(); i6++) {
            byte bC = w6Var.c(i6);
            if (bC == 34) {
                sb.append("\\\"");
            } else if (bC == 39) {
                sb.append("\\'");
            } else if (bC != 92) {
                switch (bC) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bC < 32 || bC > 126) {
                            sb.append('\\');
                            sb.append((char) (((bC >>> 6) & 3) + 48));
                            sb.append((char) (((bC >>> 3) & 7) + 48));
                            sb.append((char) ((bC & 7) + 48));
                            break;
                        } else {
                            sb.append((char) bC);
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static String e(String str) {
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

    public static String f(String str, Object... objArr) {
        int length;
        int length2;
        int iIndexOf;
        String string;
        int i6 = 0;
        int i10 = 0;
        while (true) {
            length = objArr.length;
            if (i10 >= length) {
                break;
            }
            Object obj = objArr[i10];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e5) {
                    String strI = ea.q.i(obj.getClass().getName(), "@", Integer.toHexString(System.identityHashCode(obj)));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(strI), (Throwable) e5);
                    string = "<" + strI + " threw " + e5.getClass().getName() + ">";
                }
            }
            objArr[i10] = string;
            i10++;
        }
        StringBuilder sb = new StringBuilder(str.length() + (length * 16));
        int i11 = 0;
        while (true) {
            length2 = objArr.length;
            if (i6 >= length2 || (iIndexOf = str.indexOf("%s", i11)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i11, iIndexOf);
            sb.append(objArr[i6]);
            i11 = iIndexOf + 2;
            i6++;
        }
        sb.append((CharSequence) str, i11, str.length());
        if (i6 < length2) {
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

    public static Map g(String str, Bundle bundle) {
        Map map = (Map) bundle.getSerializable(str);
        if (map == null) {
            return z1.f4505g;
        }
        HashMap map2 = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            if (entry != null && entry.getKey() != null && entry.getValue() != null) {
                map2.put((Integer) entry.getKey(), (Integer) entry.getValue());
            }
        }
        return Collections.unmodifiableMap(map2);
    }

    public static void h(int i6, int i10) {
        String strF;
        if (i6 < 0 || i6 >= i10) {
            if (i6 < 0) {
                strF = f("%s (%s) must not be negative", "index", Integer.valueOf(i6));
            } else {
                if (i10 < 0) {
                    throw new IllegalArgumentException(a.e.n(i10, "negative size: "));
                }
                strF = f("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i6), Integer.valueOf(i10));
            }
            throw new IndexOutOfBoundsException(strF);
        }
    }

    public static /* synthetic */ boolean i(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, e6 e6Var, Object obj, Object obj2) {
        while (!atomicReferenceFieldUpdater.compareAndSet(e6Var, obj, obj2)) {
            if (atomicReferenceFieldUpdater.get(e6Var) != obj && atomicReferenceFieldUpdater.get(e6Var) != obj) {
                return false;
            }
        }
        return true;
    }

    public static void k(int i6, int i10) {
        if (i6 < 0 || i6 > i10) {
            throw new IndexOutOfBoundsException(o(i6, i10, "index"));
        }
    }

    public static void m(int i6, int i10, int i11) {
        if (i6 < 0 || i10 < i6 || i10 > i11) {
            throw new IndexOutOfBoundsException((i6 < 0 || i6 > i11) ? o(i6, i11, "start index") : (i10 < 0 || i10 > i11) ? o(i10, i11, "end index") : f("end index (%s) must not be less than start index (%s)", Integer.valueOf(i10), Integer.valueOf(i6)));
        }
    }

    public static String o(int i6, int i10, String str) {
        if (i6 < 0) {
            return f("%s (%s) must not be negative", str, Integer.valueOf(i6));
        }
        if (i10 >= 0) {
            return f("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i6), Integer.valueOf(i10));
        }
        throw new IllegalArgumentException(a.e.n(i10, "negative size: "));
    }

    public abstract y5 c(z5 z5Var);

    public abstract d6 j(z5 z5Var);

    public abstract void l(d6 d6Var, d6 d6Var2);

    public abstract void n(d6 d6Var, Thread thread);

    public abstract boolean p(z5 z5Var, y5 y5Var, y5 y5Var2);

    public abstract boolean q(e6 e6Var, Object obj, Object obj2);

    public abstract boolean r(e6 e6Var, d6 d6Var, d6 d6Var2);

    public String toString() {
        switch (this.f4504a) {
            case 6:
                return ((m6) this).d.toString();
            default:
                return super.toString();
        }
    }
}
