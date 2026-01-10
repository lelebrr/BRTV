package a3;

import java.util.concurrent.ThreadFactory;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new a(runnable);
    }
}
