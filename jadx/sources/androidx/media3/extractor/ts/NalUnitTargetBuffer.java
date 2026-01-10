package androidx.media3.extractor.ts;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import java.util.Arrays;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class NalUnitTargetBuffer {
    private boolean isCompleted;
    private boolean isFilling;
    public byte[] nalData;
    public int nalLength;
    private final int targetType;

    public NalUnitTargetBuffer(int i6, int i10) {
        this.targetType = i6;
        byte[] bArr = new byte[i10 + 3];
        this.nalData = bArr;
        bArr[2] = 1;
    }

    public void appendToNalUnit(byte[] bArr, int i6, int i10) {
        if (this.isFilling) {
            int i11 = i10 - i6;
            byte[] bArr2 = this.nalData;
            int length = bArr2.length;
            int i12 = this.nalLength;
            if (length < i12 + i11) {
                this.nalData = Arrays.copyOf(bArr2, (i12 + i11) * 2);
            }
            System.arraycopy(bArr, i6, this.nalData, this.nalLength, i11);
            this.nalLength += i11;
        }
    }

    public boolean endNalUnit(int i6) {
        if (!this.isFilling) {
            return false;
        }
        this.nalLength -= i6;
        this.isFilling = false;
        this.isCompleted = true;
        return true;
    }

    public boolean isCompleted() {
        return this.isCompleted;
    }

    public void reset() {
        this.isFilling = false;
        this.isCompleted = false;
    }

    public void startNalUnit(int i6) {
        Assertions.checkState(!this.isFilling);
        boolean z7 = i6 == this.targetType;
        this.isFilling = z7;
        if (z7) {
            this.nalLength = 3;
            this.isCompleted = false;
        }
    }
}
