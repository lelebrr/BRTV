package b1;

import java.util.concurrent.ThreadPoolExecutor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k extends a2.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a2.a f3115b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ThreadPoolExecutor f3116c;

    public k(a2.a aVar, ThreadPoolExecutor threadPoolExecutor) {
        this.f3115b = aVar;
        this.f3116c = threadPoolExecutor;
    }

    @Override // a2.a
    public final void H(Throwable th) {
        ThreadPoolExecutor threadPoolExecutor = this.f3116c;
        try {
            this.f3115b.H(th);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }

    @Override // a2.a
    public final void I(a0.f fVar) {
        ThreadPoolExecutor threadPoolExecutor = this.f3116c;
        try {
            this.f3115b.I(fVar);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }
}
