package s1;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.PriorityQueue;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b {
    public static final a0.e f = new a0.e(6);

    /* renamed from: a, reason: collision with root package name */
    public final int[] f9713a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f9714b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f9715c;
    public final c[] d;

    /* renamed from: e, reason: collision with root package name */
    public final float[] f9716e = new float[3];

    public b(int[] iArr, int i6, c[] cVarArr) {
        a aVar;
        this.d = cVarArr;
        int[] iArr2 = new int[32768];
        this.f9714b = iArr2;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            int i11 = iArr[i10];
            int iB = b(Color.blue(i11), 8, 5) | (b(Color.red(i11), 8, 5) << 10) | (b(Color.green(i11), 8, 5) << 5);
            iArr[i10] = iB;
            iArr2[iB] = iArr2[iB] + 1;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < 32768; i13++) {
            if (iArr2[i13] > 0) {
                int iRgb = Color.rgb(b((i13 >> 10) & 31, 5, 8), b((i13 >> 5) & 31, 5, 8), b(i13 & 31, 5, 8));
                ThreadLocal threadLocal = f0.a.f6752a;
                int iRed = Color.red(iRgb);
                int iGreen = Color.green(iRgb);
                int iBlue = Color.blue(iRgb);
                float[] fArr = this.f9716e;
                f0.a.a(iRed, iGreen, iBlue, fArr);
                if (c(fArr)) {
                    iArr2[i13] = 0;
                }
            }
            if (iArr2[i13] > 0) {
                i12++;
            }
        }
        int[] iArr3 = new int[i12];
        this.f9713a = iArr3;
        int i14 = 0;
        for (int i15 = 0; i15 < 32768; i15++) {
            if (iArr2[i15] > 0) {
                iArr3[i14] = i15;
                i14++;
            }
        }
        if (i12 <= i6) {
            this.f9715c = new ArrayList();
            for (int i16 = 0; i16 < i12; i16++) {
                int i17 = iArr3[i16];
                this.f9715c.add(new d(Color.rgb(b((i17 >> 10) & 31, 5, 8), b((i17 >> 5) & 31, 5, 8), b(i17 & 31, 5, 8)), iArr2[i17]));
            }
            return;
        }
        PriorityQueue priorityQueue = new PriorityQueue(i6, f);
        priorityQueue.offer(new a(this, 0, this.f9713a.length - 1));
        while (priorityQueue.size() < i6 && (aVar = (a) priorityQueue.poll()) != null) {
            int i18 = aVar.f9706b;
            int iMin = aVar.f9705a;
            if ((i18 + 1) - iMin <= 1) {
                break;
            }
            if ((i18 + 1) - iMin <= 1) {
                throw new IllegalStateException("Can not split a box with only 1 color");
            }
            int i19 = aVar.f9708e - aVar.d;
            int i20 = aVar.f9709g - aVar.f;
            int i21 = aVar.f9711i - aVar.f9710h;
            int i22 = (i19 < i20 || i19 < i21) ? (i20 < i19 || i20 < i21) ? -1 : -2 : -3;
            b bVar = aVar.f9712j;
            int[] iArr4 = bVar.f9713a;
            a(iArr4, i22, iMin, i18);
            Arrays.sort(iArr4, iMin, aVar.f9706b + 1);
            a(iArr4, i22, iMin, aVar.f9706b);
            int i23 = aVar.f9707c / 2;
            int i24 = iMin;
            int i25 = 0;
            while (true) {
                int i26 = aVar.f9706b;
                if (i24 <= i26) {
                    i25 += bVar.f9714b[iArr4[i24]];
                    if (i25 >= i23) {
                        iMin = Math.min(i26 - 1, i24);
                        break;
                    }
                    i24++;
                }
            }
            a aVar2 = new a(bVar, iMin + 1, aVar.f9706b);
            aVar.f9706b = iMin;
            aVar.a();
            priorityQueue.offer(aVar2);
            priorityQueue.offer(aVar);
        }
        ArrayList arrayList = new ArrayList(priorityQueue.size());
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            a aVar3 = (a) it.next();
            b bVar2 = aVar3.f9712j;
            int[] iArr5 = bVar2.f9713a;
            int i27 = 0;
            int i28 = 0;
            int i29 = 0;
            int i30 = 0;
            for (int i31 = aVar3.f9705a; i31 <= aVar3.f9706b; i31++) {
                int i32 = iArr5[i31];
                int i33 = bVar2.f9714b[i32];
                i28 += i33;
                i27 = (((i32 >> 10) & 31) * i33) + i27;
                i29 = (((i32 >> 5) & 31) * i33) + i29;
                i30 += i33 * (i32 & 31);
            }
            float f3 = i28;
            d dVar = new d(Color.rgb(b(Math.round(i27 / f3), 5, 8), b(Math.round(i29 / f3), 5, 8), b(Math.round(i30 / f3), 5, 8)), i28);
            if (!c(dVar.b())) {
                arrayList.add(dVar);
            }
        }
        this.f9715c = arrayList;
    }

    public static void a(int[] iArr, int i6, int i10, int i11) {
        if (i6 == -2) {
            while (i10 <= i11) {
                int i12 = iArr[i10];
                iArr[i10] = (i12 & 31) | (((i12 >> 5) & 31) << 10) | (((i12 >> 10) & 31) << 5);
                i10++;
            }
            return;
        }
        if (i6 != -1) {
            return;
        }
        while (i10 <= i11) {
            int i13 = iArr[i10];
            iArr[i10] = ((i13 >> 10) & 31) | ((i13 & 31) << 10) | (((i13 >> 5) & 31) << 5);
            i10++;
        }
    }

    public static int b(int i6, int i10, int i11) {
        return (i11 > i10 ? i6 << (i11 - i10) : i6 >> (i10 - i11)) & ((1 << i11) - 1);
    }

    public final boolean c(float[] fArr) {
        c[] cVarArr = this.d;
        if (cVarArr != null && cVarArr.length > 0) {
            for (c cVar : cVarArr) {
                cVar.getClass();
                float f3 = fArr[2];
                if (f3 < 0.95f && f3 > 0.05f) {
                    float f4 = fArr[0];
                    if (f4 < 10.0f || f4 > 37.0f || fArr[1] > 0.82f) {
                    }
                }
                return true;
            }
        }
        return false;
    }
}
