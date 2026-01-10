package b1;

import java.util.concurrent.ThreadFactory;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f3098a;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.f3098a);
        thread.setPriority(10);
        return thread;
    }
}
