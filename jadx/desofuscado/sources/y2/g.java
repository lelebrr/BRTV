package y2;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import r3.n;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g implements a {

    /* renamed from: j, reason: collision with root package name */
    public static final Bitmap.Config f11358j = Bitmap.Config.ARGB_8888;

    /* renamed from: a, reason: collision with root package name */
    public final k f11359a;

    /* renamed from: b, reason: collision with root package name */
    public final Set f11360b;

    /* renamed from: c, reason: collision with root package name */
    public final q.b f11361c;
    public final long d;

    /* renamed from: e, reason: collision with root package name */
    public long f11362e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f11363g;

    /* renamed from: h, reason: collision with root package name */
    public int f11364h;

    /* renamed from: i, reason: collision with root package name */
    public int f11365i;

    public g(long j10) {
        k kVar = new k();
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i6 = Build.VERSION.SDK_INT;
        hashSet.add(null);
        if (i6 >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        Set setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        this.d = j10;
        this.f11359a = kVar;
        this.f11360b = setUnmodifiableSet;
        this.f11361c = new q.b(11);
    }

    @Override // y2.a
    public final void a(int i6) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i6);
        }
        if (i6 >= 40 || (Build.VERSION.SDK_INT >= 23 && i6 >= 20)) {
            j();
        } else if (i6 >= 20 || i6 == 15) {
            g(this.d / 2);
        }
    }

    public final void b() {
        Log.v("LruBitmapPool", "Hits=" + this.f + ", misses=" + this.f11363g + ", puts=" + this.f11364h + ", evictions=" + this.f11365i + ", currentSize=" + this.f11362e + ", maxSize=" + this.d + "\nStrategy=" + this.f11359a);
    }

    @Override // y2.a
    public final Bitmap c(int i6, int i10, Bitmap.Config config) {
        Bitmap bitmapF = f(i6, i10, config);
        if (bitmapF != null) {
            return bitmapF;
        }
        if (config == null) {
            config = f11358j;
        }
        return Bitmap.createBitmap(i6, i10, config);
    }

    @Override // y2.a
    public final Bitmap d(int i6, int i10, Bitmap.Config config) {
        Bitmap bitmapF = f(i6, i10, config);
        if (bitmapF != null) {
            bitmapF.eraseColor(0);
            return bitmapF;
        }
        if (config == null) {
            config = f11358j;
        }
        return Bitmap.createBitmap(i6, i10, config);
    }

    @Override // y2.a
    public final synchronized void e(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable()) {
                this.f11359a.getClass();
                if (n.c(bitmap) <= this.d && this.f11360b.contains(bitmap.getConfig())) {
                    this.f11359a.getClass();
                    int iC = n.c(bitmap);
                    this.f11359a.e(bitmap);
                    this.f11361c.getClass();
                    this.f11364h++;
                    this.f11362e += iC;
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        StringBuilder sb = new StringBuilder("Put bitmap in pool=");
                        this.f11359a.getClass();
                        sb.append(k.c(n.c(bitmap), bitmap.getConfig()));
                        Log.v("LruBitmapPool", sb.toString());
                    }
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        b();
                    }
                    g(this.d);
                    return;
                }
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                StringBuilder sb2 = new StringBuilder("Reject bitmap from pool, bitmap: ");
                this.f11359a.getClass();
                sb2.append(k.c(n.c(bitmap), bitmap.getConfig()));
                sb2.append(", is mutable: ");
                sb2.append(bitmap.isMutable());
                sb2.append(", is allowed config: ");
                sb2.append(this.f11360b.contains(bitmap.getConfig()));
                Log.v("LruBitmapPool", sb2.toString());
            }
            bitmap.recycle();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized Bitmap f(int i6, int i10, Bitmap.Config config) {
        Bitmap bitmapB;
        try {
            if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
            }
            bitmapB = this.f11359a.b(i6, i10, config != null ? config : f11358j);
            if (bitmapB == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    StringBuilder sb = new StringBuilder("Missing bitmap=");
                    this.f11359a.getClass();
                    sb.append(k.c(n.d(config) * i6 * i10, config));
                    Log.d("LruBitmapPool", sb.toString());
                }
                this.f11363g++;
            } else {
                this.f++;
                long j10 = this.f11362e;
                this.f11359a.getClass();
                this.f11362e = j10 - n.c(bitmapB);
                this.f11361c.getClass();
                bitmapB.setHasAlpha(true);
                bitmapB.setPremultiplied(true);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                StringBuilder sb2 = new StringBuilder("Get bitmap=");
                this.f11359a.getClass();
                sb2.append(k.c(n.d(config) * i6 * i10, config));
                Log.v("LruBitmapPool", sb2.toString());
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return bitmapB;
    }

    public final synchronized void g(long j10) {
        while (this.f11362e > j10) {
            try {
                k kVar = this.f11359a;
                Bitmap bitmap = (Bitmap) kVar.f11374b.r();
                if (bitmap != null) {
                    kVar.a(Integer.valueOf(n.c(bitmap)), bitmap);
                }
                if (bitmap == null) {
                    if (Log.isLoggable("LruBitmapPool", 5)) {
                        Log.w("LruBitmapPool", "Size mismatch, resetting");
                        b();
                    }
                    this.f11362e = 0L;
                    return;
                }
                this.f11361c.getClass();
                long j11 = this.f11362e;
                this.f11359a.getClass();
                this.f11362e = j11 - n.c(bitmap);
                this.f11365i++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Evicting bitmap=");
                    this.f11359a.getClass();
                    sb.append(k.c(n.c(bitmap), bitmap.getConfig()));
                    Log.d("LruBitmapPool", sb.toString());
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    b();
                }
                bitmap.recycle();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // y2.a
    public final void j() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        g(0L);
    }
}
