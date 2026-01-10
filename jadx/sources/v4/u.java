package v4;

import androidx.leanback.widget.n0;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.internal.zza;
import com.google.android.gms.cast.internal.zzac;
import com.google.android.gms.internal.cast.x0;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class u extends e {
    public final AtomicReference d;

    /* renamed from: e, reason: collision with root package name */
    public final x0 f10715e;

    public u(v vVar) {
        this.d = new AtomicReference(vVar);
        this.f10715e = new x0(vVar.d, 0);
    }

    @Override // v4.f
    public final void a(int i6) {
        v vVar = (v) this.d.get();
        if (vVar == null) {
            return;
        }
        vVar.O = null;
        vVar.P = null;
        synchronized (v.U) {
        }
        if (vVar.B != null) {
            this.f10715e.post(new n0(i6, 5, vVar));
        }
    }

    @Override // v4.f
    public final void c(zza zzaVar) {
        v vVar = (v) this.d.get();
        if (vVar == null) {
            return;
        }
        v.S.b("onApplicationStatusChanged", new Object[0]);
        this.f10715e.post(new ua.a(vVar, 2, zzaVar));
    }

    @Override // v4.f
    public final void e(int i6) {
        if (((v) this.d.get()) == null) {
            return;
        }
        synchronized (v.U) {
        }
    }

    @Override // v4.f
    public final void m(int i6) {
        v vVar = null;
        v vVar2 = (v) this.d.getAndSet(null);
        if (vVar2 != null) {
            vVar2.M = -1;
            vVar2.N = -1;
            vVar2.f10716z = null;
            vVar2.G = null;
            vVar2.K = 0.0d;
            vVar2.B();
            vVar2.H = false;
            vVar2.L = null;
            vVar = vVar2;
        }
        if (vVar == null) {
            return;
        }
        v.S.b("ICastDeviceControllerListener.onDisconnected: %d", Integer.valueOf(i6));
        if (i6 != 0) {
            int i10 = vVar.f4009w.get();
            b5.n nVar = vVar.f;
            nVar.sendMessage(nVar.obtainMessage(6, i10, 2));
        }
    }

    @Override // v4.f
    public final void n(String str, String str2) {
        v vVar = (v) this.d.get();
        if (vVar == null) {
            return;
        }
        v.S.b("Receive (type=text, ns=%s) %s", str, str2);
        this.f10715e.post(new androidx.appcompat.app.c((Object) vVar, str, str2, 6));
    }

    @Override // v4.f
    public final void o() {
        v.S.b("Deprecated callback: \"onStatusreceived\"", new Object[0]);
    }

    @Override // v4.f
    public final void p(int i6) {
        if (((v) this.d.get()) == null) {
            return;
        }
        synchronized (v.U) {
        }
    }

    @Override // v4.f
    public final void q(int i6, long j10) {
        v vVar = (v) this.d.get();
        if (vVar == null) {
            return;
        }
        v.z(vVar, j10);
    }

    @Override // v4.f
    public final void r(int i6) {
        if (((v) this.d.get()) == null) {
            return;
        }
        synchronized (v.T) {
        }
    }

    @Override // v4.f
    public final void s(String str, byte[] bArr) {
        if (((v) this.d.get()) == null) {
            return;
        }
        v.S.b("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", str, Integer.valueOf(bArr.length));
    }

    @Override // v4.f
    public final void t(long j10) {
        v vVar = (v) this.d.get();
        if (vVar == null) {
            return;
        }
        v.z(vVar, j10);
    }

    @Override // v4.f
    public final void u(ApplicationMetadata applicationMetadata, String str, String str2, boolean z7) {
        v vVar = (v) this.d.get();
        if (vVar == null) {
            return;
        }
        vVar.f10716z = applicationMetadata;
        vVar.O = applicationMetadata.f3644a;
        vVar.P = str2;
        vVar.G = str;
        synchronized (v.T) {
        }
    }

    @Override // v4.f
    public final void v(zzac zzacVar) {
        v vVar = (v) this.d.get();
        if (vVar == null) {
            return;
        }
        v.S.b("onDeviceStatusChanged", new Object[0]);
        this.f10715e.post(new ua.a(vVar, 1, zzacVar));
    }

    @Override // v4.f
    public final void d(int i6) {
    }

    @Override // v4.f
    public final void k(int i6) {
    }
}
