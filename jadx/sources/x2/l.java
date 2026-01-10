package x2;

import android.os.SystemClock;
import android.util.Log;
import androidx.appcompat.app.r0;
import androidx.appcompat.widget.z3;
import com.google.android.gms.internal.cast.e0;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: h, reason: collision with root package name */
    public static final boolean f10914h = Log.isLoggable("Engine", 2);

    /* renamed from: a, reason: collision with root package name */
    public final b3.x f10915a;

    /* renamed from: b, reason: collision with root package name */
    public final q.b f10916b;

    /* renamed from: c, reason: collision with root package name */
    public final z2.e f10917c;
    public final z3 d;

    /* renamed from: e, reason: collision with root package name */
    public final r0 f10918e;
    public final e0 f;

    /* renamed from: g, reason: collision with root package name */
    public final a0.f f10919g;

    public l(z2.e eVar, z2.d dVar, a3.f fVar, a3.f fVar2, a3.f fVar3, a3.f fVar4) {
        this.f10917c = eVar;
        b.a aVar = new b.a(dVar);
        a0.f fVar5 = new a0.f(10);
        this.f10919g = fVar5;
        synchronized (this) {
            synchronized (fVar5) {
                fVar5.f40e = this;
            }
        }
        this.f10916b = new q.b(9);
        this.f10915a = new b3.x(2);
        z3 z3Var = new z3();
        z3Var.f916g = s3.c.a(150, new s2.c(7, z3Var));
        z3Var.f912a = fVar;
        z3Var.f913b = fVar2;
        z3Var.f914c = fVar3;
        z3Var.d = fVar4;
        z3Var.f915e = this;
        z3Var.f = this;
        this.d = z3Var;
        e0 e0Var = new e0();
        e0Var.f4145c = s3.c.a(150, new s2.c(6, e0Var));
        e0Var.f4144b = aVar;
        this.f = e0Var;
        this.f10918e = new r0();
        eVar.d = this;
    }

    public static void d(String str, long j10, q qVar) {
        StringBuilder sbW = a.e.w(str, " in ");
        sbW.append(r3.h.a(j10));
        sbW.append("ms, key: ");
        sbW.append(qVar);
        Log.v("Engine", sbW.toString());
    }

    public static void g(x xVar) {
        if (!(xVar instanceof r)) {
            throw new IllegalArgumentException("Cannot release anything but an EngineResource");
        }
        ((r) xVar).e();
    }

    public final s.g a(com.bumptech.glide.f fVar, Object obj, v2.e eVar, int i6, int i10, Class cls, Class cls2, com.bumptech.glide.g gVar, k kVar, r3.b bVar, boolean z7, boolean z10, v2.h hVar, boolean z11, boolean z12, n3.f fVar2, r3.e eVar2) {
        long jElapsedRealtimeNanos;
        if (f10914h) {
            int i11 = r3.h.f9499b;
            jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        } else {
            jElapsedRealtimeNanos = 0;
        }
        long j10 = jElapsedRealtimeNanos;
        this.f10916b.getClass();
        q qVar = new q(obj, eVar, i6, i10, bVar, cls, cls2, hVar);
        synchronized (this) {
            try {
                r rVarC = c(qVar, z11, j10);
                if (rVarC == null) {
                    return h(fVar, obj, eVar, i6, i10, cls, cls2, gVar, kVar, bVar, z7, z10, hVar, z11, z12, fVar2, eVar2, qVar, j10);
                }
                fVar2.k(rVarC, 5, false);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final r b(q qVar) {
        Object obj;
        z2.e eVar = this.f10917c;
        synchronized (eVar) {
            r3.i iVar = (r3.i) eVar.f9502a.remove(qVar);
            if (iVar == null) {
                obj = null;
            } else {
                eVar.f9504c -= iVar.f9501b;
                obj = iVar.f9500a;
            }
        }
        x xVar = (x) obj;
        r rVar = xVar != null ? xVar instanceof r ? (r) xVar : new r(xVar, true, true, qVar, this) : null;
        if (rVar != null) {
            rVar.b();
            this.f10919g.a(qVar, rVar);
        }
        return rVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final r c(q qVar, boolean z7, long j10) {
        r rVar;
        if (!z7) {
            return null;
        }
        a0.f fVar = this.f10919g;
        synchronized (fVar) {
            a aVar = (a) ((HashMap) fVar.f39c).get(qVar);
            if (aVar == null) {
                rVar = null;
            } else {
                rVar = (r) aVar.get();
                if (rVar == null) {
                    fVar.d(aVar);
                }
            }
        }
        if (rVar != null) {
            rVar.b();
        }
        if (rVar != null) {
            if (f10914h) {
                d("Loaded resource from active resources", j10, qVar);
            }
            return rVar;
        }
        r rVarB = b(qVar);
        if (rVarB == null) {
            return null;
        }
        if (f10914h) {
            d("Loaded resource from cache", j10, qVar);
        }
        return rVarB;
    }

    public final synchronized void e(p pVar, q qVar, r rVar) {
        if (rVar != null) {
            try {
                if (rVar.f10954a) {
                    this.f10919g.a(qVar, rVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        b3.x xVar = this.f10915a;
        xVar.getClass();
        pVar.getClass();
        HashMap map = xVar.f3222a;
        if (pVar.equals(map.get(qVar))) {
            map.remove(qVar);
        }
    }

    public final void f(q qVar, r rVar) {
        a0.f fVar = this.f10919g;
        synchronized (fVar) {
            a aVar = (a) ((HashMap) fVar.f39c).remove(qVar);
            if (aVar != null) {
                aVar.f10849c = null;
                aVar.clear();
            }
        }
        if (rVar.f10954a) {
        } else {
            this.f10918e.e(rVar, false);
        }
    }

    public final s.g h(com.bumptech.glide.f fVar, Object obj, v2.e eVar, int i6, int i10, Class cls, Class cls2, com.bumptech.glide.g gVar, k kVar, r3.b bVar, boolean z7, boolean z10, v2.h hVar, boolean z11, boolean z12, n3.f fVar2, r3.e eVar2, q qVar, long j10) {
        p pVar = (p) this.f10915a.f3222a.get(qVar);
        if (pVar != null) {
            pVar.a(fVar2, eVar2);
            if (f10914h) {
                d("Added to existing load", j10, qVar);
            }
            return new s.g(this, fVar2, pVar);
        }
        p pVar2 = (p) ((s.g) this.d.f916g).f();
        synchronized (pVar2) {
            pVar2.f10935k = qVar;
            pVar2.f10936l = z11;
            pVar2.f10937m = z12;
        }
        e0 e0Var = this.f;
        i iVar = (i) ((s.g) e0Var.f4145c).f();
        int i11 = e0Var.f4143a;
        e0Var.f4143a = i11 + 1;
        g gVar2 = iVar.f10883a;
        gVar2.f10866c = fVar;
        gVar2.d = obj;
        gVar2.f10875n = eVar;
        gVar2.f10867e = i6;
        gVar2.f = i10;
        gVar2.f10877p = kVar;
        gVar2.f10868g = cls;
        gVar2.f10869h = iVar.d;
        gVar2.f10872k = cls2;
        gVar2.f10876o = gVar;
        gVar2.f10870i = hVar;
        gVar2.f10871j = bVar;
        gVar2.f10878q = z7;
        gVar2.f10879r = z10;
        iVar.f10888h = fVar;
        iVar.f10889i = eVar;
        iVar.f10890j = gVar;
        iVar.f10891k = qVar;
        iVar.f10892l = i6;
        iVar.f10893m = i10;
        iVar.f10894n = kVar;
        iVar.f10895o = hVar;
        iVar.f10896p = pVar2;
        iVar.f10897q = i11;
        iVar.D = 1;
        iVar.f10899s = obj;
        b3.x xVar = this.f10915a;
        xVar.getClass();
        xVar.f3222a.put(qVar, pVar2);
        pVar2.a(fVar2, eVar2);
        pVar2.k(iVar);
        if (f10914h) {
            d("Started new load", j10, qVar);
        }
        return new s.g(this, fVar2, pVar2);
    }
}
