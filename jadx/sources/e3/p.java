package e3;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import androidx.media3.common.C;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p {
    public static final v2.g f = v2.g.a(v2.a.f10658c, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat");

    /* renamed from: g, reason: collision with root package name */
    public static final v2.g f6518g = new v2.g("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", null, v2.g.f10661e);

    /* renamed from: h, reason: collision with root package name */
    public static final v2.g f6519h;

    /* renamed from: i, reason: collision with root package name */
    public static final v2.g f6520i;

    /* renamed from: j, reason: collision with root package name */
    public static final Set f6521j;

    /* renamed from: k, reason: collision with root package name */
    public static final x4.e f6522k;

    /* renamed from: l, reason: collision with root package name */
    public static final ArrayDeque f6523l;

    /* renamed from: a, reason: collision with root package name */
    public final y2.a f6524a;

    /* renamed from: b, reason: collision with root package name */
    public final DisplayMetrics f6525b;

    /* renamed from: c, reason: collision with root package name */
    public final y2.f f6526c;
    public final ArrayList d;

    /* renamed from: e, reason: collision with root package name */
    public final v f6527e = v.a();

    static {
        n nVar = n.f6512b;
        Boolean bool = Boolean.FALSE;
        f6519h = v2.g.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize");
        f6520i = v2.g.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode");
        f6521j = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f6522k = new x4.e(8);
        Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser$ImageType.JPEG, ImageHeaderParser$ImageType.PNG_A, ImageHeaderParser$ImageType.PNG));
        char[] cArr = r3.n.f9510a;
        f6523l = new ArrayDeque(0);
    }

    public p(ArrayList arrayList, DisplayMetrics displayMetrics, y2.a aVar, y2.f fVar) {
        this.d = arrayList;
        r3.f.c(displayMetrics, "Argument must not be null");
        this.f6525b = displayMetrics;
        r3.f.c(aVar, "Argument must not be null");
        this.f6524a = aVar;
        r3.f.c(fVar, "Argument must not be null");
        this.f6526c = fVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:?, code lost:
    
        throw r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap c(a1.b r9, android.graphics.BitmapFactory.Options r10, e3.o r11, y2.a r12) {
        /*
            java.lang.String r0 = "Downsampler"
            boolean r1 = r10.inJustDecodeBounds
            if (r1 != 0) goto L22
            r11.k()
            int r1 = r9.f46a
            switch(r1) {
                case 16: goto L22;
                case 17: goto Lf;
                default: goto Le;
            }
        Le:
            goto L22
        Lf:
            java.lang.Object r1 = r9.f47b
            com.bumptech.glide.load.data.i r1 = (com.bumptech.glide.load.data.i) r1
            java.lang.Object r1 = r1.f3555b
            e3.w r1 = (e3.w) r1
            monitor-enter(r1)
            byte[] r2 = r1.f6538a     // Catch: java.lang.Throwable -> L1f
            int r2 = r2.length     // Catch: java.lang.Throwable -> L1f
            r1.f6540c = r2     // Catch: java.lang.Throwable -> L1f
            monitor-exit(r1)
            goto L22
        L1f:
            r9 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1f
            throw r9
        L22:
            int r1 = r10.outWidth
            int r2 = r10.outHeight
            java.lang.String r3 = r10.outMimeType
            java.util.concurrent.locks.Lock r4 = e3.z.f6545b
            r4.lock()
            android.graphics.Bitmap r9 = r9.i(r10)     // Catch: java.lang.Throwable -> L35 java.lang.IllegalArgumentException -> L37
            r4.unlock()
            return r9
        L35:
            r9 = move-exception
            goto L7e
        L37:
            r4 = move-exception
            java.io.IOException r5 = new java.io.IOException     // Catch: java.lang.Throwable -> L35
            java.lang.String r6 = "Exception decoding bitmap, outWidth: "
            java.lang.String r7 = ", outHeight: "
            java.lang.String r8 = ", outMimeType: "
            java.lang.StringBuilder r1 = a.e.v(r6, r1, r7, r2, r8)     // Catch: java.lang.Throwable -> L35
            r1.append(r3)     // Catch: java.lang.Throwable -> L35
            java.lang.String r2 = ", inBitmap: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L35
            android.graphics.Bitmap r2 = r10.inBitmap     // Catch: java.lang.Throwable -> L35
            java.lang.String r2 = d(r2)     // Catch: java.lang.Throwable -> L35
            r1.append(r2)     // Catch: java.lang.Throwable -> L35
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L35
            r5.<init>(r1, r4)     // Catch: java.lang.Throwable -> L35
            r1 = 3
            boolean r1 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L35
            if (r1 == 0) goto L68
            java.lang.String r1 = "Failed to decode with inBitmap, trying again without Bitmap re-use"
            android.util.Log.d(r0, r1, r5)     // Catch: java.lang.Throwable -> L35
        L68:
            android.graphics.Bitmap r0 = r10.inBitmap     // Catch: java.lang.Throwable -> L35
            if (r0 == 0) goto L7d
            r12.e(r0)     // Catch: java.lang.Throwable -> L35 java.io.IOException -> L7c
            r0 = 0
            r10.inBitmap = r0     // Catch: java.lang.Throwable -> L35 java.io.IOException -> L7c
            android.graphics.Bitmap r9 = c(r9, r10, r11, r12)     // Catch: java.lang.Throwable -> L35 java.io.IOException -> L7c
            java.util.concurrent.locks.Lock r10 = e3.z.f6545b
            r10.unlock()
            return r9
        L7c:
            throw r5     // Catch: java.lang.Throwable -> L35
        L7d:
            throw r5     // Catch: java.lang.Throwable -> L35
        L7e:
            java.util.concurrent.locks.Lock r10 = e3.z.f6545b
            r10.unlock()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: e3.p.c(a1.b, android.graphics.BitmapFactory$Options, e3.o, y2.a):android.graphics.Bitmap");
    }

    public static String d(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    public static void e(BitmapFactory.Options options) {
        f(options);
        ArrayDeque arrayDeque = f6523l;
        synchronized (arrayDeque) {
            arrayDeque.offer(options);
        }
    }

    public static void f(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public final d a(a1.b bVar, int i6, int i10, v2.h hVar, o oVar) {
        BitmapFactory.Options options;
        BitmapFactory.Options options2;
        byte[] bArr = (byte[]) this.f6526c.d(C.DEFAULT_BUFFER_SEGMENT_SIZE, byte[].class);
        synchronized (p.class) {
            ArrayDeque arrayDeque = f6523l;
            synchronized (arrayDeque) {
                options = (BitmapFactory.Options) arrayDeque.poll();
            }
            if (options == null) {
                options = new BitmapFactory.Options();
                f(options);
            }
            options2 = options;
        }
        options2.inTempStorage = bArr;
        v2.a aVar = (v2.a) hVar.c(f);
        v2.i iVar = (v2.i) hVar.c(f6518g);
        n nVar = (n) hVar.c(n.f6515g);
        boolean zBooleanValue = ((Boolean) hVar.c(f6519h)).booleanValue();
        v2.g gVar = f6520i;
        try {
            return d.b(b(bVar, options2, nVar, aVar, iVar, hVar.c(gVar) != null && ((Boolean) hVar.c(gVar)).booleanValue(), i6, i10, zBooleanValue, oVar), this.f6524a);
        } finally {
            e(options2);
            this.f6526c.h(bArr);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0425 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x046e  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04ad  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x04b7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x04c9  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x04cc  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x04d8  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0526  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x05ac  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0648 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.Bitmap b(a1.b r40, android.graphics.BitmapFactory.Options r41, e3.n r42, v2.a r43, v2.i r44, boolean r45, int r46, int r47, boolean r48, e3.o r49) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1688
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: e3.p.b(a1.b, android.graphics.BitmapFactory$Options, e3.n, v2.a, v2.i, boolean, int, int, boolean, e3.o):android.graphics.Bitmap");
    }
}
