package q1;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Messenger;
import androidx.mediarouter.media.MediaRouteProviderService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class k0 {

    /* renamed from: a, reason: collision with root package name */
    public final MediaRouteProviderService f9030a;

    /* renamed from: c, reason: collision with root package name */
    public x f9032c;
    public x d;

    /* renamed from: e, reason: collision with root package name */
    public long f9033e;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f9031b = new ArrayList();
    public final HashMap f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final Object f9034g = new Object();

    /* renamed from: h, reason: collision with root package name */
    public final v0 f9035h = new v0(new a.f(28, this));

    public k0(MediaRouteProviderService mediaRouteProviderService) {
        this.f9030a = mediaRouteProviderService;
    }

    public j0 b(Messenger messenger, int i6, String str) {
        return new j0(this, messenger, i6, str);
    }

    public final int c(Messenger messenger) {
        ArrayList arrayList = this.f9031b;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            if (((j0) arrayList.get(i6)).f9022a.getBinder() == messenger.getBinder()) {
                return i6;
            }
        }
        return -1;
    }

    public final j0 d(Messenger messenger) {
        int iC = c(messenger);
        if (iC >= 0) {
            return (j0) this.f9031b.get(iC);
        }
        return null;
    }

    public final void e() {
        if (this.f.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = new ArrayList(this.f9031b).iterator();
        while (it.hasNext()) {
            ((j0) it.next()).getClass();
            arrayList.add(new f0(0));
        }
        synchronized (this.f9034g) {
            try {
                for (Map.Entry entry : this.f.entrySet()) {
                    ((Executor) entry.getValue()).execute(new androidx.appcompat.app.m0((m0.a) entry.getKey(), 15, arrayList));
                }
            } finally {
            }
        }
    }

    public IBinder f(Intent intent) {
        if (!intent.getAction().equals("android.media.MediaRouteProviderService")) {
            return null;
        }
        MediaRouteProviderService mediaRouteProviderService = this.f9030a;
        mediaRouteProviderService.b();
        if (mediaRouteProviderService.d != null) {
            return mediaRouteProviderService.f2738a.getBinder();
        }
        return null;
    }

    public void g(androidx.appcompat.app.r0 r0Var) {
        ArrayList arrayList = this.f9031b;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            j0 j0Var = (j0) arrayList.get(i6);
            MediaRouteProviderService.e(j0Var.f9022a, 5, 0, 0, j0Var.a(r0Var), null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean h() {
        /*
            r16 = this;
            r0 = r16
            q1.v0 r1 = r0.f9035h
            r2 = 0
            r1.f9168c = r2
            r4 = 0
            r1.f9169e = r4
            long r5 = android.os.SystemClock.elapsedRealtime()
            r1.d = r5
            android.os.Handler r5 = r1.f9166a
            java.lang.Runnable r6 = r1.f9167b
            r5.removeCallbacks(r6)
            q1.x r7 = r0.d
            if (r7 == 0) goto L32
            boolean r7 = r7.b()
            long r9 = r0.f9033e
            r1.a(r9, r7)
            j3.c r7 = new j3.c
            q1.x r9 = r0.d
            r9.a()
            q1.l0 r9 = r9.f9175b
            r7.<init>(r9)
            goto L33
        L32:
            r7 = 0
        L33:
            java.util.ArrayList r9 = r0.f9031b
            int r10 = r9.size()
            r11 = 0
        L3a:
            if (r11 >= r10) goto L8c
            java.lang.Object r12 = r9.get(r11)
            q1.j0 r12 = (q1.j0) r12
            q1.x r13 = r12.d
            if (r13 == 0) goto L58
            r13.a()
            q1.l0 r14 = r13.f9175b
            boolean r14 = r14.d()
            if (r14 == 0) goto L5a
            boolean r14 = r13.b()
            if (r14 == 0) goto L58
            goto L5a
        L58:
            r15 = r9
            goto L88
        L5a:
            boolean r14 = r13.b()
            r15 = r9
            long r8 = r12.f9025e
            r1.a(r8, r14)
            if (r7 != 0) goto L71
            j3.c r7 = new j3.c
            r13.a()
            q1.l0 r8 = r13.f9175b
            r7.<init>(r8)
            goto L88
        L71:
            r13.a()
            q1.l0 r8 = r13.f9175b
            if (r8 == 0) goto L80
            java.util.ArrayList r8 = r8.c()
            r7.a(r8)
            goto L88
        L80:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.String r2 = "selector must not be null"
            r1.<init>(r2)
            throw r1
        L88:
            int r11 = r11 + 1
            r9 = r15
            goto L3a
        L8c:
            boolean r8 = r1.f9169e
            if (r8 == 0) goto L99
            long r8 = r1.f9168c
            int r10 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r10 <= 0) goto L99
            r5.postDelayed(r6, r8)
        L99:
            boolean r1 = r1.f9169e
            if (r7 != 0) goto L9f
            r8 = 0
            goto La8
        L9f:
            q1.x r8 = new q1.x
            q1.l0 r2 = r7.b()
            r8.<init>(r2, r1)
        La8:
            q1.x r1 = r0.f9032c
            boolean r1 = java.util.Objects.equals(r1, r8)
            if (r1 != 0) goto Lbd
            r0.f9032c = r8
            androidx.mediarouter.media.MediaRouteProviderService r1 = r0.f9030a
            q1.e0 r1 = r1.d
            if (r1 == 0) goto Lbb
            r1.g(r8)
        Lbb:
            r1 = 1
            return r1
        Lbd:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: q1.k0.h():boolean");
    }

    public void a(Context context) {
    }
}
