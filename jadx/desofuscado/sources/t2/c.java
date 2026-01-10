package t2;

import a.e;
import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: b, reason: collision with root package name */
    public ByteBuffer f10110b;

    /* renamed from: c, reason: collision with root package name */
    public b f10111c;

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f10109a = new byte[256];
    public int d = 0;

    public final boolean a() {
        return this.f10111c.f10101b != 0;
    }

    public final b b() {
        byte[] bArr;
        if (this.f10110b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (a()) {
            return this.f10111c;
        }
        StringBuilder sb = new StringBuilder();
        for (int i6 = 0; i6 < 6; i6++) {
            sb.append((char) c());
        }
        if (sb.toString().startsWith("GIF")) {
            this.f10111c.f = this.f10110b.getShort();
            this.f10111c.f10104g = this.f10110b.getShort();
            int iC = c();
            b bVar = this.f10111c;
            bVar.f10105h = (iC & 128) != 0;
            bVar.f10106i = (int) Math.pow(2.0d, (iC & 7) + 1);
            this.f10111c.f10107j = c();
            b bVar2 = this.f10111c;
            c();
            bVar2.getClass();
            if (this.f10111c.f10105h && !a()) {
                b bVar3 = this.f10111c;
                bVar3.f10100a = e(bVar3.f10106i);
                b bVar4 = this.f10111c;
                bVar4.f10108k = bVar4.f10100a[bVar4.f10107j];
            }
        } else {
            this.f10111c.f10101b = 1;
        }
        if (!a()) {
            boolean z7 = false;
            while (!z7 && !a() && this.f10111c.f10102c <= Integer.MAX_VALUE) {
                int iC2 = c();
                if (iC2 == 33) {
                    int iC3 = c();
                    if (iC3 == 1) {
                        f();
                    } else if (iC3 == 249) {
                        this.f10111c.d = new a();
                        c();
                        int iC4 = c();
                        a aVar = this.f10111c.d;
                        int i10 = (iC4 & 28) >> 2;
                        aVar.f10095g = i10;
                        if (i10 == 0) {
                            aVar.f10095g = 1;
                        }
                        aVar.f = (iC4 & 1) != 0;
                        short s10 = this.f10110b.getShort();
                        if (s10 < 2) {
                            s10 = 10;
                        }
                        a aVar2 = this.f10111c.d;
                        aVar2.f10097i = s10 * 10;
                        aVar2.f10096h = c();
                        c();
                    } else if (iC3 == 254) {
                        f();
                    } else if (iC3 != 255) {
                        f();
                    } else {
                        d();
                        StringBuilder sb2 = new StringBuilder();
                        int i11 = 0;
                        while (true) {
                            bArr = this.f10109a;
                            if (i11 >= 11) {
                                break;
                            }
                            sb2.append((char) bArr[i11]);
                            i11++;
                        }
                        if (sb2.toString().equals("NETSCAPE2.0")) {
                            do {
                                d();
                                if (bArr[0] == 1) {
                                    byte b8 = bArr[1];
                                    byte b10 = bArr[2];
                                    this.f10111c.getClass();
                                }
                                if (this.d > 0) {
                                }
                            } while (!a());
                        } else {
                            f();
                        }
                    }
                } else if (iC2 == 44) {
                    b bVar5 = this.f10111c;
                    if (bVar5.d == null) {
                        bVar5.d = new a();
                    }
                    bVar5.d.f10091a = this.f10110b.getShort();
                    this.f10111c.d.f10092b = this.f10110b.getShort();
                    this.f10111c.d.f10093c = this.f10110b.getShort();
                    this.f10111c.d.d = this.f10110b.getShort();
                    int iC5 = c();
                    boolean z10 = (iC5 & 128) != 0;
                    int iPow = (int) Math.pow(2.0d, (iC5 & 7) + 1);
                    a aVar3 = this.f10111c.d;
                    aVar3.f10094e = (iC5 & 64) != 0;
                    if (z10) {
                        aVar3.f10099k = e(iPow);
                    } else {
                        aVar3.f10099k = null;
                    }
                    this.f10111c.d.f10098j = this.f10110b.position();
                    c();
                    f();
                    if (!a()) {
                        b bVar6 = this.f10111c;
                        bVar6.f10102c++;
                        bVar6.f10103e.add(bVar6.d);
                    }
                } else if (iC2 != 59) {
                    this.f10111c.f10101b = 1;
                } else {
                    z7 = true;
                }
            }
            b bVar7 = this.f10111c;
            if (bVar7.f10102c < 0) {
                bVar7.f10101b = 1;
            }
        }
        return this.f10111c;
    }

    public final int c() {
        try {
            return this.f10110b.get() & 255;
        } catch (Exception unused) {
            this.f10111c.f10101b = 1;
            return 0;
        }
    }

    public final void d() {
        int iC = c();
        this.d = iC;
        if (iC <= 0) {
            return;
        }
        int i6 = 0;
        int i10 = 0;
        while (true) {
            try {
                i10 = this.d;
                if (i6 >= i10) {
                    return;
                }
                i10 -= i6;
                this.f10110b.get(this.f10109a, i6, i10);
                i6 += i10;
            } catch (Exception e5) {
                if (Log.isLoggable("GifHeaderParser", 3)) {
                    StringBuilder sbV = e.v("Error Reading Block n: ", i6, " count: ", i10, " blockSize: ");
                    sbV.append(this.d);
                    Log.d("GifHeaderParser", sbV.toString(), e5);
                }
                this.f10111c.f10101b = 1;
                return;
            }
        }
    }

    public final int[] e(int i6) {
        byte[] bArr = new byte[i6 * 3];
        int[] iArr = null;
        try {
            this.f10110b.get(bArr);
            iArr = new int[256];
            int i10 = 0;
            int i11 = 0;
            while (i10 < i6) {
                int i12 = bArr[i11] & 255;
                int i13 = i11 + 2;
                int i14 = bArr[i11 + 1] & 255;
                i11 += 3;
                int i15 = i10 + 1;
                iArr[i10] = (i14 << 8) | (i12 << 16) | (-16777216) | (bArr[i13] & 255);
                i10 = i15;
            }
        } catch (BufferUnderflowException e5) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e5);
            }
            this.f10111c.f10101b = 1;
        }
        return iArr;
    }

    public final void f() {
        int iC;
        do {
            iC = c();
            this.f10110b.position(Math.min(this.f10110b.position() + iC, this.f10110b.limit()));
        } while (iC > 0);
    }
}
