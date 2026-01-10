package i3;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import x2.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements v2.j {
    public static final u6.e f = new u6.e(14);

    /* renamed from: g, reason: collision with root package name */
    public static final a f7301g = new a(0);

    /* renamed from: a, reason: collision with root package name */
    public final Context f7302a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f7303b;

    /* renamed from: c, reason: collision with root package name */
    public final a f7304c;
    public final u6.e d;

    /* renamed from: e, reason: collision with root package name */
    public final a7.f f7305e;

    public b(Context context, ArrayList arrayList, y2.a aVar, y2.f fVar) {
        u6.e eVar = f;
        this.f7302a = context.getApplicationContext();
        this.f7303b = arrayList;
        this.d = eVar;
        this.f7305e = new a7.f(22, aVar, fVar, false);
        this.f7304c = f7301g;
    }

    public static int d(t2.b bVar, int i6, int i10) {
        int iMin = Math.min(bVar.f10104g / i10, bVar.f / i6);
        int iMax = Math.max(1, iMin == 0 ? 0 : Integer.highestOneBit(iMin));
        if (Log.isLoggable("BufferGifDecoder", 2) && iMax > 1) {
            StringBuilder sbV = a.e.v("Downsampling GIF, sampleSize: ", iMax, ", target dimens: [", i6, "x");
            sbV.append(i10);
            sbV.append("], actual dimens: [");
            sbV.append(bVar.f);
            sbV.append("x");
            sbV.append(bVar.f10104g);
            sbV.append("]");
            Log.v("BufferGifDecoder", sbV.toString());
        }
        return iMax;
    }

    @Override // v2.j
    public final x a(Object obj, int i6, int i10, v2.h hVar) {
        t2.c cVar;
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        a aVar = this.f7304c;
        synchronized (aVar) {
            try {
                t2.c cVar2 = (t2.c) aVar.f7300a.poll();
                if (cVar2 == null) {
                    cVar2 = new t2.c();
                }
                cVar = cVar2;
                cVar.f10110b = null;
                Arrays.fill(cVar.f10109a, (byte) 0);
                cVar.f10111c = new t2.b();
                cVar.d = 0;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                cVar.f10110b = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                cVar.f10110b.order(ByteOrder.LITTLE_ENDIAN);
            } catch (Throwable th) {
                throw th;
            }
        }
        try {
            return c(byteBuffer, i6, i10, cVar, hVar);
        } finally {
            this.f7304c.c(cVar);
        }
    }

    @Override // v2.j
    public final boolean b(Object obj, v2.h hVar) {
        return !((Boolean) hVar.c(j.f7336b)).booleanValue() && u7.d.q(this.f7303b, (ByteBuffer) obj) == ImageHeaderParser$ImageType.GIF;
    }

    public final g3.c c(ByteBuffer byteBuffer, int i6, int i10, t2.c cVar, v2.h hVar) throws Throwable {
        Bitmap.Config config;
        int i11 = r3.h.f9499b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        int i12 = 2;
        try {
            t2.b bVarB = cVar.b();
            if (bVarB.f10102c > 0 && bVarB.f10101b == 0) {
                if (hVar.c(j.f7335a) == v2.a.f10657b) {
                    try {
                        config = Bitmap.Config.RGB_565;
                    } catch (Throwable th) {
                        th = th;
                        if (Log.isLoggable("BufferGifDecoder", i12)) {
                            Log.v("BufferGifDecoder", "Decoded GIF from stream in " + r3.h.a(jElapsedRealtimeNanos));
                        }
                        throw th;
                    }
                } else {
                    config = Bitmap.Config.ARGB_8888;
                }
                int iD = d(bVarB, i6, i10);
                u6.e eVar = this.d;
                a7.f fVar = this.f7305e;
                eVar.getClass();
                t2.d dVar = new t2.d(fVar, bVarB, byteBuffer, iD);
                dVar.c(config);
                dVar.f10120k = (dVar.f10120k + 1) % dVar.f10121l.f10102c;
                Bitmap bitmapB = dVar.b();
                if (bitmapB == null) {
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        Log.v("BufferGifDecoder", "Decoded GIF from stream in " + r3.h.a(jElapsedRealtimeNanos));
                    }
                    return null;
                }
                g3.c cVar2 = new g3.c(new d(new c(0, new i(com.bumptech.glide.b.a(this.f7302a), dVar, i6, i10, bitmapB))), 1);
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    Log.v("BufferGifDecoder", "Decoded GIF from stream in " + r3.h.a(jElapsedRealtimeNanos));
                }
                return cVar2;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + r3.h.a(jElapsedRealtimeNanos));
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            i12 = 2;
        }
    }
}
