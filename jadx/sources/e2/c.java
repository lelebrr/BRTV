package e2;

import android.net.ConnectivityManager;
import android.util.Log;
import com.google.android.gms.internal.cast.q0;
import java.io.File;
import k3.n;
import k3.o;
import okio.Path;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements o {

    /* renamed from: a, reason: collision with root package name */
    public boolean f6448a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6449b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f6450c;
    public final Object d;

    public c(b.a aVar, n nVar) {
        this.d = new q0(1, this);
        this.f6450c = aVar;
        this.f6449b = nVar;
    }

    @Override // k3.o
    public void a() {
        ((ConnectivityManager) ((b.a) this.f6450c).get()).unregisterNetworkCallback((q0) this.d);
    }

    @Override // k3.o
    public boolean b() {
        b.a aVar = (b.a) this.f6450c;
        this.f6448a = ((ConnectivityManager) aVar.get()).getActiveNetwork() != null;
        try {
            ((ConnectivityManager) aVar.get()).registerDefaultNetworkCallback((q0) this.d);
            return true;
        } catch (RuntimeException e5) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to register callback", e5);
            }
            return false;
        }
    }

    public void c() {
        s2.d.a((s2.d) this.d, this, false);
    }

    public void d(boolean z7) {
        h hVar = (h) this.d;
        synchronized (hVar) {
            try {
                if (this.f6448a) {
                    throw new IllegalStateException("editor is closed");
                }
                if (j9.i.a(((d) this.f6449b).f6455g, this)) {
                    h.a(hVar, this, z7);
                }
                this.f6448a = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Path e(int i6) {
        Path path;
        h hVar = (h) this.d;
        synchronized (hVar) {
            if (this.f6448a) {
                throw new IllegalStateException("editor is closed");
            }
            ((boolean[]) this.f6450c)[i6] = true;
            Object obj = ((d) this.f6449b).d.get(i6);
            f fVar = hVar.f6476p;
            Path path2 = (Path) obj;
            if (!fVar.exists(path2)) {
                r2.f.a(fVar.sink(path2));
            }
            path = (Path) obj;
        }
        return path;
    }

    public File f() {
        File file;
        synchronized (((s2.d) this.d)) {
            try {
                s2.b bVar = (s2.b) this.f6449b;
                if (bVar.f != this) {
                    throw new IllegalStateException();
                }
                if (!bVar.f9738e) {
                    ((boolean[]) this.f6450c)[0] = true;
                }
                file = bVar.d[0];
                ((s2.d) this.d).f9746a.mkdirs();
            } catch (Throwable th) {
                throw th;
            }
        }
        return file;
    }

    public c(h hVar, d dVar) {
        this.d = hVar;
        this.f6449b = dVar;
        hVar.getClass();
        this.f6450c = new boolean[2];
    }

    public c(s2.d dVar, s2.b bVar) {
        this.d = dVar;
        this.f6449b = bVar;
        this.f6450c = bVar.f9738e ? null : new boolean[dVar.f9750g];
    }
}
