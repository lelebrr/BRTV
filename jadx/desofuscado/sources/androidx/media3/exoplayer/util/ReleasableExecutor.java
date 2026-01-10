package androidx.media3.exoplayer.util;

import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.UnstableApi;
import java.util.concurrent.Executor;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface ReleasableExecutor extends Executor {

    /* compiled from: MyApplication */
    /* renamed from: androidx.media3.exoplayer.util.ReleasableExecutor$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static ReleasableExecutor a(final Executor executor, final Consumer consumer) {
            return new ReleasableExecutor() { // from class: androidx.media3.exoplayer.util.ReleasableExecutor.1
                @Override // java.util.concurrent.Executor
                public void execute(Runnable runnable) {
                    executor.execute(runnable);
                }

                @Override // androidx.media3.exoplayer.util.ReleasableExecutor
                public void release() {
                    consumer.accept(executor);
                }
            };
        }
    }

    void release();
}
