package k0;

import android.os.Process;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final int f7695a;

    public h(Runnable runnable) {
        super(runnable, "fonts-androidx");
        this.f7695a = 10;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws SecurityException, IllegalArgumentException {
        Process.setThreadPriority(this.f7695a);
        super.run();
    }
}
