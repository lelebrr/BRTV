package a;

import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.fragment.app.b0;
import androidx.fragment.app.j0;
import com.google.android.gms.common.ConnectionResult;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q implements b5.b {

    /* renamed from: a, reason: collision with root package name */
    public boolean f27a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f28b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f29c;
    public Object d;

    /* renamed from: e, reason: collision with root package name */
    public Object f30e;
    public Object f;

    public q(z4.e eVar, y4.c cVar, z4.b bVar) {
        this.f = eVar;
        this.d = null;
        this.f30e = null;
        this.f27a = false;
        this.f28b = cVar;
        this.f29c = bVar;
    }

    @Override // b5.b
    public void a(ConnectionResult connectionResult) {
        ((z4.e) this.f).f11608m.post(new ua.a(8, this, connectionResult, false));
    }

    public boolean b(Method method, Class cls) {
        StringBuilder sb = (StringBuilder) this.f30e;
        sb.setLength(0);
        sb.append(method.getName());
        sb.append('>');
        sb.append(cls.getName());
        String string = sb.toString();
        Class<?> declaringClass = method.getDeclaringClass();
        HashMap map = (HashMap) this.d;
        Class cls2 = (Class) map.put(string, declaringClass);
        if (cls2 == null || cls2.isAssignableFrom(declaringClass)) {
            return true;
        }
        map.put(string, cls2);
        return false;
    }

    public void c() {
        Iterator itDescendingIterator = ((ArrayDeque) this.f29c).descendingIterator();
        while (itDescendingIterator.hasNext()) {
            b0 b0Var = (b0) itDescendingIterator.next();
            if (b0Var.f1430a) {
                j0 j0Var = b0Var.d;
                j0Var.u(true);
                if (j0Var.f1462h.f1430a) {
                    j0Var.L();
                    return;
                } else {
                    j0Var.f1461g.c();
                    return;
                }
            }
        }
        Runnable runnable = (Runnable) this.f28b;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void d() {
        boolean z7;
        Iterator itDescendingIterator = ((ArrayDeque) this.f29c).descendingIterator();
        while (true) {
            if (!itDescendingIterator.hasNext()) {
                z7 = false;
                break;
            } else if (((b0) itDescendingIterator.next()).f1430a) {
                z7 = true;
                break;
            }
        }
        OnBackInvokedDispatcher onBackInvokedDispatcher = (OnBackInvokedDispatcher) this.f;
        if (onBackInvokedDispatcher != null) {
            if (z7 && !this.f27a) {
                n.b(onBackInvokedDispatcher, 0, (OnBackInvokedCallback) this.f30e);
                this.f27a = true;
            } else {
                if (z7 || !this.f27a) {
                    return;
                }
                n.c(onBackInvokedDispatcher, (OnBackInvokedCallback) this.f30e);
                this.f27a = false;
            }
        }
    }

    public void e(ConnectionResult connectionResult) {
        z4.n nVar = (z4.n) ((z4.e) this.f).f11605j.get((z4.b) this.f29c);
        if (nVar != null) {
            nVar.p(connectionResult);
        }
    }

    public q(Runnable runnable) {
        this.f29c = new ArrayDeque();
        this.f27a = false;
        this.f28b = runnable;
        if (j0.b.a()) {
            this.d = new l(this);
            this.f30e = n.a(new b(2, this));
        }
    }

    public q() {
        this.f28b = new ArrayList();
        this.f29c = new HashMap();
        this.d = new HashMap();
        this.f30e = new StringBuilder(128);
    }
}
