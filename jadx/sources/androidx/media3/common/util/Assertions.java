package androidx.media3.common.util;

import android.os.Looper;
import android.text.TextUtils;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class Assertions {
    private Assertions() {
    }

    public static void checkArgument(boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException();
        }
    }

    public static int checkIndex(int i6, int i10, int i11) {
        if (i6 < i10 || i6 >= i11) {
            throw new IndexOutOfBoundsException();
        }
        return i6;
    }

    public static void checkMainThread() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("Not in applications main thread");
        }
    }

    public static String checkNotEmpty(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        return str;
    }

    public static <T> T checkNotNull(T t5) {
        t5.getClass();
        return t5;
    }

    public static void checkState(boolean z7) {
        if (!z7) {
            throw new IllegalStateException();
        }
    }

    public static <T> T checkStateNotNull(T t5) {
        if (t5 != null) {
            return t5;
        }
        throw new IllegalStateException();
    }

    public static void checkArgument(boolean z7, Object obj) {
        if (!z7) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static <T> T checkNotNull(T t5, Object obj) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void checkState(boolean z7, Object obj) {
        if (!z7) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static <T> T checkStateNotNull(T t5, Object obj) {
        if (t5 != null) {
            return t5;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    public static String checkNotEmpty(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return str;
    }
}
