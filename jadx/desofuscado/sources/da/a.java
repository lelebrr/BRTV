package da;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f6337a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f6338b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f6339c;

    public a(c cVar, String str, String str2) {
        this.f6339c = cVar;
        this.f6337a = str;
        this.f6338b = str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x004e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() throws java.lang.Throwable {
        /*
            r7 = this;
            da.c r0 = r7.f6339c
            da.b r1 = r0.f6346b
            java.lang.String r2 = r7.f6337a
            java.io.File r1 = r1.c(r2)
            r2 = 0
            java.io.BufferedWriter r3 = new java.io.BufferedWriter     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L36
            java.io.FileWriter r4 = new java.io.FileWriter     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L36
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L36
            r5 = 1024(0x400, float:1.435E-42)
            r3.<init>(r4, r5)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L36
            java.lang.String r2 = r7.f6338b     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L2f
            r3.write(r2)     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L2f
            r3.flush()     // Catch: java.io.IOException -> L23
            r3.close()     // Catch: java.io.IOException -> L23
            goto L27
        L23:
            r2 = move-exception
            r2.printStackTrace()
        L27:
            da.b r0 = r0.f6346b
            da.b.a(r0, r1)
            goto L4b
        L2d:
            r2 = move-exception
            goto L4c
        L2f:
            r2 = move-exception
            goto L3a
        L31:
            r3 = move-exception
            r6 = r3
            r3 = r2
            r2 = r6
            goto L4c
        L36:
            r3 = move-exception
            r6 = r3
            r3 = r2
            r2 = r6
        L3a:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L2d
            if (r3 == 0) goto L27
            r3.flush()     // Catch: java.io.IOException -> L46
            r3.close()     // Catch: java.io.IOException -> L46
            goto L27
        L46:
            r2 = move-exception
            r2.printStackTrace()
            goto L27
        L4b:
            return
        L4c:
            if (r3 == 0) goto L59
            r3.flush()     // Catch: java.io.IOException -> L55
            r3.close()     // Catch: java.io.IOException -> L55
            goto L59
        L55:
            r3 = move-exception
            r3.printStackTrace()
        L59:
            da.b r0 = r0.f6346b
            da.b.a(r0, r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: da.a.run():void");
    }
}
