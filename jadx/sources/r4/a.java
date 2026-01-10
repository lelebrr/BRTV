package r4;

import android.os.Looper;
import android.util.SparseIntArray;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.internal.cast.x0;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import q4.z;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public long f9514b;

    /* renamed from: c, reason: collision with root package name */
    public final f f9515c;
    public ArrayList d;

    /* renamed from: e, reason: collision with root package name */
    public final SparseIntArray f9516e;
    public final v f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f9517g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayDeque f9518h;

    /* renamed from: i, reason: collision with root package name */
    public final x0 f9519i;

    /* renamed from: j, reason: collision with root package name */
    public final o f9520j;

    /* renamed from: k, reason: collision with root package name */
    public BasePendingResult f9521k;

    /* renamed from: l, reason: collision with root package name */
    public BasePendingResult f9522l;

    /* renamed from: m, reason: collision with root package name */
    public final Set f9523m = Collections.synchronizedSet(new HashSet());

    /* renamed from: a, reason: collision with root package name */
    public final v4.b f9513a = new v4.b("MediaQueue", null);

    public a(f fVar) {
        this.f9515c = fVar;
        Math.max(20, 1);
        this.d = new ArrayList();
        this.f9516e = new SparseIntArray();
        this.f9517g = new ArrayList();
        this.f9518h = new ArrayDeque(20);
        this.f9519i = new x0(Looper.getMainLooper(), 0);
        int i6 = 1;
        this.f9520j = new o(i6, this);
        z zVar = new z(i6, this);
        fVar.getClass();
        b5.l.b("Must be called from the main thread.");
        fVar.f9547h.add(zVar);
        this.f = new v(this);
        this.f9514b = e();
        d();
    }

    public static void a(a aVar) {
        Set set = aVar.f9523m;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* bridge */ /* synthetic */ void b(a aVar) {
        SparseIntArray sparseIntArray = aVar.f9516e;
        sparseIntArray.clear();
        for (int i6 = 0; i6 < aVar.d.size(); i6++) {
            sparseIntArray.put(((Integer) aVar.d.get(i6)).intValue(), i6);
        }
    }

    public final void c() {
        h();
        this.d.clear();
        this.f9516e.clear();
        this.f.evictAll();
        this.f9517g.clear();
        this.f9519i.removeCallbacks(this.f9520j);
        this.f9518h.clear();
        BasePendingResult basePendingResult = this.f9522l;
        if (basePendingResult != null) {
            basePendingResult.b0();
            this.f9522l = null;
        }
        BasePendingResult basePendingResult2 = this.f9521k;
        if (basePendingResult2 != null) {
            basePendingResult2.b0();
            this.f9521k = null;
        }
        g();
        f();
    }

    public final void d() {
        BasePendingResult basePendingResult;
        BasePendingResult basePendingResultX;
        b5.l.b("Must be called from the main thread.");
        if (this.f9514b != 0 && (basePendingResult = this.f9522l) == null) {
            if (basePendingResult != null) {
                basePendingResult.b0();
                this.f9522l = null;
            }
            BasePendingResult basePendingResult2 = this.f9521k;
            if (basePendingResult2 != null) {
                basePendingResult2.b0();
                this.f9521k = null;
            }
            f fVar = this.f9515c;
            fVar.getClass();
            b5.l.b("Must be called from the main thread.");
            if (fVar.F()) {
                h hVar = new h(fVar);
                f.G(hVar);
                basePendingResultX = hVar;
            } else {
                basePendingResultX = f.x();
            }
            this.f9522l = basePendingResultX;
            basePendingResultX.h0(new u(this, 0));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long e() {
        /*
            r6 = this;
            r4.f r0 = r6.f9515c
            com.google.android.gms.cast.MediaStatus r0 = r0.f()
            if (r0 == 0) goto L2c
            com.google.android.gms.cast.MediaInfo r1 = r0.f3738a
            if (r1 != 0) goto Le
            r1 = -1
            goto L10
        Le:
            int r1 = r1.f3685b
        L10:
            int r2 = r0.f3741e
            int r3 = r0.f
            int r4 = r0.f3747l
            r5 = 1
            if (r2 == r5) goto L1a
            goto L29
        L1a:
            if (r3 == r5) goto L26
            r2 = 2
            if (r3 == r2) goto L23
            r1 = 3
            if (r3 == r1) goto L26
            goto L2c
        L23:
            if (r1 == r2) goto L29
            goto L2c
        L26:
            if (r4 != 0) goto L29
            goto L2c
        L29:
            long r0 = r0.f3739b
            return r0
        L2c:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: r4.a.e():long");
    }

    public final void f() {
        Set set = this.f9523m;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g() {
        Set set = this.f9523m;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h() {
        Set set = this.f9523m;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
