package a4;

import android.content.Context;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t {

    /* renamed from: e, reason: collision with root package name */
    public static volatile l f147e;

    /* renamed from: a, reason: collision with root package name */
    public final k4.a f148a;

    /* renamed from: b, reason: collision with root package name */
    public final k4.a f149b;

    /* renamed from: c, reason: collision with root package name */
    public final g4.b f150c;
    public final h4.i d;

    public t(k4.a aVar, k4.a aVar2, g4.b bVar, h4.i iVar, h4.j jVar) {
        this.f148a = aVar;
        this.f149b = aVar2;
        this.f150c = bVar;
        this.d = iVar;
        jVar.getClass();
        jVar.f7264a.execute(new a.b(10, jVar));
    }

    public static t a() {
        l lVar = f147e;
        if (lVar != null) {
            return (t) lVar.f137e.get();
        }
        throw new IllegalStateException("Not initialized!");
    }

    public static void b(Context context) {
        if (f147e == null) {
            synchronized (t.class) {
                try {
                    if (f147e == null) {
                        k kVar = new k();
                        context.getClass();
                        kVar.f133b = context;
                        f147e = kVar.b();
                    }
                } finally {
                }
            }
        }
    }
}
