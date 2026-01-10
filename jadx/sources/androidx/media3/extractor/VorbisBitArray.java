package androidx.media3.extractor;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class VorbisBitArray {
    private int bitOffset;
    private final int byteLimit;
    private int byteOffset;
    private final byte[] data;

    public VorbisBitArray(byte[] bArr) {
        this.data = bArr;
        this.byteLimit = bArr.length;
    }

    private void assertValidOffset() {
        int i6;
        int i10 = this.byteOffset;
        Assertions.checkState(i10 >= 0 && (i10 < (i6 = this.byteLimit) || (i10 == i6 && this.bitOffset == 0)));
    }

    public int bitsLeft() {
        return ((this.byteLimit - this.byteOffset) * 8) - this.bitOffset;
    }

    public int getPosition() {
        return (this.byteOffset * 8) + this.bitOffset;
    }

    public boolean readBit() {
        boolean z7 = (((this.data[this.byteOffset] & 255) >> this.bitOffset) & 1) == 1;
        skipBits(1);
        return z7;
    }

    public int readBits(int i6) {
        int i10 = this.byteOffset;
        int iMin = Math.min(i6, 8 - this.bitOffset);
        int i11 = i10 + 1;
        int i12 = ((this.data[i10] & 255) >> this.bitOffset) & (255 >> (8 - iMin));
        while (iMin < i6) {
            i12 |= (this.data[i11] & 255) << iMin;
            iMin += 8;
            i11++;
        }
        int i13 = i12 & ((-1) >>> (32 - i6));
        skipBits(i6);
        return i13;
    }

    public void reset() {
        this.byteOffset = 0;
        this.bitOffset = 0;
    }

    public void setPosition(int i6) {
        int i10 = i6 / 8;
        this.byteOffset = i10;
        this.bitOffset = i6 - (i10 * 8);
        assertValidOffset();
    }

    public void skipBits(int i6) {
        int i10 = i6 / 8;
        int i11 = this.byteOffset + i10;
        this.byteOffset = i11;
        int i12 = (i6 - (i10 * 8)) + this.bitOffset;
        this.bitOffset = i12;
        if (i12 > 7) {
            this.byteOffset = i11 + 1;
            this.bitOffset = i12 - 8;
        }
        assertValidOffset();
    }
}
