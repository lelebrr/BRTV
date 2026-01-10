package p4;

import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.internal.zza;
import com.google.android.gms.cast.internal.zzac;
import com.google.android.gms.common.api.Status;
import v4.t;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n extends v4.e {
    public final /* synthetic */ o d;

    public n(o oVar) {
        this.d = oVar;
    }

    @Override // v4.f
    public final void a(int i6) {
        o oVar = this.d;
        o.e(oVar, i6);
        if (oVar.C != null) {
            o.l(oVar).post(new m(this, i6, 2));
        }
    }

    @Override // v4.f
    public final void c(zza zzaVar) {
        o.l(this.d).post(new a3.c(25, this, zzaVar, false));
    }

    @Override // v4.f
    public final void d(int i6) {
        o.l(this.d).post(new m(this, i6, 1));
    }

    @Override // v4.f
    public final void e(int i6) {
        o.e(this.d, i6);
    }

    @Override // v4.f
    public final void k(int i6) {
        o.l(this.d).post(new m(this, i6, 3));
    }

    @Override // v4.f
    public final void m(int i6) {
        o.l(this.d).post(new m(this, i6, 0));
    }

    @Override // v4.f
    public final void n(String str, String str2) {
        o.F.b("Receive (type=text, ns=%s) %s", str, str2);
        o.l(this.d).post(new androidx.appcompat.app.c((Object) this, str, str2, 5));
    }

    @Override // v4.f
    public final void o() {
        o.F.b("Deprecated callback: \"onStatusReceived\"", new Object[0]);
    }

    @Override // v4.f
    public final void p(int i6) {
        o.e(this.d, i6);
    }

    @Override // v4.f
    public final void q(int i6, long j10) {
        o.d(this.d, j10, i6);
    }

    @Override // v4.f
    public final void r(int i6) {
        this.d.h(i6);
    }

    @Override // v4.f
    public final void s(String str, byte[] bArr) {
        o.F.b("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", str, Integer.valueOf(bArr.length));
    }

    @Override // v4.f
    public final void t(long j10) {
        o.d(this.d, j10, 0);
    }

    @Override // v4.f
    public final void u(ApplicationMetadata applicationMetadata, String str, String str2, boolean z7) {
        o oVar = this.d;
        oVar.f8900s = applicationMetadata;
        oVar.f8901t = str;
        t tVar = new t(new Status(0, null, null, null), applicationMetadata, str, str2, z7);
        synchronized (oVar.f8898q) {
            try {
                w5.d dVar = oVar.f8895n;
                if (dVar != null) {
                    dVar.b(tVar);
                }
                oVar.f8895n = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // v4.f
    public final void v(zzac zzacVar) {
        o.l(this.d).post(new a3.c(24, this, zzacVar, false));
    }
}
