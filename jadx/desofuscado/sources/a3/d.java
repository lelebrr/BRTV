package a3;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final b f94a;

    /* renamed from: b, reason: collision with root package name */
    public final String f95b;

    /* renamed from: c, reason: collision with root package name */
    public final e f96c;
    public final boolean d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicInteger f97e;

    public d(b bVar, String str, boolean z7) {
        e eVar = e.f98a;
        this.f97e = new AtomicInteger();
        this.f94a = bVar;
        this.f95b = str;
        this.f96c = eVar;
        this.d = z7;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        c cVar = new c(this, 0, runnable);
        this.f94a.getClass();
        a aVar = new a(cVar);
        aVar.setName("glide-" + this.f95b + "-thread-" + this.f97e.getAndIncrement());
        return aVar;
    }
}
