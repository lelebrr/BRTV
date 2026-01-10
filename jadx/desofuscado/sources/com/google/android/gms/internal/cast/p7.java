package com.google.android.gms.internal.cast;

import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.flac.FlacConstants;
import androidx.media3.extractor.ts.TsExtractor;
import com.alibaba.fastjson.asm.Opcodes;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import me.jessyan.autosize.BuildConfig;
import sun.misc.Unsafe;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p7 implements v7 {

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f4379g = new int[0];

    /* renamed from: h, reason: collision with root package name */
    public static final Unsafe f4380h = d8.j();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f4381a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f4382b;

    /* renamed from: c, reason: collision with root package name */
    public final r6 f4383c;
    public final int[] d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4384e;
    public final k2 f;

    public p7(int[] iArr, Object[] objArr, r6 r6Var, int[] iArr2, int i6, k2 k2Var, k2 k2Var2) {
        this.f4381a = iArr;
        this.f4382b = objArr;
        this.d = iArr2;
        this.f4384e = i6;
        this.f = k2Var;
        this.f4383c = r6Var;
    }

    public static boolean i(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof c7) {
            return ((c7) obj).g();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x025d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.internal.cast.p7 k(com.google.android.gms.internal.cast.u7 r29, com.google.android.gms.internal.cast.k2 r30, com.google.android.gms.internal.cast.k2 r31) {
        /*
            Method dump skipped, instructions count: 991
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.p7.k(com.google.android.gms.internal.cast.u7, com.google.android.gms.internal.cast.k2, com.google.android.gms.internal.cast.k2):com.google.android.gms.internal.cast.p7");
    }

    public static int l(long j10, Object obj) {
        return ((Integer) d8.i(j10, obj)).intValue();
    }

    public static int m(int i6) {
        return (i6 >>> 20) & 255;
    }

    public static long o(long j10, Object obj) {
        return ((Long) d8.i(j10, obj)).longValue();
    }

    public static Field q(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e5) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields), e5);
        }
    }

    @Override // com.google.android.gms.internal.cast.v7
    public final void a(Object obj, l7 l7Var) throws y6 {
        int i6;
        int i10;
        int i11;
        Unsafe unsafe = f4380h;
        int i12 = 1048575;
        boolean z7 = false;
        int i13 = 1048575;
        int i14 = 0;
        int i15 = 0;
        while (true) {
            int[] iArr = this.f4381a;
            if (i15 >= iArr.length) {
                y7 y7Var = ((c7) obj).zzc;
                return;
            }
            int iN = n(i15);
            int iM = m(iN);
            int i16 = iArr[i15];
            if (iM <= 17) {
                int i17 = iArr[i15 + 2];
                int i18 = i17 & i12;
                if (i18 != i13) {
                    i14 = i18 == i12 ? 0 : unsafe.getInt(obj, i18);
                    i13 = i18;
                }
                i11 = 1 << (i17 >>> 20);
                i6 = i13;
                i10 = i14;
            } else {
                i6 = i13;
                i10 = i14;
                i11 = 0;
            }
            long j10 = iN & i12;
            switch (iM) {
                case 0:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.v(i16, d8.d(j10, obj));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.z(i16, d8.e(j10, obj));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.C(i16, unsafe.getLong(obj, j10));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.r(i16, unsafe.getLong(obj, j10));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.B(i16, unsafe.getInt(obj, j10));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.y(i16, unsafe.getLong(obj, j10));
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.x(i16, unsafe.getInt(obj, j10));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.s(i16, d8.q(j10, obj));
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (w(obj, i15, i6, i10, i11)) {
                        Object object = unsafe.getObject(obj, j10);
                        if (object instanceof String) {
                            ((x6) l7Var.f4310b).B(i16, (String) object);
                            break;
                        } else {
                            l7Var.t(i16, (w6) object);
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.D(i16, unsafe.getObject(obj, j10), p(i15));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.t(i16, (w6) unsafe.getObject(obj, j10));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.q(i16, unsafe.getInt(obj, j10));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.w(i16, unsafe.getInt(obj, j10));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.E(i16, unsafe.getInt(obj, j10));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.F(i16, unsafe.getLong(obj, j10));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.j(i16, unsafe.getInt(obj, j10));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.o(i16, unsafe.getLong(obj, j10));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (w(obj, i15, i6, i10, i11)) {
                        l7Var.A(i16, unsafe.getObject(obj, j10), p(i15));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    w7.s(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, z7);
                    break;
                case 19:
                    w7.w(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, z7);
                    break;
                case 20:
                    w7.y(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, z7);
                    break;
                case 21:
                    w7.c(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, z7);
                    break;
                case 22:
                    w7.x(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, z7);
                    break;
                case 23:
                    w7.v(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, z7);
                    break;
                case 24:
                    w7.u(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, z7);
                    break;
                case 25:
                    w7.r(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, z7);
                    break;
                case 26:
                    int i19 = iArr[i15];
                    List list = (List) unsafe.getObject(obj, j10);
                    k2 k2Var = w7.f4454a;
                    if (list != null && !list.isEmpty()) {
                        l7Var.p(i19, list);
                        break;
                    } else {
                        break;
                    }
                case 27:
                    int i20 = iArr[i15];
                    List list2 = (List) unsafe.getObject(obj, j10);
                    v7 v7VarP = p(i15);
                    k2 k2Var2 = w7.f4454a;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i21 = 0; i21 < list2.size(); i21++) {
                            l7Var.D(i20, list2.get(i21), v7VarP);
                        }
                        break;
                    } else {
                        break;
                    }
                    break;
                case 28:
                    int i22 = iArr[i15];
                    List list3 = (List) unsafe.getObject(obj, j10);
                    k2 k2Var3 = w7.f4454a;
                    if (list3 != null && !list3.isEmpty()) {
                        l7Var.u(i22, list3);
                        break;
                    } else {
                        break;
                    }
                case 29:
                    w7.b(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, z7);
                    break;
                case 30:
                    w7.t(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, z7);
                    break;
                case 31:
                    w7.z(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, z7);
                    break;
                case 32:
                    w7.A(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, z7);
                    break;
                case 33:
                    w7.B(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, z7);
                    break;
                case 34:
                    w7.a(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, z7);
                    break;
                case 35:
                    w7.s(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, true);
                    break;
                case TsExtractor.TS_STREAM_TYPE_H265 /* 36 */:
                    w7.w(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, true);
                    break;
                case 37:
                    w7.y(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, true);
                    break;
                case FlacConstants.STREAM_INFO_BLOCK_SIZE /* 38 */:
                    w7.c(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, true);
                    break;
                case NalUnitUtil.H265_NAL_UNIT_TYPE_PREFIX_SEI /* 39 */:
                    w7.x(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, true);
                    break;
                case NalUnitUtil.H265_NAL_UNIT_TYPE_SUFFIX_SEI /* 40 */:
                    w7.v(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, true);
                    break;
                case BuildConfig.VERSION_CODE /* 41 */:
                    w7.u(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, true);
                    break;
                case AacUtil.AUDIO_OBJECT_TYPE_AAC_XHE /* 42 */:
                    w7.r(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, true);
                    break;
                case 43:
                    w7.b(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, true);
                    break;
                case 44:
                    w7.t(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, true);
                    break;
                case TsExtractor.TS_STREAM_TYPE_MHAS /* 45 */:
                    w7.z(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, true);
                    break;
                case 46:
                    w7.A(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, true);
                    break;
                case 47:
                    w7.B(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, true);
                    break;
                case NalUnitUtil.H265_NAL_UNIT_TYPE_UNSPECIFIED /* 48 */:
                    w7.a(iArr[i15], (List) unsafe.getObject(obj, j10), l7Var, true);
                    break;
                case Opcodes.V1_5 /* 49 */:
                    int i23 = iArr[i15];
                    List list4 = (List) unsafe.getObject(obj, j10);
                    v7 v7VarP2 = p(i15);
                    k2 k2Var4 = w7.f4454a;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i24 = 0; i24 < list4.size(); i24++) {
                            l7Var.A(i23, list4.get(i24), v7VarP2);
                        }
                        break;
                    } else {
                        break;
                    }
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    if (unsafe.getObject(obj, j10) != null) {
                        int i25 = i15 / 3;
                        ea.q.n(this.f4382b[i25 + i25]);
                        throw null;
                    }
                    break;
                case 51:
                    if (j(i16, i15, obj)) {
                        l7Var.v(i16, ((Double) d8.i(j10, obj)).doubleValue());
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (j(i16, i15, obj)) {
                        l7Var.z(i16, ((Float) d8.i(j10, obj)).floatValue());
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (j(i16, i15, obj)) {
                        l7Var.C(i16, o(j10, obj));
                        break;
                    } else {
                        break;
                    }
                case Opcodes.ISTORE /* 54 */:
                    if (j(i16, i15, obj)) {
                        l7Var.r(i16, o(j10, obj));
                        break;
                    } else {
                        break;
                    }
                case Opcodes.LSTORE /* 55 */:
                    if (j(i16, i15, obj)) {
                        l7Var.B(i16, l(j10, obj));
                        break;
                    } else {
                        break;
                    }
                case Opcodes.FSTORE /* 56 */:
                    if (j(i16, i15, obj)) {
                        l7Var.y(i16, o(j10, obj));
                        break;
                    } else {
                        break;
                    }
                case Opcodes.DSTORE /* 57 */:
                    if (j(i16, i15, obj)) {
                        l7Var.x(i16, l(j10, obj));
                        break;
                    } else {
                        break;
                    }
                case Opcodes.ASTORE /* 58 */:
                    if (j(i16, i15, obj)) {
                        l7Var.s(i16, ((Boolean) d8.i(j10, obj)).booleanValue());
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (j(i16, i15, obj)) {
                        Object object2 = unsafe.getObject(obj, j10);
                        if (object2 instanceof String) {
                            ((x6) l7Var.f4310b).B(i16, (String) object2);
                            break;
                        } else {
                            l7Var.t(i16, (w6) object2);
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    if (j(i16, i15, obj)) {
                        l7Var.D(i16, unsafe.getObject(obj, j10), p(i15));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (j(i16, i15, obj)) {
                        l7Var.t(i16, (w6) unsafe.getObject(obj, j10));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (j(i16, i15, obj)) {
                        l7Var.q(i16, l(j10, obj));
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (j(i16, i15, obj)) {
                        l7Var.w(i16, l(j10, obj));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (j(i16, i15, obj)) {
                        l7Var.E(i16, l(j10, obj));
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (j(i16, i15, obj)) {
                        l7Var.F(i16, o(j10, obj));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (j(i16, i15, obj)) {
                        l7Var.j(i16, l(j10, obj));
                        break;
                    } else {
                        break;
                    }
                case MdtaMetadataEntry.TYPE_INDICATOR_INT32 /* 67 */:
                    if (j(i16, i15, obj)) {
                        l7Var.o(i16, o(j10, obj));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (j(i16, i15, obj)) {
                        l7Var.A(i16, unsafe.getObject(obj, j10), p(i15));
                        break;
                    } else {
                        break;
                    }
            }
            i15 += 3;
            i13 = i6;
            i14 = i10;
            i12 = 1048575;
            z7 = false;
        }
    }

    @Override // com.google.android.gms.internal.cast.v7
    public final c7 b() {
        return (c7) ((c7) this.f4383c).h(4, null);
    }

    @Override // com.google.android.gms.internal.cast.v7
    public final boolean c(c7 c7Var, Object obj) {
        boolean zD;
        int i6 = 0;
        while (true) {
            int[] iArr = this.f4381a;
            if (i6 >= iArr.length) {
                return c7Var.zzc.equals(((c7) obj).zzc);
            }
            int iN = n(i6);
            long j10 = iN & 1048575;
            switch (m(iN)) {
                case 0:
                    if (!u(c7Var, obj, i6)) {
                        break;
                    } else {
                        c8 c8Var = d8.f4140c;
                        if (Double.doubleToLongBits(c8Var.a(j10, c7Var)) != Double.doubleToLongBits(c8Var.a(j10, obj))) {
                            break;
                        } else {
                            continue;
                            i6 += 3;
                        }
                    }
                case 1:
                    if (!u(c7Var, obj, i6)) {
                        break;
                    } else {
                        c8 c8Var2 = d8.f4140c;
                        if (Float.floatToIntBits(c8Var2.b(j10, c7Var)) != Float.floatToIntBits(c8Var2.b(j10, obj))) {
                            break;
                        } else {
                            continue;
                            i6 += 3;
                        }
                    }
                case 2:
                    if (!u(c7Var, obj, i6) || d8.g(j10, c7Var) != d8.g(j10, obj)) {
                        break;
                    } else {
                        continue;
                        i6 += 3;
                    }
                    break;
                case 3:
                    if (!u(c7Var, obj, i6) || d8.g(j10, c7Var) != d8.g(j10, obj)) {
                        break;
                    } else {
                        continue;
                        i6 += 3;
                    }
                    break;
                case 4:
                    if (!u(c7Var, obj, i6) || d8.f(j10, c7Var) != d8.f(j10, obj)) {
                        break;
                    } else {
                        continue;
                        i6 += 3;
                    }
                    break;
                case 5:
                    if (!u(c7Var, obj, i6) || d8.g(j10, c7Var) != d8.g(j10, obj)) {
                        break;
                    } else {
                        continue;
                        i6 += 3;
                    }
                    break;
                case 6:
                    if (!u(c7Var, obj, i6) || d8.f(j10, c7Var) != d8.f(j10, obj)) {
                        break;
                    } else {
                        continue;
                        i6 += 3;
                    }
                    break;
                case 7:
                    if (!u(c7Var, obj, i6)) {
                        break;
                    } else {
                        c8 c8Var3 = d8.f4140c;
                        if (c8Var3.g(j10, c7Var) != c8Var3.g(j10, obj)) {
                            break;
                        } else {
                            continue;
                            i6 += 3;
                        }
                    }
                case 8:
                    if (!u(c7Var, obj, i6) || !w7.d(d8.i(j10, c7Var), d8.i(j10, obj))) {
                        break;
                    } else {
                        continue;
                        i6 += 3;
                    }
                    break;
                case 9:
                    if (!u(c7Var, obj, i6) || !w7.d(d8.i(j10, c7Var), d8.i(j10, obj))) {
                        break;
                    } else {
                        continue;
                        i6 += 3;
                    }
                    break;
                case 10:
                    if (!u(c7Var, obj, i6) || !w7.d(d8.i(j10, c7Var), d8.i(j10, obj))) {
                        break;
                    } else {
                        continue;
                        i6 += 3;
                    }
                    break;
                case 11:
                    if (!u(c7Var, obj, i6) || d8.f(j10, c7Var) != d8.f(j10, obj)) {
                        break;
                    } else {
                        continue;
                        i6 += 3;
                    }
                    break;
                case 12:
                    if (!u(c7Var, obj, i6) || d8.f(j10, c7Var) != d8.f(j10, obj)) {
                        break;
                    } else {
                        continue;
                        i6 += 3;
                    }
                    break;
                case 13:
                    if (!u(c7Var, obj, i6) || d8.f(j10, c7Var) != d8.f(j10, obj)) {
                        break;
                    } else {
                        continue;
                        i6 += 3;
                    }
                    break;
                case 14:
                    if (!u(c7Var, obj, i6) || d8.g(j10, c7Var) != d8.g(j10, obj)) {
                        break;
                    } else {
                        continue;
                        i6 += 3;
                    }
                    break;
                case 15:
                    if (!u(c7Var, obj, i6) || d8.f(j10, c7Var) != d8.f(j10, obj)) {
                        break;
                    } else {
                        continue;
                        i6 += 3;
                    }
                    break;
                case 16:
                    if (!u(c7Var, obj, i6) || d8.g(j10, c7Var) != d8.g(j10, obj)) {
                        break;
                    } else {
                        continue;
                        i6 += 3;
                    }
                    break;
                case 17:
                    if (!u(c7Var, obj, i6) || !w7.d(d8.i(j10, c7Var), d8.i(j10, obj))) {
                        break;
                    } else {
                        continue;
                        i6 += 3;
                    }
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case TsExtractor.TS_STREAM_TYPE_H265 /* 36 */:
                case 37:
                case FlacConstants.STREAM_INFO_BLOCK_SIZE /* 38 */:
                case NalUnitUtil.H265_NAL_UNIT_TYPE_PREFIX_SEI /* 39 */:
                case NalUnitUtil.H265_NAL_UNIT_TYPE_SUFFIX_SEI /* 40 */:
                case BuildConfig.VERSION_CODE /* 41 */:
                case AacUtil.AUDIO_OBJECT_TYPE_AAC_XHE /* 42 */:
                case 43:
                case 44:
                case TsExtractor.TS_STREAM_TYPE_MHAS /* 45 */:
                case 46:
                case 47:
                case NalUnitUtil.H265_NAL_UNIT_TYPE_UNSPECIFIED /* 48 */:
                case Opcodes.V1_5 /* 49 */:
                    zD = w7.d(d8.i(j10, c7Var), d8.i(j10, obj));
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    zD = w7.d(d8.i(j10, c7Var), d8.i(j10, obj));
                    break;
                case 51:
                case 52:
                case 53:
                case Opcodes.ISTORE /* 54 */:
                case Opcodes.LSTORE /* 55 */:
                case Opcodes.FSTORE /* 56 */:
                case Opcodes.DSTORE /* 57 */:
                case Opcodes.ASTORE /* 58 */:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case MdtaMetadataEntry.TYPE_INDICATOR_INT32 /* 67 */:
                case 68:
                    long j11 = iArr[i6 + 2] & 1048575;
                    if (d8.f(j11, c7Var) != d8.f(j11, obj) || !w7.d(d8.i(j10, c7Var), d8.i(j10, obj))) {
                        break;
                    } else {
                        continue;
                        i6 += 3;
                    }
                    break;
                default:
                    i6 += 3;
            }
            if (zD) {
                i6 += 3;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x007d, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006a  */
    @Override // com.google.android.gms.internal.cast.v7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void d(java.lang.Object r7) {
        /*
            r6 = this;
            boolean r0 = i(r7)
            if (r0 != 0) goto L8
            goto L88
        L8:
            boolean r0 = r7 instanceof com.google.android.gms.internal.cast.c7
            r1 = 0
            if (r0 == 0) goto L18
            r0 = r7
            com.google.android.gms.internal.cast.c7 r0 = (com.google.android.gms.internal.cast.c7) r0
            r0.f()
            r0.zza = r1
            r0.d()
        L18:
            int[] r0 = r6.f4381a
            int r2 = r0.length
            if (r1 >= r2) goto L80
            int r2 = r6.n(r1)
            r3 = 1048575(0xfffff, float:1.469367E-39)
            r3 = r3 & r2
            int r2 = m(r2)
            long r3 = (long) r3
            r5 = 9
            if (r2 == r5) goto L6a
            r5 = 60
            if (r2 == r5) goto L54
            r5 = 68
            if (r2 == r5) goto L54
            switch(r2) {
                case 17: goto L6a;
                case 18: goto L48;
                case 19: goto L48;
                case 20: goto L48;
                case 21: goto L48;
                case 22: goto L48;
                case 23: goto L48;
                case 24: goto L48;
                case 25: goto L48;
                case 26: goto L48;
                case 27: goto L48;
                case 28: goto L48;
                case 29: goto L48;
                case 30: goto L48;
                case 31: goto L48;
                case 32: goto L48;
                case 33: goto L48;
                case 34: goto L48;
                case 35: goto L48;
                case 36: goto L48;
                case 37: goto L48;
                case 38: goto L48;
                case 39: goto L48;
                case 40: goto L48;
                case 41: goto L48;
                case 42: goto L48;
                case 43: goto L48;
                case 44: goto L48;
                case 45: goto L48;
                case 46: goto L48;
                case 47: goto L48;
                case 48: goto L48;
                case 49: goto L48;
                case 50: goto L3a;
                default: goto L39;
            }
        L39:
            goto L7d
        L3a:
            sun.misc.Unsafe r0 = com.google.android.gms.internal.cast.p7.f4380h
            java.lang.Object r0 = r0.getObject(r7, r3)
            if (r0 != 0) goto L43
            goto L7d
        L43:
            a.e.C(r0)
            r7 = 0
            throw r7
        L48:
            java.lang.Object r0 = com.google.android.gms.internal.cast.d8.i(r3, r7)
            com.google.android.gms.internal.cast.g7 r0 = (com.google.android.gms.internal.cast.g7) r0
            com.google.android.gms.internal.cast.s6 r0 = (com.google.android.gms.internal.cast.s6) r0
            r0.d()
            goto L7d
        L54:
            r0 = r0[r1]
            boolean r0 = r6.j(r0, r1, r7)
            if (r0 == 0) goto L7d
            com.google.android.gms.internal.cast.v7 r0 = r6.p(r1)
            sun.misc.Unsafe r2 = com.google.android.gms.internal.cast.p7.f4380h
            java.lang.Object r2 = r2.getObject(r7, r3)
            r0.d(r2)
            goto L7d
        L6a:
            boolean r0 = r6.v(r1, r7)
            if (r0 == 0) goto L7d
            com.google.android.gms.internal.cast.v7 r0 = r6.p(r1)
            sun.misc.Unsafe r2 = com.google.android.gms.internal.cast.p7.f4380h
            java.lang.Object r2 = r2.getObject(r7, r3)
            r0.d(r2)
        L7d:
            int r1 = r1 + 3
            goto L18
        L80:
            com.google.android.gms.internal.cast.k2 r0 = r6.f
            r0.getClass()
            com.google.android.gms.internal.cast.k2.d(r7)
        L88:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.p7.d(java.lang.Object):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:133:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0492  */
    @Override // com.google.android.gms.internal.cast.v7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int e(com.google.android.gms.internal.cast.c7 r19) {
        /*
            Method dump skipped, instructions count: 2022
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.p7.e(com.google.android.gms.internal.cast.c7):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0096  */
    @Override // com.google.android.gms.internal.cast.v7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean f(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.p7.f(java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.cast.v7
    public final void g(Object obj, Object obj2) {
        if (!i(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
        obj2.getClass();
        int i6 = 0;
        while (true) {
            int[] iArr = this.f4381a;
            if (i6 >= iArr.length) {
                w7.q(obj, obj2);
                return;
            }
            int iN = n(i6);
            int i10 = iN & 1048575;
            int iM = m(iN);
            int i11 = iArr[i6];
            long j10 = i10;
            switch (iM) {
                case 0:
                    if (!v(i6, obj2)) {
                        break;
                    } else {
                        c8 c8Var = d8.f4140c;
                        c8Var.e(obj, j10, c8Var.a(j10, obj2));
                        t(i6, obj);
                        break;
                    }
                case 1:
                    if (!v(i6, obj2)) {
                        break;
                    } else {
                        c8 c8Var2 = d8.f4140c;
                        c8Var2.f(obj, j10, c8Var2.b(j10, obj2));
                        t(i6, obj);
                        break;
                    }
                case 2:
                    if (!v(i6, obj2)) {
                        break;
                    } else {
                        d8.l(obj, j10, d8.g(j10, obj2));
                        t(i6, obj);
                        break;
                    }
                case 3:
                    if (!v(i6, obj2)) {
                        break;
                    } else {
                        d8.l(obj, j10, d8.g(j10, obj2));
                        t(i6, obj);
                        break;
                    }
                case 4:
                    if (!v(i6, obj2)) {
                        break;
                    } else {
                        d8.k(d8.f(j10, obj2), j10, obj);
                        t(i6, obj);
                        break;
                    }
                case 5:
                    if (!v(i6, obj2)) {
                        break;
                    } else {
                        d8.l(obj, j10, d8.g(j10, obj2));
                        t(i6, obj);
                        break;
                    }
                case 6:
                    if (!v(i6, obj2)) {
                        break;
                    } else {
                        d8.k(d8.f(j10, obj2), j10, obj);
                        t(i6, obj);
                        break;
                    }
                case 7:
                    if (!v(i6, obj2)) {
                        break;
                    } else {
                        c8 c8Var3 = d8.f4140c;
                        c8Var3.c(obj, j10, c8Var3.g(j10, obj2));
                        t(i6, obj);
                        break;
                    }
                case 8:
                    if (!v(i6, obj2)) {
                        break;
                    } else {
                        d8.m(j10, obj, d8.i(j10, obj2));
                        t(i6, obj);
                        break;
                    }
                case 9:
                    r(obj, i6, obj2);
                    break;
                case 10:
                    if (!v(i6, obj2)) {
                        break;
                    } else {
                        d8.m(j10, obj, d8.i(j10, obj2));
                        t(i6, obj);
                        break;
                    }
                case 11:
                    if (!v(i6, obj2)) {
                        break;
                    } else {
                        d8.k(d8.f(j10, obj2), j10, obj);
                        t(i6, obj);
                        break;
                    }
                case 12:
                    if (!v(i6, obj2)) {
                        break;
                    } else {
                        d8.k(d8.f(j10, obj2), j10, obj);
                        t(i6, obj);
                        break;
                    }
                case 13:
                    if (!v(i6, obj2)) {
                        break;
                    } else {
                        d8.k(d8.f(j10, obj2), j10, obj);
                        t(i6, obj);
                        break;
                    }
                case 14:
                    if (!v(i6, obj2)) {
                        break;
                    } else {
                        d8.l(obj, j10, d8.g(j10, obj2));
                        t(i6, obj);
                        break;
                    }
                case 15:
                    if (!v(i6, obj2)) {
                        break;
                    } else {
                        d8.k(d8.f(j10, obj2), j10, obj);
                        t(i6, obj);
                        break;
                    }
                case 16:
                    if (!v(i6, obj2)) {
                        break;
                    } else {
                        d8.l(obj, j10, d8.g(j10, obj2));
                        t(i6, obj);
                        break;
                    }
                case 17:
                    r(obj, i6, obj2);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case TsExtractor.TS_STREAM_TYPE_H265 /* 36 */:
                case 37:
                case FlacConstants.STREAM_INFO_BLOCK_SIZE /* 38 */:
                case NalUnitUtil.H265_NAL_UNIT_TYPE_PREFIX_SEI /* 39 */:
                case NalUnitUtil.H265_NAL_UNIT_TYPE_SUFFIX_SEI /* 40 */:
                case BuildConfig.VERSION_CODE /* 41 */:
                case AacUtil.AUDIO_OBJECT_TYPE_AAC_XHE /* 42 */:
                case 43:
                case 44:
                case TsExtractor.TS_STREAM_TYPE_MHAS /* 45 */:
                case 46:
                case 47:
                case NalUnitUtil.H265_NAL_UNIT_TYPE_UNSPECIFIED /* 48 */:
                case Opcodes.V1_5 /* 49 */:
                    g7 g7VarA = (g7) d8.i(j10, obj);
                    g7 g7Var = (g7) d8.i(j10, obj2);
                    int size = g7VarA.size();
                    int size2 = g7Var.size();
                    if (size > 0 && size2 > 0) {
                        if (!((s6) g7VarA).f4411a) {
                            g7VarA = g7VarA.a(size2 + size);
                        }
                        g7VarA.addAll(g7Var);
                    }
                    if (size > 0) {
                        g7Var = g7VarA;
                    }
                    d8.m(j10, obj, g7Var);
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    k2 k2Var = w7.f4454a;
                    Object objI = d8.i(j10, obj);
                    Object objI2 = d8.i(j10, obj2);
                    if (objI != null) {
                        throw new ClassCastException();
                    }
                    objI2.getClass();
                    throw new ClassCastException();
                case 51:
                case 52:
                case 53:
                case Opcodes.ISTORE /* 54 */:
                case Opcodes.LSTORE /* 55 */:
                case Opcodes.FSTORE /* 56 */:
                case Opcodes.DSTORE /* 57 */:
                case Opcodes.ASTORE /* 58 */:
                case 59:
                    if (!j(i11, i6, obj2)) {
                        break;
                    } else {
                        d8.m(j10, obj, d8.i(j10, obj2));
                        d8.k(i11, iArr[i6 + 2] & 1048575, obj);
                        break;
                    }
                case 60:
                    s(obj, i6, obj2);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case MdtaMetadataEntry.TYPE_INDICATOR_INT32 /* 67 */:
                    if (!j(i11, i6, obj2)) {
                        break;
                    } else {
                        d8.m(j10, obj, d8.i(j10, obj2));
                        d8.k(i11, iArr[i6 + 2] & 1048575, obj);
                        break;
                    }
                case 68:
                    s(obj, i6, obj2);
                    break;
            }
            i6 += 3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00db A[PHI: r1
  0x00db: PHI (r1v35 int) = (r1v11 int), (r1v36 int) binds: [B:85:0x01eb, B:43:0x00d9] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.cast.v7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int h(com.google.android.gms.internal.cast.c7 r11) {
        /*
            Method dump skipped, instructions count: 730
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.p7.h(com.google.android.gms.internal.cast.c7):int");
    }

    public final boolean j(int i6, int i10, Object obj) {
        return d8.f((long) (this.f4381a[i10 + 2] & 1048575), obj) == i6;
    }

    public final int n(int i6) {
        return this.f4381a[i6 + 1];
    }

    public final v7 p(int i6) {
        int i10 = i6 / 3;
        int i11 = i10 + i10;
        Object[] objArr = this.f4382b;
        v7 v7Var = (v7) objArr[i11];
        if (v7Var != null) {
            return v7Var;
        }
        v7 v7VarA = s7.f4412c.a((Class) objArr[i11 + 1]);
        objArr[i11] = v7VarA;
        return v7VarA;
    }

    public final void r(Object obj, int i6, Object obj2) {
        if (v(i6, obj2)) {
            int iN = n(i6) & 1048575;
            Unsafe unsafe = f4380h;
            long j10 = iN;
            Object object = unsafe.getObject(obj2, j10);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f4381a[i6] + " is present but null: " + obj2.toString());
            }
            v7 v7VarP = p(i6);
            if (!v(i6, obj)) {
                if (i(object)) {
                    c7 c7VarB = v7VarP.b();
                    v7VarP.g(c7VarB, object);
                    unsafe.putObject(obj, j10, c7VarB);
                } else {
                    unsafe.putObject(obj, j10, object);
                }
                t(i6, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j10);
            if (!i(object2)) {
                c7 c7VarB2 = v7VarP.b();
                v7VarP.g(c7VarB2, object2);
                unsafe.putObject(obj, j10, c7VarB2);
                object2 = c7VarB2;
            }
            v7VarP.g(object2, object);
        }
    }

    public final void s(Object obj, int i6, Object obj2) {
        int[] iArr = this.f4381a;
        int i10 = iArr[i6];
        if (j(i10, i6, obj2)) {
            int iN = n(i6) & 1048575;
            Unsafe unsafe = f4380h;
            long j10 = iN;
            Object object = unsafe.getObject(obj2, j10);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i6] + " is present but null: " + obj2.toString());
            }
            v7 v7VarP = p(i6);
            if (!j(i10, i6, obj)) {
                if (i(object)) {
                    c7 c7VarB = v7VarP.b();
                    v7VarP.g(c7VarB, object);
                    unsafe.putObject(obj, j10, c7VarB);
                } else {
                    unsafe.putObject(obj, j10, object);
                }
                d8.k(i10, iArr[i6 + 2] & 1048575, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j10);
            if (!i(object2)) {
                c7 c7VarB2 = v7VarP.b();
                v7VarP.g(c7VarB2, object2);
                unsafe.putObject(obj, j10, c7VarB2);
                object2 = c7VarB2;
            }
            v7VarP.g(object2, object);
        }
    }

    public final void t(int i6, Object obj) {
        int i10 = this.f4381a[i6 + 2];
        long j10 = 1048575 & i10;
        if (j10 == 1048575) {
            return;
        }
        d8.k((1 << (i10 >>> 20)) | d8.f(j10, obj), j10, obj);
    }

    public final boolean u(c7 c7Var, Object obj, int i6) {
        return v(i6, c7Var) == v(i6, obj);
    }

    public final boolean v(int i6, Object obj) {
        int i10 = this.f4381a[i6 + 2];
        long j10 = i10 & 1048575;
        if (j10 != 1048575) {
            return ((1 << (i10 >>> 20)) & d8.f(j10, obj)) != 0;
        }
        int iN = n(i6);
        long j11 = iN & 1048575;
        switch (m(iN)) {
            case 0:
                return Double.doubleToRawLongBits(d8.f4140c.a(j11, obj)) != 0;
            case 1:
                return Float.floatToRawIntBits(d8.f4140c.b(j11, obj)) != 0;
            case 2:
                return d8.g(j11, obj) != 0;
            case 3:
                return d8.g(j11, obj) != 0;
            case 4:
                return d8.f(j11, obj) != 0;
            case 5:
                return d8.g(j11, obj) != 0;
            case 6:
                return d8.f(j11, obj) != 0;
            case 7:
                return d8.f4140c.g(j11, obj);
            case 8:
                Object objI = d8.i(j11, obj);
                if (objI instanceof String) {
                    return !((String) objI).isEmpty();
                }
                if (objI instanceof w6) {
                    return !w6.f4451c.equals(objI);
                }
                throw new IllegalArgumentException();
            case 9:
                return d8.i(j11, obj) != null;
            case 10:
                return !w6.f4451c.equals(d8.i(j11, obj));
            case 11:
                return d8.f(j11, obj) != 0;
            case 12:
                return d8.f(j11, obj) != 0;
            case 13:
                return d8.f(j11, obj) != 0;
            case 14:
                return d8.g(j11, obj) != 0;
            case 15:
                return d8.f(j11, obj) != 0;
            case 16:
                return d8.g(j11, obj) != 0;
            case 17:
                return d8.i(j11, obj) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final boolean w(Object obj, int i6, int i10, int i11, int i12) {
        return i10 == 1048575 ? v(i6, obj) : (i11 & i12) != 0;
    }
}
