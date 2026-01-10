package l5;

import a4.k;
import android.content.Context;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: b, reason: collision with root package name */
    public static final b f7985b;

    /* renamed from: a, reason: collision with root package name */
    public k f7986a;

    static {
        b bVar = new b();
        bVar.f7986a = null;
        f7985b = bVar;
    }

    public static k a(Context context) {
        k kVar;
        b bVar = f7985b;
        synchronized (bVar) {
            try {
                if (bVar.f7986a == null) {
                    if (context.getApplicationContext() != null) {
                        context = context.getApplicationContext();
                    }
                    bVar.f7986a = new k(context, 3);
                }
                kVar = bVar.f7986a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return kVar;
    }
}
