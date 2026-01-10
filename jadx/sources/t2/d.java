package t2;

import a7.f;
import android.graphics.Bitmap;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public int[] f10112a;

    /* renamed from: c, reason: collision with root package name */
    public final f f10114c;
    public ByteBuffer d;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f10115e;
    public short[] f;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f10116g;

    /* renamed from: h, reason: collision with root package name */
    public byte[] f10117h;

    /* renamed from: i, reason: collision with root package name */
    public byte[] f10118i;

    /* renamed from: j, reason: collision with root package name */
    public final int[] f10119j;

    /* renamed from: k, reason: collision with root package name */
    public int f10120k;

    /* renamed from: l, reason: collision with root package name */
    public b f10121l;

    /* renamed from: m, reason: collision with root package name */
    public Bitmap f10122m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f10123n;

    /* renamed from: o, reason: collision with root package name */
    public int f10124o;

    /* renamed from: p, reason: collision with root package name */
    public final int f10125p;

    /* renamed from: q, reason: collision with root package name */
    public final int f10126q;

    /* renamed from: r, reason: collision with root package name */
    public final int f10127r;

    /* renamed from: s, reason: collision with root package name */
    public Boolean f10128s;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f10113b = new int[256];

    /* renamed from: t, reason: collision with root package name */
    public Bitmap.Config f10129t = Bitmap.Config.ARGB_8888;

    public d(f fVar, b bVar, ByteBuffer byteBuffer, int i6) {
        this.f10114c = fVar;
        this.f10121l = new b();
        synchronized (this) {
            try {
                if (i6 <= 0) {
                    throw new IllegalArgumentException("Sample size must be >=0, not: " + i6);
                }
                int iHighestOneBit = Integer.highestOneBit(i6);
                this.f10124o = 0;
                this.f10121l = bVar;
                this.f10120k = -1;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.d = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                this.d.order(ByteOrder.LITTLE_ENDIAN);
                this.f10123n = false;
                Iterator it = bVar.f10103e.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (((a) it.next()).f10095g == 3) {
                        this.f10123n = true;
                        break;
                    }
                }
                this.f10125p = iHighestOneBit;
                int i10 = bVar.f;
                this.f10127r = i10 / iHighestOneBit;
                int i11 = bVar.f10104g;
                this.f10126q = i11 / iHighestOneBit;
                int i12 = i10 * i11;
                y2.f fVar2 = (y2.f) this.f10114c.f170c;
                this.f10118i = fVar2 == null ? new byte[i12] : (byte[]) fVar2.d(i12, byte[].class);
                f fVar3 = this.f10114c;
                int i13 = this.f10127r * this.f10126q;
                y2.f fVar4 = (y2.f) fVar3.f170c;
                this.f10119j = fVar4 == null ? new int[i13] : (int[]) fVar4.d(i13, int[].class);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Bitmap a() {
        Boolean bool = this.f10128s;
        Bitmap bitmapC = ((y2.a) this.f10114c.f169b).c(this.f10127r, this.f10126q, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f10129t);
        bitmapC.setHasAlpha(true);
        return bitmapC;
    }

    public final synchronized Bitmap b() {
        try {
            if (this.f10121l.f10102c <= 0 || this.f10120k < 0) {
                if (Log.isLoggable("d", 3)) {
                    Log.d("d", "Unable to decode frame, frameCount=" + this.f10121l.f10102c + ", framePointer=" + this.f10120k);
                }
                this.f10124o = 1;
            }
            int i6 = this.f10124o;
            if (i6 != 1 && i6 != 2) {
                this.f10124o = 0;
                if (this.f10115e == null) {
                    y2.f fVar = (y2.f) this.f10114c.f170c;
                    this.f10115e = fVar == null ? new byte[255] : (byte[]) fVar.d(255, byte[].class);
                }
                a aVar = (a) this.f10121l.f10103e.get(this.f10120k);
                int i10 = this.f10120k - 1;
                a aVar2 = i10 >= 0 ? (a) this.f10121l.f10103e.get(i10) : null;
                int[] iArr = aVar.f10099k;
                if (iArr == null) {
                    iArr = this.f10121l.f10100a;
                }
                this.f10112a = iArr;
                if (iArr == null) {
                    if (Log.isLoggable("d", 3)) {
                        Log.d("d", "No valid color table found for frame #" + this.f10120k);
                    }
                    this.f10124o = 1;
                    return null;
                }
                if (aVar.f) {
                    System.arraycopy(iArr, 0, this.f10113b, 0, iArr.length);
                    int[] iArr2 = this.f10113b;
                    this.f10112a = iArr2;
                    iArr2[aVar.f10096h] = 0;
                    if (aVar.f10095g == 2 && this.f10120k == 0) {
                        this.f10128s = Boolean.TRUE;
                    }
                }
                return d(aVar, aVar2);
            }
            if (Log.isLoggable("d", 3)) {
                Log.d("d", "Unable to decode frame, status=" + this.f10124o);
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void c(Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
        if (config == config3 || config == (config2 = Bitmap.Config.RGB_565)) {
            this.f10129t = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + config3 + " or " + config2);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.Bitmap d(t2.a r34, t2.a r35) {
        /*
            Method dump skipped, instructions count: 1090
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: t2.d.d(t2.a, t2.a):android.graphics.Bitmap");
    }
}
