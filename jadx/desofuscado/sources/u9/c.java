package u9;

import a9.i;
import android.os.Handler;
import android.os.Looper;
import ea.q;
import java.util.concurrent.CancellationException;
import t9.b0;
import t9.p;
import t9.u;
import t9.y;
import x9.n;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c extends p implements y {
    private volatile c _immediate;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f10458c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f10459e;
    public final c f;

    public c(Handler handler, String str, boolean z7) {
        this.f10458c = handler;
        this.d = str;
        this.f10459e = z7;
        this._immediate = z7 ? this : null;
        c cVar = this._immediate;
        if (cVar == null) {
            cVar = new c(handler, str, true);
            this._immediate = cVar;
        }
        this.f = cVar;
    }

    @Override // t9.p
    public final void d(i iVar, Runnable runnable) {
        if (this.f10458c.post(runnable)) {
            return;
        }
        u.a(iVar, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        b0.f10181b.d(iVar, runnable);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof c) && ((c) obj).f10458c == this.f10458c;
    }

    @Override // t9.p
    public final boolean g() {
        return (this.f10459e && j9.i.a(Looper.myLooper(), this.f10458c.getLooper())) ? false : true;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f10458c);
    }

    @Override // t9.p
    public final String toString() {
        c cVar;
        String str;
        z9.d dVar = b0.f10180a;
        c cVar2 = n.f11128a;
        if (this == cVar2) {
            str = "Dispatchers.Main";
        } else {
            try {
                cVar = cVar2.f;
            } catch (UnsupportedOperationException unused) {
                cVar = null;
            }
            str = this == cVar ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        String string = this.d;
        if (string == null) {
            string = this.f10458c.toString();
        }
        return this.f10459e ? q.h(string, ".immediate") : string;
    }

    public c(Handler handler) {
        this(handler, null, false);
    }
}
