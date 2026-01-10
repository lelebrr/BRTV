package androidx.media3.container;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class ParsableNalUnitBitArray {
    private int bitOffset;
    private int byteLimit;
    private int byteOffset;
    private byte[] data;

    public ParsableNalUnitBitArray(byte[] bArr, int i6, int i10) {
        reset(bArr, i6, i10);
    }

    private void assertValidOffset() {
        int i6;
        int i10 = this.byteOffset;
        Assertions.checkState(i10 >= 0 && (i10 < (i6 = this.byteLimit) || (i10 == i6 && this.bitOffset == 0)));
    }

    private int readExpGolombCodeNum() {
        int i6 = 0;
        while (!readBit()) {
            i6++;
        }
        return ((1 << i6) - 1) + (i6 > 0 ? readBits(i6) : 0);
    }

    private boolean shouldSkipByte(int i6) {
        if (2 <= i6 && i6 < this.byteLimit) {
            byte[] bArr = this.data;
            if (bArr[i6] == 3 && bArr[i6 - 2] == 0 && bArr[i6 - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    public void byteAlign() {
        int i6 = this.bitOffset;
        if (i6 > 0) {
            skipBits(8 - i6);
        }
    }

    public boolean canReadBits(int i6) {
        int i10 = this.byteOffset;
        int i11 = i6 / 8;
        int i12 = i10 + i11;
        int i13 = (this.bitOffset + i6) - (i11 * 8);
        if (i13 > 7) {
            i12++;
            i13 -= 8;
        }
        while (true) {
            i10++;
            if (i10 > i12 || i12 >= this.byteLimit) {
                break;
            }
            if (shouldSkipByte(i10)) {
                i12++;
                i10 += 2;
            }
        }
        int i14 = this.byteLimit;
        if (i12 >= i14) {
            return i12 == i14 && i13 == 0;
        }
        return true;
    }

    public boolean canReadExpGolombCodedNum() {
        int i6 = this.byteOffset;
        int i10 = this.bitOffset;
        int i11 = 0;
        while (this.byteOffset < this.byteLimit && !readBit()) {
            i11++;
        }
        boolean z7 = this.byteOffset == this.byteLimit;
        this.byteOffset = i6;
        this.bitOffset = i10;
        return !z7 && canReadBits((i11 * 2) + 1);
    }

    public boolean readBit() {
        boolean z7 = (this.data[this.byteOffset] & (128 >> this.bitOffset)) != 0;
        skipBit();
        return z7;
    }

    public int readBits(int i6) {
        int i10;
        this.bitOffset += i6;
        int i11 = 0;
        while (true) {
            i10 = this.bitOffset;
            if (i10 <= 8) {
                break;
            }
            int i12 = i10 - 8;
            this.bitOffset = i12;
            byte[] bArr = this.data;
            int i13 = this.byteOffset;
            i11 |= (bArr[i13] & 255) << i12;
            if (!shouldSkipByte(i13 + 1)) {
                i = 1;
            }
            this.byteOffset = i13 + i;
        }
        byte[] bArr2 = this.data;
        int i14 = this.byteOffset;
        int i15 = ((-1) >>> (32 - i6)) & (i11 | ((bArr2[i14] & 255) >> (8 - i10)));
        if (i10 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i14 + (shouldSkipByte(i14 + 1) ? 2 : 1);
        }
        assertValidOffset();
        return i15;
    }

    public int readSignedExpGolombCodedInt() {
        int expGolombCodeNum = readExpGolombCodeNum();
        return ((expGolombCodeNum + 1) / 2) * (expGolombCodeNum % 2 == 0 ? -1 : 1);
    }

    public int readUnsignedExpGolombCodedInt() {
        return readExpGolombCodeNum();
    }

    public void reset(byte[] bArr, int i6, int i10) {
        this.data = bArr;
        this.byteOffset = i6;
        this.byteLimit = i10;
        this.bitOffset = 0;
        assertValidOffset();
    }

    public void skipBit() {
        int i6 = this.bitOffset + 1;
        this.bitOffset = i6;
        if (i6 == 8) {
            this.bitOffset = 0;
            int i10 = this.byteOffset;
            this.byteOffset = i10 + (shouldSkipByte(i10 + 1) ? 2 : 1);
        }
        assertValidOffset();
    }

    public void skipBits(int i6) {
        int i10 = this.byteOffset;
        int i11 = i6 / 8;
        int i12 = i10 + i11;
        this.byteOffset = i12;
        int i13 = (i6 - (i11 * 8)) + this.bitOffset;
        this.bitOffset = i13;
        if (i13 > 7) {
            this.byteOffset = i12 + 1;
            this.bitOffset = i13 - 8;
        }
        while (true) {
            i10++;
            if (i10 > this.byteOffset) {
                assertValidOffset();
                return;
            } else if (shouldSkipByte(i10)) {
                this.byteOffset++;
                i10 += 2;
            }
        }
    }
}
