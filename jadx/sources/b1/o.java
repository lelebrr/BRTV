package b1;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Handler;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o implements h {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3125a;

    /* renamed from: b, reason: collision with root package name */
    public final c2.b f3126b;

    /* renamed from: c, reason: collision with root package name */
    public final x4.e f3127c;
    public final Object d;

    /* renamed from: e, reason: collision with root package name */
    public Handler f3128e;
    public ThreadPoolExecutor f;

    /* renamed from: g, reason: collision with root package name */
    public ThreadPoolExecutor f3129g;

    /* renamed from: h, reason: collision with root package name */
    public a2.a f3130h;

    public o(Context context, c2.b bVar) {
        x4.e eVar = p.d;
        this.d = new Object();
        a2.a.p(context, "Context cannot be null");
        this.f3125a = context.getApplicationContext();
        this.f3126b = bVar;
        this.f3127c = eVar;
    }

    @Override // b1.h
    public final void a(a2.a aVar) {
        synchronized (this.d) {
            this.f3130h = aVar;
        }
        c();
    }

    public final void b() {
        synchronized (this.d) {
            try {
                this.f3130h = null;
                Handler handler = this.f3128e;
                if (handler != null) {
                    handler.removeCallbacks(null);
                }
                this.f3128e = null;
                ThreadPoolExecutor threadPoolExecutor = this.f3129g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f = null;
                this.f3129g = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        synchronized (this.d) {
            try {
                if (this.f3130h == null) {
                    return;
                }
                if (this.f == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new a("emojiCompat"));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    this.f3129g = threadPoolExecutor;
                    this.f = threadPoolExecutor;
                }
                this.f.execute(new a.b(8, this));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final k0.g d() throws Resources.NotFoundException {
        try {
            x4.e eVar = this.f3127c;
            Context context = this.f3125a;
            c2.b bVar = this.f3126b;
            eVar.getClass();
            c6.b bVarA = k0.b.a(context, bVar);
            int i6 = bVarA.f3390a;
            if (i6 != 0) {
                throw new RuntimeException(ea.q.f(i6, "fetchFonts failed (", ")"));
            }
            k0.g[] gVarArr = (k0.g[]) bVarA.f3391b;
            if (gVarArr == null || gVarArr.length == 0) {
                throw new RuntimeException("fetchFonts failed (empty result)");
            }
            return gVarArr[0];
        } catch (PackageManager.NameNotFoundException e5) {
            throw new RuntimeException("provider not found", e5);
        }
    }
}
