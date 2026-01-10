package androidx.appcompat.app;

import android.content.Context;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f336a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f337b;

    public /* synthetic */ n(Context context, int i6) {
        this.f336a = i6;
        this.f337b = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009c  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() throws java.lang.Throwable {
        /*
            r11 = this;
            int r0 = r11.f336a
            switch(r0) {
                case 0: goto L30;
                case 1: goto L13;
                default: goto L5;
            }
        L5:
            androidx.media3.exoplayer.hls.offline.a r0 = new androidx.media3.exoplayer.hls.offline.a
            r0.<init>()
            q.b r1 = t1.d.f10073a
            r2 = 0
            android.content.Context r3 = r11.f337b
            t1.d.s(r3, r0, r1, r2)
            return
        L13:
            java.util.concurrent.ThreadPoolExecutor r0 = new java.util.concurrent.ThreadPoolExecutor
            java.util.concurrent.TimeUnit r9 = java.util.concurrent.TimeUnit.MILLISECONDS
            java.util.concurrent.LinkedBlockingQueue r10 = new java.util.concurrent.LinkedBlockingQueue
            r10.<init>()
            r6 = 1
            r7 = 0
            r5 = 0
            r4 = r0
            r4.<init>(r5, r6, r7, r9, r10)
            androidx.appcompat.app.n r1 = new androidx.appcompat.app.n
            android.content.Context r2 = r11.f337b
            r3 = 2
            r1.<init>(r2, r3)
            r0.execute(r1)
            return
        L30:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 33
            r2 = 1
            if (r0 < r1) goto Lb4
            android.content.ComponentName r0 = new android.content.ComponentName
            android.content.Context r1 = r11.f337b
            java.lang.String r3 = "androidx.appcompat.app.AppLocalesMetadataHolderService"
            r0.<init>(r1, r3)
            android.content.pm.PackageManager r3 = r1.getPackageManager()
            int r3 = r3.getComponentEnabledSetting(r0)
            if (r3 == r2) goto Lb4
            boolean r3 = j0.b.a()
            java.lang.String r4 = "locale"
            if (r3 == 0) goto L8d
            p.f r3 = androidx.appcompat.app.q.f345g
            r3.getClass()
            p.a r5 = new p.a
            r5.<init>(r3)
        L5c:
            boolean r3 = r5.hasNext()
            if (r3 == 0) goto L7b
            java.lang.Object r3 = r5.next()
            java.lang.ref.WeakReference r3 = (java.lang.ref.WeakReference) r3
            java.lang.Object r3 = r3.get()
            androidx.appcompat.app.q r3 = (androidx.appcompat.app.q) r3
            if (r3 == 0) goto L5c
            androidx.appcompat.app.g0 r3 = (androidx.appcompat.app.g0) r3
            android.content.Context r3 = r3.f274k
            if (r3 == 0) goto L5c
            java.lang.Object r3 = r3.getSystemService(r4)
            goto L7c
        L7b:
            r3 = 0
        L7c:
            if (r3 == 0) goto L92
            android.os.LocaleList r3 = androidx.appcompat.app.p.a(r3)
            j0.i r5 = new j0.i
            j0.l r6 = new j0.l
            r6.<init>(r3)
            r5.<init>(r6)
            goto L94
        L8d:
            j0.i r5 = androidx.appcompat.app.q.f343c
            if (r5 == 0) goto L92
            goto L94
        L92:
            j0.i r5 = j0.i.f7419b
        L94:
            j0.k r3 = r5.f7420a
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto Lad
            java.lang.String r3 = n5.d.L(r1)
            java.lang.Object r4 = r1.getSystemService(r4)
            if (r4 == 0) goto Lad
            android.os.LocaleList r3 = androidx.appcompat.app.o.a(r3)
            androidx.appcompat.app.p.b(r4, r3)
        Lad:
            android.content.pm.PackageManager r1 = r1.getPackageManager()
            r1.setComponentEnabledSetting(r0, r2, r2)
        Lb4:
            androidx.appcompat.app.q.f = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.n.run():void");
    }
}
