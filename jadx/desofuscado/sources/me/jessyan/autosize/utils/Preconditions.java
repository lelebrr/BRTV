package me.jessyan.autosize.utils;

import android.os.Looper;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Preconditions {
    private Preconditions() {
        throw new IllegalStateException("you can't instantiate me!");
    }

    private static String badElementIndex(int i6, int i10, String str) {
        if (i6 < 0) {
            return format("%s (%s) must not be negative", str, Integer.valueOf(i6));
        }
        if (i10 >= 0) {
            return format("%s (%s) must be less than size (%s)", str, Integer.valueOf(i6), Integer.valueOf(i10));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i10);
        throw new IllegalArgumentException(sb.toString());
    }

    private static String badPositionIndex(int i6, int i10, String str) {
        if (i6 < 0) {
            return format("%s (%s) must not be negative", str, Integer.valueOf(i6));
        }
        if (i10 >= 0) {
            return format("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i6), Integer.valueOf(i10));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i10);
        throw new IllegalArgumentException(sb.toString());
    }

    private static String badPositionIndexes(int i6, int i10, int i11) {
        return (i6 < 0 || i6 > i11) ? badPositionIndex(i6, i11, "start index") : (i10 < 0 || i10 > i11) ? badPositionIndex(i10, i11, "end index") : format("end index (%s) must not be less than start index (%s)", Integer.valueOf(i10), Integer.valueOf(i6));
    }

    public static void checkArgument(boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException();
        }
    }

    public static int checkElementIndex(int i6, int i10) {
        return checkElementIndex(i6, i10, "index");
    }

    public static void checkMainThread() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("Not in applications main thread");
        }
    }

    public static <T> T checkNotNull(T t5) {
        t5.getClass();
        return t5;
    }

    public static int checkPositionIndex(int i6, int i10) {
        return checkPositionIndex(i6, i10, "index");
    }

    public static void checkPositionIndexes(int i6, int i10, int i11) {
        if (i6 < 0 || i10 < i6 || i10 > i11) {
            throw new IndexOutOfBoundsException(badPositionIndexes(i6, i10, i11));
        }
    }

    public static void checkState(boolean z7) {
        if (!z7) {
            throw new IllegalStateException();
        }
    }

    public static String format(String str, Object... objArr) {
        int iIndexOf;
        String strValueOf = String.valueOf(str);
        StringBuilder sb = new StringBuilder((objArr.length * 16) + strValueOf.length());
        int i6 = 0;
        int i10 = 0;
        while (i6 < objArr.length && (iIndexOf = strValueOf.indexOf("%s", i10)) != -1) {
            sb.append(strValueOf.substring(i10, iIndexOf));
            sb.append(objArr[i6]);
            i10 = iIndexOf + 2;
            i6++;
        }
        sb.append(strValueOf.substring(i10));
        if (i6 < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i6]);
            for (int i11 = i6 + 1; i11 < objArr.length; i11++) {
                sb.append(", ");
                sb.append(objArr[i11]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static void checkArgument(boolean z7, Object obj) {
        if (!z7) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static int checkElementIndex(int i6, int i10, String str) {
        if (i6 < 0 || i6 >= i10) {
            throw new IndexOutOfBoundsException(badElementIndex(i6, i10, str));
        }
        return i6;
    }

    public static <T> T checkNotNull(T t5, Object obj) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static int checkPositionIndex(int i6, int i10, String str) {
        if (i6 < 0 || i6 > i10) {
            throw new IndexOutOfBoundsException(badPositionIndex(i6, i10, str));
        }
        return i6;
    }

    public static void checkState(boolean z7, Object obj) {
        if (!z7) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void checkArgument(boolean z7, String str, Object... objArr) {
        if (!z7) {
            throw new IllegalArgumentException(format(str, objArr));
        }
    }

    public static <T> T checkNotNull(T t5, String str, Object... objArr) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException(format(str, objArr));
    }

    public static void checkState(boolean z7, String str, Object... objArr) {
        if (!z7) {
            throw new IllegalStateException(format(str, objArr));
        }
    }
}
