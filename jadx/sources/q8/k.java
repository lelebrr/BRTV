package q8;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k extends AtomicLong implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final String f9346a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9347b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9348c;

    public k(String str) {
        this(str, false, 5);
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f9346a + '-' + incrementAndGet();
        Thread aVar = this.f9348c ? new a3.a(runnable, str) : new Thread(runnable, str);
        aVar.setPriority(this.f9347b);
        aVar.setDaemon(true);
        return aVar;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public final String toString() {
        return a.e.t(new StringBuilder("RxThreadFactory["), this.f9346a, "]");
    }

    public k(String str, boolean z7, int i6) {
        this.f9346a = str;
        this.f9347b = i6;
        this.f9348c = z7;
    }
}
