package l;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7922a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f7923b;

    public b(int i6) {
        this.f7922a = i6;
        switch (i6) {
            case 1:
                this.f7923b = new AtomicInteger(1);
                break;
            default:
                this.f7923b = new AtomicInteger(0);
                break;
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f7922a) {
            case 0:
                Thread thread = new Thread(runnable);
                thread.setName("arch_disk_io_" + this.f7923b.getAndIncrement());
                return thread;
            default:
                return new Thread(runnable, "ModernAsyncTask #" + this.f7923b.getAndIncrement());
        }
    }
}
