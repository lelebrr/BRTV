package f0;

import android.content.res.Resources;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final l5.a f6760a;

    /* renamed from: b, reason: collision with root package name */
    public static final p.k f6761b;

    /* JADX WARN: Removed duplicated region for block: B:18:0x003f  */
    static {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 29
            if (r0 < r1) goto Le
            f0.l r0 = new f0.l
            r0.<init>()
            f0.g.f6760a = r0
            goto L46
        Le:
            r1 = 28
            if (r0 < r1) goto L1a
            f0.k r0 = new f0.k
            r0.<init>()
            f0.g.f6760a = r0
            goto L46
        L1a:
            r1 = 26
            if (r0 < r1) goto L26
            f0.j r0 = new f0.j
            r0.<init>()
            f0.g.f6760a = r0
            goto L46
        L26:
            r1 = 24
            if (r0 < r1) goto L3f
            java.lang.reflect.Method r0 = f0.i.f6769t
            if (r0 != 0) goto L35
            java.lang.String r1 = "TypefaceCompatApi24Impl"
            java.lang.String r2 = "Unable to collect necessary private methods.Fallback to legacy implementation."
            android.util.Log.w(r1, r2)
        L35:
            if (r0 == 0) goto L3f
            f0.i r0 = new f0.i
            r0.<init>()
            f0.g.f6760a = r0
            goto L46
        L3f:
            f0.h r0 = new f0.h
            r0.<init>()
            f0.g.f6760a = r0
        L46:
            p.k r0 = new p.k
            r1 = 16
            r0.<init>(r1)
            f0.g.f6761b = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.g.<clinit>():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Typeface a(android.content.Context r16, e0.e r17, android.content.res.Resources r18, int r19, java.lang.String r20, int r21, int r22, e0.b r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.g.a(android.content.Context, e0.e, android.content.res.Resources, int, java.lang.String, int, int, e0.b, boolean):android.graphics.Typeface");
    }

    public static String b(Resources resources, int i6, String str, int i10, int i11) {
        return resources.getResourcePackageName(i6) + '-' + str + '-' + i10 + '-' + i6 + '-' + i11;
    }
}
