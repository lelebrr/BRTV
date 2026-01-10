package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Util;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class FixedSampleSizeRechunker {
    private static final int MAX_SAMPLE_SIZE = 8192;

    /* compiled from: MyApplication */
    public static final class Results {
        public final long duration;
        public final int[] flags;
        public final int maximumSize;
        public final long[] offsets;
        public final int[] sizes;
        public final long[] timestamps;
        public final long totalSize;

        private Results(long[] jArr, int[] iArr, int i6, long[] jArr2, int[] iArr2, long j10, long j11) {
            this.offsets = jArr;
            this.sizes = iArr;
            this.maximumSize = i6;
            this.timestamps = jArr2;
            this.flags = iArr2;
            this.duration = j10;
            this.totalSize = j11;
        }
    }

    private FixedSampleSizeRechunker() {
    }

    public static Results rechunk(int i6, long[] jArr, int[] iArr, long j10) {
        int[] iArr2 = iArr;
        int i10 = 8192 / i6;
        int i11 = 0;
        int iCeilDivide = 0;
        for (int i12 : iArr2) {
            iCeilDivide += Util.ceilDivide(i12, i10);
        }
        long[] jArr2 = new long[iCeilDivide];
        int[] iArr3 = new int[iCeilDivide];
        long[] jArr3 = new long[iCeilDivide];
        int[] iArr4 = new int[iCeilDivide];
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int iMax = 0;
        while (i11 < iArr2.length) {
            int i16 = iArr2[i11];
            long j11 = jArr[i11];
            while (i16 > 0) {
                int iMin = Math.min(i10, i16);
                jArr2[i15] = j11;
                int i17 = i6 * iMin;
                iArr3[i15] = i17;
                i14 += i17;
                iMax = Math.max(iMax, i17);
                jArr3[i15] = i13 * j10;
                iArr4[i15] = 1;
                j11 += iArr3[i15];
                i13 += iMin;
                i16 -= iMin;
                i15++;
                i10 = i10;
            }
            i11++;
            iArr2 = iArr;
        }
        return new Results(jArr2, iArr3, iMax, jArr3, iArr4, j10 * i13, i14);
    }
}
