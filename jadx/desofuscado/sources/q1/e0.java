package q1;

import android.content.ComponentName;
import android.content.Context;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class e0 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8956a;

    /* renamed from: b, reason: collision with root package name */
    public final j7.c f8957b;

    /* renamed from: c, reason: collision with root package name */
    public final androidx.mediarouter.app.c f8958c = new androidx.mediarouter.app.c(8, this);
    public u7.d d;

    /* renamed from: e, reason: collision with root package name */
    public x f8959e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public androidx.appcompat.app.r0 f8960g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f8961h;

    public e0(Context context, j7.c cVar) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        this.f8956a = context;
        if (cVar != null) {
            this.f8957b = cVar;
        } else {
            this.f8957b = new j7.c(25, new ComponentName(context, getClass()));
        }
    }

    public b0 a(String str, d0 d0Var) {
        if (str != null) {
            return null;
        }
        throw new IllegalArgumentException("initialMemberRouteId cannot be null.");
    }

    public c0 b(String str) {
        if (str != null) {
            return null;
        }
        throw new IllegalArgumentException("routeId cannot be null");
    }

    public c0 c(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("routeId cannot be null");
        }
        if (str2 != null) {
            return d(str, d0.f8949b);
        }
        throw new IllegalArgumentException("routeGroupId cannot be null");
    }

    public c0 d(String str, d0 d0Var) {
        return b(str);
    }

    public abstract void e(x xVar);

    public final void f(androidx.appcompat.app.r0 r0Var) {
        u0.b();
        if (this.f8960g != r0Var) {
            this.f8960g = r0Var;
            if (this.f8961h) {
                return;
            }
            this.f8961h = true;
            this.f8958c.sendEmptyMessage(1);
        }
    }

    public final void g(x xVar) {
        u0.b();
        if (Objects.equals(this.f8959e, xVar)) {
            return;
        }
        this.f8959e = xVar;
        if (this.f) {
            return;
        }
        this.f = true;
        this.f8958c.sendEmptyMessage(2);
    }
}
