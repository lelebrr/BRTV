package z2;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import l6.h;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c implements a {

    /* renamed from: b, reason: collision with root package name */
    public final File f11513b;

    /* renamed from: c, reason: collision with root package name */
    public final long f11514c;

    /* renamed from: e, reason: collision with root package name */
    public s2.d f11515e;
    public final h d = new h(14);

    /* renamed from: a, reason: collision with root package name */
    public final h f11512a = new h(15);

    public c(File file, long j10) {
        this.f11513b = file;
        this.f11514c = j10;
    }

    public final synchronized s2.d a() {
        try {
            if (this.f11515e == null) {
                this.f11515e = s2.d.h(this.f11513b, this.f11514c);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f11515e;
    }

    @Override // z2.a
    public final void f(v2.e eVar, s.g gVar) {
        b bVarA;
        s2.d dVarA;
        boolean z7;
        String strL = this.f11512a.l(eVar);
        h hVar = this.d;
        synchronized (hVar) {
            try {
                bVarA = (b) ((HashMap) hVar.f8016b).get(strL);
                if (bVarA == null) {
                    bVarA = ((i3.a) hVar.f8017c).a();
                    ((HashMap) hVar.f8016b).put(strL, bVarA);
                }
                bVarA.f11511b++;
            } finally {
            }
        }
        bVarA.f11510a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + strL + " for for Key: " + eVar);
            }
            try {
                dVarA = a();
            } catch (IOException e5) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e5);
                }
            }
            if (dVarA.f(strL) != null) {
                return;
            }
            e2.c cVarD = dVarA.d(strL);
            if (cVarD == null) {
                throw new IllegalStateException("Had two simultaneous puts for: ".concat(strL));
            }
            try {
                if (((v2.b) gVar.f9688b).i(gVar.f9689c, cVarD.f(), (v2.h) gVar.d)) {
                    s2.d.a((s2.d) cVarD.d, cVarD, true);
                    cVarD.f6448a = true;
                }
                if (!z7) {
                    try {
                        cVarD.c();
                    } catch (IOException unused) {
                    }
                }
            } finally {
                if (!cVarD.f6448a) {
                    try {
                        cVarD.c();
                    } catch (IOException unused2) {
                    }
                }
            }
        } finally {
            this.d.q(strL);
        }
    }

    @Override // z2.a
    public final File h(v2.e eVar) {
        String strL = this.f11512a.l(eVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + strL + " for for Key: " + eVar);
        }
        try {
            s2.c cVarF = a().f(strL);
            if (cVarF != null) {
                return ((File[]) cVarF.f9745b)[0];
            }
            return null;
        } catch (IOException e5) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e5);
            return null;
        }
    }
}
