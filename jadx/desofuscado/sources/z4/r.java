package z4;

import android.os.SystemClock;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.internal.cast.x0;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class r implements w5.a {

    /* renamed from: a, reason: collision with root package name */
    public final e f11631a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11632b;

    /* renamed from: c, reason: collision with root package name */
    public final b f11633c;
    public final long d;

    /* renamed from: e, reason: collision with root package name */
    public final long f11634e;

    public r(e eVar, int i6, b bVar, long j10, long j11) {
        this.f11631a = eVar;
        this.f11632b = i6;
        this.f11633c = bVar;
        this.d = j10;
        this.f11634e = j11;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0031 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0032 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.common.internal.ConnectionTelemetryConfiguration a(z4.n r4, com.google.android.gms.common.internal.a r5, int r6) {
        /*
            com.google.android.gms.common.internal.zzk r5 = r5.f4008v
            r0 = 0
            if (r5 != 0) goto L7
            r5 = r0
            goto L9
        L7:
            com.google.android.gms.common.internal.ConnectionTelemetryConfiguration r5 = r5.d
        L9:
            if (r5 == 0) goto L36
            boolean r1 = r5.f3958b
            if (r1 == 0) goto L36
            int[] r1 = r5.d
            r2 = 0
            if (r1 != 0) goto L24
            int[] r1 = r5.f
            if (r1 != 0) goto L19
            goto L2b
        L19:
            int r3 = r1.length
            if (r2 >= r3) goto L2b
            r3 = r1[r2]
            if (r3 != r6) goto L21
            goto L36
        L21:
            int r2 = r2 + 1
            goto L19
        L24:
            int r3 = r1.length
            if (r2 >= r3) goto L36
            r3 = r1[r2]
            if (r3 != r6) goto L33
        L2b:
            int r4 = r4.f11626n
            int r6 = r5.f3960e
            if (r4 >= r6) goto L32
            return r5
        L32:
            return r0
        L33:
            int r2 = r2 + 1
            goto L24
        L36:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: z4.r.a(z4.n, com.google.android.gms.common.internal.a, int):com.google.android.gms.common.internal.ConnectionTelemetryConfiguration");
    }

    @Override // w5.a
    public final void e(w5.g gVar) {
        int i6;
        int i10;
        int i11;
        int i12;
        int i13;
        long j10;
        long j11;
        int iElapsedRealtime;
        e eVar = this.f11631a;
        if (eVar.a()) {
            RootTelemetryConfiguration rootTelemetryConfiguration = (RootTelemetryConfiguration) b5.d.b().f3245a;
            if (rootTelemetryConfiguration == null || rootTelemetryConfiguration.f3983b) {
                n nVar = (n) eVar.f11605j.get(this.f11633c);
                if (nVar != null) {
                    y4.c cVar = nVar.d;
                    if (cVar instanceof com.google.android.gms.common.internal.a) {
                        com.google.android.gms.common.internal.a aVar = (com.google.android.gms.common.internal.a) cVar;
                        long j12 = this.d;
                        boolean z7 = j12 > 0;
                        int i14 = aVar.f4003q;
                        if (rootTelemetryConfiguration != null) {
                            z7 &= rootTelemetryConfiguration.f3984c;
                            boolean z10 = aVar.f4008v != null;
                            int i15 = rootTelemetryConfiguration.d;
                            i11 = rootTelemetryConfiguration.f3982a;
                            if (!z10 || aVar.e()) {
                                i6 = rootTelemetryConfiguration.f3985e;
                            } else {
                                ConnectionTelemetryConfiguration connectionTelemetryConfigurationA = a(nVar, aVar, this.f11632b);
                                if (connectionTelemetryConfigurationA == null) {
                                    return;
                                }
                                boolean z11 = connectionTelemetryConfigurationA.f3959c && j12 > 0;
                                i6 = connectionTelemetryConfigurationA.f3960e;
                                z7 = z11;
                            }
                            i10 = i15;
                        } else {
                            i6 = 100;
                            i10 = 5000;
                            i11 = 0;
                        }
                        if (gVar.e()) {
                            i12 = 0;
                            i13 = 0;
                        } else {
                            Exception excC = gVar.c();
                            if (excC instanceof y4.e) {
                                Status status = ((y4.e) excC).f11392a;
                                i12 = status.f3925a;
                                ConnectionResult connectionResult = status.d;
                                if (connectionResult != null) {
                                    i13 = connectionResult.f3906b;
                                }
                            } else {
                                i12 = 101;
                            }
                            i13 = -1;
                        }
                        if (z7) {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            j10 = j12;
                            iElapsedRealtime = (int) (SystemClock.elapsedRealtime() - this.f11634e);
                            j11 = jCurrentTimeMillis;
                        } else {
                            j10 = 0;
                            j11 = 0;
                            iElapsedRealtime = -1;
                        }
                        s sVar = new s(new MethodInvocation(this.f11632b, i12, i13, j10, j11, null, null, i14, iElapsedRealtime), i11, i10, i6);
                        x0 x0Var = eVar.f11608m;
                        x0Var.sendMessage(x0Var.obtainMessage(18, sVar));
                    }
                }
            }
        }
    }
}
