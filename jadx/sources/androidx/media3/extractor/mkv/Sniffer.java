package androidx.media3.extractor.mkv;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class Sniffer {
    private static final int ID_EBML = 440786851;
    private static final int SEARCH_LENGTH = 1024;
    private int peekLength;
    private final ParsableByteArray scratch = new ParsableByteArray(8);

    private long readUint(ExtractorInput extractorInput) throws IOException {
        int i6 = 0;
        extractorInput.peekFully(this.scratch.getData(), 0, 1);
        int i10 = this.scratch.getData()[0] & 255;
        if (i10 == 0) {
            return Long.MIN_VALUE;
        }
        int i11 = 128;
        int i12 = 0;
        while ((i10 & i11) == 0) {
            i11 >>= 1;
            i12++;
        }
        int i13 = i10 & (~i11);
        extractorInput.peekFully(this.scratch.getData(), 1, i12);
        while (i6 < i12) {
            i6++;
            i13 = (this.scratch.getData()[i6] & 255) + (i13 << 8);
        }
        this.peekLength = i12 + 1 + this.peekLength;
        return i13;
    }

    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        long length = extractorInput.getLength();
        long j10 = 1024;
        if (length != -1 && length <= 1024) {
            j10 = length;
        }
        int i6 = (int) j10;
        extractorInput.peekFully(this.scratch.getData(), 0, 4);
        long unsignedInt = this.scratch.readUnsignedInt();
        this.peekLength = 4;
        while (unsignedInt != 440786851) {
            int i10 = this.peekLength + 1;
            this.peekLength = i10;
            if (i10 == i6) {
                return false;
            }
            extractorInput.peekFully(this.scratch.getData(), 0, 1);
            unsignedInt = ((unsignedInt << 8) & (-256)) | (this.scratch.getData()[0] & 255);
        }
        long uint = readUint(extractorInput);
        long j11 = this.peekLength;
        if (uint == Long.MIN_VALUE) {
            return false;
        }
        if (length != -1 && j11 + uint >= length) {
            return false;
        }
        while (true) {
            int i11 = this.peekLength;
            long j12 = j11 + uint;
            if (i11 >= j12) {
                return ((long) i11) == j12;
            }
            if (readUint(extractorInput) == Long.MIN_VALUE) {
                return false;
            }
            long uint2 = readUint(extractorInput);
            if (uint2 < 0 || uint2 > 2147483647L) {
                break;
            }
            if (uint2 != 0) {
                int i12 = (int) uint2;
                extractorInput.advancePeekPosition(i12);
                this.peekLength += i12;
            }
        }
        return false;
    }
}
