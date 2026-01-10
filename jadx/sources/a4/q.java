package a4;

import android.os.Process;
import android.util.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f142a;

    /* renamed from: b, reason: collision with root package name */
    public final Runnable f143b;

    public /* synthetic */ q(Runnable runnable, int i6) {
        this.f142a = i6;
        this.f143b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() throws SecurityException, IllegalArgumentException {
        switch (this.f142a) {
            case 0:
                try {
                    this.f143b.run();
                    break;
                } catch (Exception e5) {
                    Log.e("TransportRuntime.".concat("Executor"), "Background execution failure.", e5);
                    return;
                }
            default:
                Process.setThreadPriority(10);
                this.f143b.run();
                break;
        }
    }
}
