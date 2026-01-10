package j0;

import android.os.Trace;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class m {
    public static void a(String str, int i6) {
        Trace.beginAsyncSection(str, i6);
    }

    public static void b(String str, int i6) {
        Trace.endAsyncSection(str, i6);
    }

    public static boolean c() {
        return Trace.isEnabled();
    }

    public static void d(String str, long j10) {
        Trace.setCounter(str, j10);
    }
}
