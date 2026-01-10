package x2;

import android.os.SystemClock;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a0 implements f, e {

    /* renamed from: a, reason: collision with root package name */
    public final g f10850a;

    /* renamed from: b, reason: collision with root package name */
    public final i f10851b;

    /* renamed from: c, reason: collision with root package name */
    public volatile int f10852c;
    public volatile c d;

    /* renamed from: e, reason: collision with root package name */
    public volatile Object f10853e;
    public volatile b3.t f;

    /* renamed from: g, reason: collision with root package name */
    public volatile d f10854g;

    public a0(g gVar, i iVar) {
        this.f10850a = gVar;
        this.f10851b = iVar;
    }

    @Override // x2.e
    public final void a(v2.e eVar, Exception exc, com.bumptech.glide.load.data.e eVar2, int i6) {
        this.f10851b.a(eVar, exc, eVar2, this.f.f3220c.e());
    }

    @Override // x2.f
    public final boolean b() {
        if (this.f10853e != null) {
            Object obj = this.f10853e;
            this.f10853e = null;
            try {
                if (!d(obj)) {
                    return true;
                }
            } catch (IOException e5) {
                if (Log.isLoggable("SourceGenerator", 3)) {
                    Log.d("SourceGenerator", "Failed to properly rewind or write data to cache", e5);
                }
            }
        }
        if (this.d != null && this.d.b()) {
            return true;
        }
        this.d = null;
        this.f = null;
        boolean z7 = false;
        while (!z7 && this.f10852c < this.f10850a.b().size()) {
            ArrayList arrayListB = this.f10850a.b();
            int i6 = this.f10852c;
            this.f10852c = i6 + 1;
            this.f = (b3.t) arrayListB.get(i6);
            if (this.f != null && (this.f10850a.f10877p.a(this.f.f3220c.e()) || this.f10850a.c(this.f.f3220c.a()) != null)) {
                this.f.f3220c.f(this.f10850a.f10876o, new l6.h(this, 11, this.f));
                z7 = true;
            }
        }
        return z7;
    }

    @Override // x2.e
    public final void c(v2.e eVar, Object obj, com.bumptech.glide.load.data.e eVar2, int i6, v2.e eVar3) {
        this.f10851b.c(eVar, obj, eVar2, this.f.f3220c.e(), eVar);
    }

    @Override // x2.f
    public final void cancel() {
        b3.t tVar = this.f;
        if (tVar != null) {
            tVar.f3220c.cancel();
        }
    }

    public final boolean d(Object obj) throws Throwable {
        int i6 = r3.h.f9499b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        boolean z7 = false;
        try {
            com.bumptech.glide.load.data.g gVarH = this.f10850a.f10866c.b().h(obj);
            Object objE = gVarH.e();
            v2.b bVarD = this.f10850a.d(objE);
            s.g gVar = new s.g(bVarD, objE, this.f10850a.f10870i, 4);
            v2.e eVar = this.f.f3218a;
            g gVar2 = this.f10850a;
            d dVar = new d(eVar, gVar2.f10875n);
            z2.a aVarA = gVar2.f10869h.a();
            aVarA.f(dVar, gVar);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + dVar + ", data: " + obj + ", encoder: " + bVarD + ", duration: " + r3.h.a(jElapsedRealtimeNanos));
            }
            if (aVarA.h(dVar) != null) {
                this.f10854g = dVar;
                this.d = new c(Collections.singletonList(this.f.f3218a), this.f10850a, this);
                this.f.f3220c.b();
                return true;
            }
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Attempt to write: " + this.f10854g + ", data: " + obj + " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly...");
            }
            try {
                this.f10851b.c(this.f.f3218a, gVarH.e(), this.f.f3220c, this.f.f3220c.e(), this.f.f3218a);
                return false;
            } catch (Throwable th) {
                th = th;
                z7 = true;
                if (!z7) {
                    this.f.f3220c.b();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
