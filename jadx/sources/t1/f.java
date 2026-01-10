package t1;

import android.view.Choreographer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class f {
    public static void a(final Runnable runnable) {
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: t1.e
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j10) {
                runnable.run();
            }
        });
    }
}
