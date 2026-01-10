package z4;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseIntArray;
import androidx.media3.common.C;
import androidx.media3.exoplayer.Renderer;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.internal.cast.x0;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class e implements Handler.Callback {

    /* renamed from: o, reason: collision with root package name */
    public static final Status f11594o = new Status(4, "Sign-out occurred while this API call was in progress.", null, null);

    /* renamed from: p, reason: collision with root package name */
    public static final Status f11595p = new Status(4, "The user must be signed in to make this API call.", null, null);

    /* renamed from: q, reason: collision with root package name */
    public static final Object f11596q = new Object();

    /* renamed from: r, reason: collision with root package name */
    public static e f11597r;

    /* renamed from: a, reason: collision with root package name */
    public long f11598a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f11599b;

    /* renamed from: c, reason: collision with root package name */
    public TelemetryData f11600c;
    public d5.b d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f11601e;
    public final x4.b f;

    /* renamed from: g, reason: collision with root package name */
    public final a7.f f11602g;

    /* renamed from: h, reason: collision with root package name */
    public final AtomicInteger f11603h;

    /* renamed from: i, reason: collision with root package name */
    public final AtomicInteger f11604i;

    /* renamed from: j, reason: collision with root package name */
    public final ConcurrentHashMap f11605j;

    /* renamed from: k, reason: collision with root package name */
    public final p.f f11606k;

    /* renamed from: l, reason: collision with root package name */
    public final p.f f11607l;

    /* renamed from: m, reason: collision with root package name */
    public final x0 f11608m;

    /* renamed from: n, reason: collision with root package name */
    public volatile boolean f11609n;

    public e(Context context, Looper looper) {
        x4.b bVar = x4.b.d;
        this.f11598a = Renderer.DEFAULT_DURATION_TO_PROGRESS_US;
        this.f11599b = false;
        this.f11603h = new AtomicInteger(1);
        this.f11604i = new AtomicInteger(0);
        this.f11605j = new ConcurrentHashMap(5, 0.75f, 1);
        this.f11606k = new p.f(0);
        this.f11607l = new p.f(0);
        this.f11609n = true;
        this.f11601e = context;
        x0 x0Var = new x0(looper, this, 4);
        Looper.getMainLooper();
        this.f11608m = x0Var;
        this.f = bVar;
        this.f11602g = new a7.f(10);
        PackageManager packageManager = context.getPackageManager();
        if (o9.e.d == null) {
            o9.e.d = Boolean.valueOf(u7.d.t() && packageManager.hasSystemFeature("android.hardware.type.automotive"));
        }
        if (o9.e.d.booleanValue()) {
            this.f11609n = false;
        }
        x0Var.sendMessage(x0Var.obtainMessage(6));
    }

    public static Status c(b bVar, ConnectionResult connectionResult) {
        return new Status(17, "API: " + ((String) bVar.f11588b.f8017c) + " is not available on this device. Connection failed with: " + String.valueOf(connectionResult), connectionResult.f3907c, connectionResult);
    }

    public static e f(Context context) {
        e eVar;
        synchronized (f11596q) {
            try {
                if (f11597r == null) {
                    Looper looper = b5.v.a().getLooper();
                    Context applicationContext = context.getApplicationContext();
                    Object obj = x4.b.f10997c;
                    f11597r = new e(applicationContext, looper);
                }
                eVar = f11597r;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    public final boolean a() {
        if (this.f11599b) {
            return false;
        }
        RootTelemetryConfiguration rootTelemetryConfiguration = (RootTelemetryConfiguration) b5.d.b().f3245a;
        if (rootTelemetryConfiguration != null && !rootTelemetryConfiguration.f3983b) {
            return false;
        }
        int i6 = ((SparseIntArray) this.f11602g.f169b).get(203400000, -1);
        return i6 == -1 || i6 == 0;
    }

    public final boolean b(ConnectionResult connectionResult, int i6) throws Resources.NotFoundException {
        PendingIntent activity;
        boolean zBooleanValue;
        PendingIntent pendingIntent;
        Boolean bool;
        x4.b bVar = this.f;
        Context context = this.f11601e;
        bVar.getClass();
        synchronized (l5.a.class) {
            Context applicationContext = context.getApplicationContext();
            Context context2 = l5.a.f7970a;
            activity = null;
            if (context2 == null || (bool = l5.a.f7971b) == null || context2 != applicationContext) {
                l5.a.f7971b = null;
                if (u7.d.t()) {
                    l5.a.f7971b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                } else {
                    try {
                        context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                        l5.a.f7971b = Boolean.TRUE;
                    } catch (ClassNotFoundException unused) {
                        l5.a.f7971b = Boolean.FALSE;
                    }
                }
                l5.a.f7970a = applicationContext;
                zBooleanValue = l5.a.f7971b.booleanValue();
            } else {
                zBooleanValue = bool.booleanValue();
            }
        }
        if (zBooleanValue) {
            return false;
        }
        int i10 = connectionResult.f3906b;
        if (i10 == 0 || (pendingIntent = connectionResult.f3907c) == null) {
            Intent intentA = bVar.a(context, i10, null);
            if (intentA != null) {
                activity = PendingIntent.getActivity(context, 0, intentA, Build.VERSION.SDK_INT >= 23 ? 201326592 : C.BUFFER_FLAG_FIRST_SAMPLE);
            }
            pendingIntent = activity;
        }
        if (pendingIntent == null) {
            return false;
        }
        int i11 = connectionResult.f3906b;
        int i12 = GoogleApiActivity.f3919b;
        Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
        intent.putExtra("pending_intent", pendingIntent);
        intent.putExtra("failing_client_id", i6);
        intent.putExtra("notify_manager", true);
        bVar.f(context, i11, PendingIntent.getActivity(context, 0, intent, q5.c.f9239a | C.BUFFER_FLAG_FIRST_SAMPLE));
        return true;
    }

    public final n d(y4.g gVar) {
        ConcurrentHashMap concurrentHashMap = this.f11605j;
        b bVar = gVar.f11399e;
        n nVar = (n) concurrentHashMap.get(bVar);
        if (nVar == null) {
            nVar = new n(this, gVar);
            concurrentHashMap.put(bVar, nVar);
        }
        if (nVar.d.k()) {
            this.f11607l.add(bVar);
        }
        nVar.m();
        return nVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void e(w5.d r9, int r10, y4.g r11) {
        /*
            r8 = this;
            if (r10 == 0) goto L84
            z4.b r3 = r11.f11399e
            boolean r11 = r8.a()
            if (r11 != 0) goto Lb
            goto L47
        Lb:
            b5.d r11 = b5.d.b()
            java.lang.Object r11 = r11.f3245a
            com.google.android.gms.common.internal.RootTelemetryConfiguration r11 = (com.google.android.gms.common.internal.RootTelemetryConfiguration) r11
            r0 = 1
            if (r11 == 0) goto L49
            boolean r1 = r11.f3983b
            if (r1 == 0) goto L47
            java.util.concurrent.ConcurrentHashMap r1 = r8.f11605j
            java.lang.Object r1 = r1.get(r3)
            z4.n r1 = (z4.n) r1
            if (r1 == 0) goto L44
            y4.c r2 = r1.d
            boolean r4 = r2 instanceof com.google.android.gms.common.internal.a
            if (r4 == 0) goto L47
            com.google.android.gms.common.internal.a r2 = (com.google.android.gms.common.internal.a) r2
            com.google.android.gms.common.internal.zzk r4 = r2.f4008v
            if (r4 == 0) goto L44
            boolean r4 = r2.e()
            if (r4 != 0) goto L44
            com.google.android.gms.common.internal.ConnectionTelemetryConfiguration r11 = z4.r.a(r1, r2, r10)
            if (r11 == 0) goto L47
            int r2 = r1.f11626n
            int r2 = r2 + r0
            r1.f11626n = r2
            boolean r0 = r11.f3959c
            goto L49
        L44:
            boolean r0 = r11.f3984c
            goto L49
        L47:
            r10 = 0
            goto L65
        L49:
            z4.r r11 = new z4.r
            r1 = 0
            if (r0 == 0) goto L54
            long r4 = java.lang.System.currentTimeMillis()
            goto L55
        L54:
            r4 = r1
        L55:
            if (r0 == 0) goto L5d
            long r0 = android.os.SystemClock.elapsedRealtime()
            r6 = r0
            goto L5e
        L5d:
            r6 = r1
        L5e:
            r0 = r11
            r1 = r8
            r2 = r10
            r0.<init>(r1, r2, r3, r4, r6)
            r10 = r11
        L65:
            if (r10 == 0) goto L84
            w5.g r9 = r9.f10815a
            com.google.android.gms.internal.cast.x0 r11 = r8.f11608m
            r11.getClass()
            a4.r r0 = new a4.r
            r1 = 3
            r0.<init>(r1, r11)
            r9.getClass()
            w5.f r11 = new w5.f
            r11.<init>(r0, r10)
            k3.t r10 = r9.f10821b
            r10.h(r11)
            r9.g()
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: z4.e.e(w5.d, int, y4.g):void");
    }

    public final void g(ConnectionResult connectionResult, int i6) {
        if (b(connectionResult, i6)) {
            return;
        }
        x0 x0Var = this.f11608m;
        x0Var.sendMessage(x0Var.obtainMessage(5, i6, 0, connectionResult));
    }

    /* JADX WARN: Removed duplicated region for block: B:155:0x03bc  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean handleMessage(android.os.Message r13) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 1284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: z4.e.handleMessage(android.os.Message):boolean");
    }
}
