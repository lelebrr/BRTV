package g2;

import android.webkit.MimeTypeMap;
import java.io.IOException;
import java.util.Map;
import okhttp3.CacheControl;
import okhttp3.MediaType;
import okhttp3.Request;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import r9.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l implements g {
    public static final CacheControl f = new CacheControl.Builder().noCache().noStore().build();

    /* renamed from: g, reason: collision with root package name */
    public static final CacheControl f7085g = new CacheControl.Builder().noCache().onlyIfCached().build();

    /* renamed from: a, reason: collision with root package name */
    public final String f7086a;

    /* renamed from: b, reason: collision with root package name */
    public final m2.m f7087b;

    /* renamed from: c, reason: collision with root package name */
    public final w8.i f7088c;
    public final w8.i d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f7089e;

    public l(String str, m2.m mVar, w8.i iVar, w8.i iVar2, boolean z7) {
        this.f7086a = str;
        this.f7087b = mVar;
        this.f7088c = iVar;
        this.d = iVar2;
        this.f7089e = z7;
    }

    public static String d(String str, MediaType mediaType) {
        String strB;
        String string = mediaType != null ? mediaType.toString() : null;
        if ((string == null || n.V(string, "text/plain", false)) && (strB = r2.f.b(MimeTypeMap.getSingleton(), str)) != null) {
            return strB;
        }
        if (string == null) {
            return null;
        }
        int iB0 = r9.f.b0(string, ';', 0, false, 6);
        if (iB0 == -1) {
            return string;
        }
        String strSubstring = string.substring(0, iB0);
        j9.i.e(strSubstring, "substring(...)");
        return strSubstring;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x020b A[Catch: Exception -> 0x0208, TryCatch #2 {Exception -> 0x0208, blocks: (B:93:0x01d8, B:95:0x01e0, B:99:0x0204, B:103:0x020b, B:104:0x0210), top: B:115:0x01d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009f A[Catch: Exception -> 0x00d5, TRY_ENTER, TryCatch #3 {Exception -> 0x00d5, blocks: (B:105:0x0211, B:106:0x0214, B:67:0x0158, B:107:0x0215, B:108:0x021a, B:36:0x009f, B:38:0x00a9, B:47:0x00d9, B:49:0x00dd, B:53:0x00f6, B:63:0x013e, B:55:0x010c, B:57:0x0118, B:58:0x0121, B:41:0x00bf, B:43:0x00c7, B:60:0x0129, B:61:0x0130, B:62:0x0131), top: B:116:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0131 A[Catch: Exception -> 0x00d5, TryCatch #3 {Exception -> 0x00d5, blocks: (B:105:0x0211, B:106:0x0214, B:67:0x0158, B:107:0x0215, B:108:0x021a, B:36:0x009f, B:38:0x00a9, B:47:0x00d9, B:49:0x00dd, B:53:0x00f6, B:63:0x013e, B:55:0x010c, B:57:0x0118, B:58:0x0121, B:41:0x00bf, B:43:0x00c7, B:60:0x0129, B:61:0x0130, B:62:0x0131), top: B:116:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0151 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01e0 A[Catch: Exception -> 0x0208, TryCatch #2 {Exception -> 0x0208, blocks: (B:93:0x01d8, B:95:0x01e0, B:99:0x0204, B:103:0x020b, B:104:0x0210), top: B:115:0x01d8 }] */
    /* JADX WARN: Type inference failed for: r3v16, types: [java.lang.Object, w8.c] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object, w8.c] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object, w8.c] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    @Override // g2.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(a9.d r20) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 545
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g2.l.a(a9.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(okhttp3.Request r5, c9.c r6) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r6 instanceof g2.j
            if (r0 == 0) goto L13
            r0 = r6
            g2.j r0 = (g2.j) r0
            int r1 = r0.f7080c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7080c = r1
            goto L18
        L13:
            g2.j r0 = new g2.j
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f7078a
            b9.a r1 = b9.a.f3322a
            int r2 = r0.f7080c
            r3 = 1
            if (r2 == 0) goto L2f
            if (r2 != r3) goto L27
            o9.d.I(r6)
            goto L8b
        L27:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L2f:
            o9.d.I(r6)
            android.graphics.Bitmap$Config[] r6 = r2.f.f9467a
            android.os.Looper r6 = android.os.Looper.myLooper()
            android.os.Looper r2 = android.os.Looper.getMainLooper()
            boolean r6 = j9.i.a(r6, r2)
            w8.i r2 = r4.f7088c
            if (r6 == 0) goto L61
            m2.m r6 = r4.f7087b
            m2.b r6 = r6.f8241o
            boolean r6 = r6.f8161a
            if (r6 != 0) goto L5b
            java.lang.Object r6 = r2.getValue()
            okhttp3.Call$Factory r6 = (okhttp3.Call.Factory) r6
            okhttp3.Call r5 = r6.newCall(r5)
            okhttp3.Response r5 = r5.execute()
            goto L8e
        L5b:
            android.os.NetworkOnMainThreadException r5 = new android.os.NetworkOnMainThreadException
            r5.<init>()
            throw r5
        L61:
            java.lang.Object r6 = r2.getValue()
            okhttp3.Call$Factory r6 = (okhttp3.Call.Factory) r6
            okhttp3.Call r5 = r6.newCall(r5)
            r0.f7080c = r3
            t9.e r6 = new t9.e
            a9.d r0 = com.bumptech.glide.d.r(r0)
            r6.<init>(r0, r3)
            r6.n()
            r2.g r0 = new r2.g
            r0.<init>(r5, r6)
            r5.enqueue(r0)
            r6.p(r0)
            java.lang.Object r6 = r6.m()
            if (r6 != r1) goto L8b
            return r1
        L8b:
            r5 = r6
            okhttp3.Response r5 = (okhttp3.Response) r5
        L8e:
            boolean r6 = r5.isSuccessful()
            if (r6 != 0) goto Lca
            int r6 = r5.code()
            r0 = 304(0x130, float:4.26E-43)
            if (r6 == r0) goto Lca
            okhttp3.ResponseBody r6 = r5.body()
            if (r6 == 0) goto La5
            r2.f.a(r6)
        La5:
            androidx.fragment.app.q r6 = new androidx.fragment.app.q
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "HTTP "
            r0.<init>(r1)
            int r1 = r5.code()
            r0.append(r1)
            java.lang.String r1 = ": "
            r0.append(r1)
            java.lang.String r5 = r5.message()
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            r0 = 6
            r6.<init>(r5, r0)
            throw r6
        Lca:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: g2.l.b(okhttp3.Request, c9.c):java.lang.Object");
    }

    public final FileSystem c() {
        Object value = this.d.getValue();
        j9.i.c(value);
        return ((e2.k) ((e2.b) value)).f6480a;
    }

    public final Request e() {
        Request.Builder builderUrl = new Request.Builder().url(this.f7086a);
        m2.m mVar = this.f7087b;
        Request.Builder builderHeaders = builderUrl.headers(mVar.f8236j);
        for (Map.Entry entry : mVar.f8237k.f8251a.entrySet()) {
            Object key = entry.getKey();
            j9.i.d(key, "null cannot be cast to non-null type java.lang.Class<kotlin.Any>");
            builderHeaders.tag((Class) key, entry.getValue());
        }
        m2.b bVar = mVar.f8240n;
        boolean z7 = bVar.f8161a;
        boolean z10 = mVar.f8241o.f8161a;
        if (!z10 && z7) {
            builderHeaders.cacheControl(CacheControl.FORCE_CACHE);
        } else if (!z10 || z7) {
            if (!z10 && !z7) {
                builderHeaders.cacheControl(f7085g);
            }
        } else if (bVar.f8162b) {
            builderHeaders.cacheControl(CacheControl.FORCE_NETWORK);
        } else {
            builderHeaders.cacheControl(f);
        }
        return builderHeaders.build();
    }

    public final l2.c f(e2.j jVar) throws Throwable {
        Throwable th;
        l2.c cVar;
        try {
            FileSystem fileSystemC = c();
            e2.e eVar = jVar.f6479a;
            if (eVar.f6459b) {
                throw new IllegalStateException("snapshot is closed");
            }
            BufferedSource bufferedSourceBuffer = Okio.buffer(fileSystemC.source((Path) eVar.f6458a.f6453c.get(0)));
            try {
                cVar = new l2.c(bufferedSourceBuffer);
                try {
                    bufferedSourceBuffer.close();
                    th = null;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                if (bufferedSourceBuffer != null) {
                    try {
                        bufferedSourceBuffer.close();
                    } catch (Throwable th4) {
                        l5.a.a(th3, th4);
                    }
                }
                th = th3;
                cVar = null;
            }
            if (th != null) {
                throw th;
            }
            j9.i.c(cVar);
            return cVar;
        } catch (IOException unused) {
            return null;
        }
    }

    public final d2.m g(e2.j jVar) {
        e2.e eVar = jVar.f6479a;
        if (eVar.f6459b) {
            throw new IllegalStateException("snapshot is closed");
        }
        Path path = (Path) eVar.f6458a.f6453c.get(1);
        FileSystem fileSystemC = c();
        String str = this.f7087b.f8235i;
        if (str == null) {
            str = this.f7086a;
        }
        return new d2.m(path, fileSystemC, str, jVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final e2.j h(e2.j r5, okhttp3.Request r6, okhttp3.Response r7, l2.c r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 385
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g2.l.h(e2.j, okhttp3.Request, okhttp3.Response, l2.c):e2.j");
    }
}
