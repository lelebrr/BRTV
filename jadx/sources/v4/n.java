package v4;

import android.os.Looper;
import com.google.android.gms.internal.cast.x0;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: i, reason: collision with root package name */
    public static final Object f10697i = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final b f10698a;

    /* renamed from: b, reason: collision with root package name */
    public final long f10699b;

    /* renamed from: c, reason: collision with root package name */
    public final String f10700c;

    /* renamed from: g, reason: collision with root package name */
    public m f10702g;

    /* renamed from: h, reason: collision with root package name */
    public s4.h f10703h;

    /* renamed from: e, reason: collision with root package name */
    public long f10701e = -1;
    public long f = 0;
    public final x0 d = new x0(Looper.getMainLooper(), 0);

    public n(long j10, String str) {
        this.f10699b = j10;
        this.f10700c = str;
        this.f10698a = new b("RequestTracker", str);
    }

    public final void a(long j10, m mVar) {
        m mVar2;
        long j11;
        long j12;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Object obj = f10697i;
        synchronized (obj) {
            mVar2 = this.f10702g;
            j11 = this.f10701e;
            j12 = this.f;
            this.f10701e = j10;
            this.f10702g = mVar;
            this.f = jCurrentTimeMillis;
        }
        if (mVar2 != null) {
            mVar2.q(this.f10700c, j11, j12, jCurrentTimeMillis);
        }
        synchronized (obj) {
            try {
                s4.h hVar = this.f10703h;
                if (hVar != null) {
                    this.d.removeCallbacks(hVar);
                }
                s4.h hVar2 = new s4.h(3, this);
                this.f10703h = hVar2;
                this.d.postDelayed(hVar2, this.f10699b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(long j10, int i6, k kVar) {
        synchronized (f10697i) {
            try {
                if (c(j10)) {
                    Locale locale = Locale.ROOT;
                    e(i6, kVar, "request " + j10 + " completed");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean c(long j10) {
        boolean z7;
        synchronized (f10697i) {
            long j11 = this.f10701e;
            z7 = false;
            if (j11 != -1 && j11 == j10) {
                z7 = true;
            }
        }
        return z7;
    }

    public final boolean d() {
        boolean z7;
        synchronized (f10697i) {
            z7 = this.f10701e != -1;
        }
        return z7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0043, code lost:
    
        throw r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0024, code lost:
    
        r12 = move-exception;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void e(int r12, v4.k r13, java.lang.String r14) {
        /*
            r11 = this;
            r0 = 0
            java.lang.Object[] r0 = new java.lang.Object[r0]
            v4.b r1 = r11.f10698a
            r1.b(r14, r0)
            java.lang.Object r14 = v4.n.f10697i
            monitor-enter(r14)
            v4.m r0 = r11.f10702g     // Catch: java.lang.Throwable -> L24
            if (r0 == 0) goto L26
            long r9 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L24
            v4.m r1 = r11.f10702g     // Catch: java.lang.Throwable -> L24
            b5.l.e(r1)     // Catch: java.lang.Throwable -> L24
            java.lang.String r2 = r11.f10700c     // Catch: java.lang.Throwable -> L24
            long r3 = r11.f10701e     // Catch: java.lang.Throwable -> L24
            long r7 = r11.f     // Catch: java.lang.Throwable -> L24
            r5 = r12
            r6 = r13
            r1.l(r2, r3, r5, r6, r7, r9)     // Catch: java.lang.Throwable -> L24
            goto L26
        L24:
            r12 = move-exception
            goto L42
        L26:
            r12 = -1
            r11.f10701e = r12     // Catch: java.lang.Throwable -> L24
            r12 = 0
            r11.f10702g = r12     // Catch: java.lang.Throwable -> L24
            monitor-enter(r14)     // Catch: java.lang.Throwable -> L24
            s4.h r13 = r11.f10703h     // Catch: java.lang.Throwable -> L34
            if (r13 != 0) goto L36
            monitor-exit(r14)     // Catch: java.lang.Throwable -> L34
            goto L3e
        L34:
            r12 = move-exception
            goto L40
        L36:
            com.google.android.gms.internal.cast.x0 r0 = r11.d     // Catch: java.lang.Throwable -> L34
            r0.removeCallbacks(r13)     // Catch: java.lang.Throwable -> L34
            r11.f10703h = r12     // Catch: java.lang.Throwable -> L34
            monitor-exit(r14)     // Catch: java.lang.Throwable -> L34
        L3e:
            monitor-exit(r14)     // Catch: java.lang.Throwable -> L24
            return
        L40:
            monitor-exit(r14)     // Catch: java.lang.Throwable -> L34
            throw r12     // Catch: java.lang.Throwable -> L24
        L42:
            monitor-exit(r14)     // Catch: java.lang.Throwable -> L24
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: v4.n.e(int, v4.k, java.lang.String):void");
    }

    public final boolean f(int i6) {
        synchronized (f10697i) {
            try {
                if (!d()) {
                    return false;
                }
                Locale locale = Locale.ROOT;
                e(i6, null, "clearing request " + this.f10701e);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
