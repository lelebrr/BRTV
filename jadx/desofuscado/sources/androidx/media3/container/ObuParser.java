package androidx.media3.container;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.UnstableApi;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class ObuParser {
    public static final int OBU_FRAME = 6;
    public static final int OBU_FRAME_HEADER = 3;
    public static final int OBU_PADDING = 15;
    public static final int OBU_SEQUENCE_HEADER = 1;
    public static final int OBU_TEMPORAL_DELIMITER = 2;

    /* compiled from: MyApplication */
    public static final class FrameHeader {
        private static final int FRAME_TYPE_INTRA_ONLY_FRAME = 2;
        private static final int FRAME_TYPE_KEY_FRAME = 0;
        private static final int FRAME_TYPE_SWITCH_FRAME = 3;
        private static final int PROBE_BYTES = 4;
        private final boolean isDependedOn;

        private FrameHeader(SequenceHeader sequenceHeader, Obu obu) throws NotYetImplementedException {
            int i6 = obu.type;
            Assertions.checkArgument(i6 == 6 || i6 == 3);
            byte[] bArr = new byte[Math.min(4, obu.payload.remaining())];
            obu.payload.asReadOnlyBuffer().get(bArr);
            ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
            ObuParser.throwWhenFeatureRequired(sequenceHeader.reducedStillPictureHeader);
            if (parsableBitArray.readBit()) {
                this.isDependedOn = false;
                return;
            }
            int bits = parsableBitArray.readBits(2);
            boolean bit = parsableBitArray.readBit();
            ObuParser.throwWhenFeatureRequired(sequenceHeader.decoderModelInfoPresentFlag);
            if (!bit) {
                this.isDependedOn = true;
                return;
            }
            boolean bit2 = (bits == 3 || bits == 0) ? true : parsableBitArray.readBit();
            parsableBitArray.skipBit();
            ObuParser.throwWhenFeatureRequired(!sequenceHeader.seqForceScreenContentTools);
            if (parsableBitArray.readBit()) {
                ObuParser.throwWhenFeatureRequired(!sequenceHeader.seqForceIntegerMv);
                parsableBitArray.skipBit();
            }
            ObuParser.throwWhenFeatureRequired(sequenceHeader.frameIdNumbersPresentFlag);
            if (bits != 3) {
                parsableBitArray.skipBit();
            }
            parsableBitArray.skipBits(sequenceHeader.orderHintBits);
            if (bits != 2 && bits != 0 && !bit2) {
                parsableBitArray.skipBits(3);
            }
            this.isDependedOn = ((bits == 3 || bits == 0) ? 255 : parsableBitArray.readBits(8)) != 0;
        }

        public static FrameHeader parse(SequenceHeader sequenceHeader, Obu obu) {
            try {
                return new FrameHeader(sequenceHeader, obu);
            } catch (NotYetImplementedException unused) {
                return null;
            }
        }

        public boolean isDependedOn() {
            return this.isDependedOn;
        }
    }

    /* compiled from: MyApplication */
    public static class NotYetImplementedException extends Exception {
        private NotYetImplementedException() {
        }
    }

    /* compiled from: MyApplication */
    public static final class Obu {
        public final ByteBuffer payload;
        public final int type;

        private Obu(int i6, ByteBuffer byteBuffer) {
            this.type = i6;
            this.payload = byteBuffer;
        }
    }

    /* compiled from: MyApplication */
    public static final class SequenceHeader {
        public final boolean decoderModelInfoPresentFlag;
        public final boolean frameIdNumbersPresentFlag;
        public final int orderHintBits;
        public final boolean reducedStillPictureHeader;
        public final boolean seqForceIntegerMv;
        public final boolean seqForceScreenContentTools;

        private SequenceHeader(Obu obu) throws NotYetImplementedException {
            Assertions.checkArgument(obu.type == 1);
            byte[] bArr = new byte[obu.payload.remaining()];
            obu.payload.asReadOnlyBuffer().get(bArr);
            ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
            parsableBitArray.skipBits(4);
            boolean bit = parsableBitArray.readBit();
            this.reducedStillPictureHeader = bit;
            ObuParser.throwWhenFeatureRequired(bit);
            if (parsableBitArray.readBit()) {
                skipTimingInfo(parsableBitArray);
                boolean bit2 = parsableBitArray.readBit();
                this.decoderModelInfoPresentFlag = bit2;
                if (bit2) {
                    parsableBitArray.skipBits(47);
                }
            } else {
                this.decoderModelInfoPresentFlag = false;
            }
            boolean bit3 = parsableBitArray.readBit();
            int bits = parsableBitArray.readBits(5);
            for (int i6 = 0; i6 <= bits; i6++) {
                parsableBitArray.skipBits(12);
                if (parsableBitArray.readBits(5) > 7) {
                    parsableBitArray.skipBit();
                }
                ObuParser.throwWhenFeatureRequired(this.decoderModelInfoPresentFlag);
                if (bit3 && parsableBitArray.readBit()) {
                    parsableBitArray.skipBits(4);
                }
            }
            int bits2 = parsableBitArray.readBits(4);
            int bits3 = parsableBitArray.readBits(4);
            parsableBitArray.skipBits(bits2 + 1);
            parsableBitArray.skipBits(bits3 + 1);
            boolean bit4 = parsableBitArray.readBit();
            this.frameIdNumbersPresentFlag = bit4;
            ObuParser.throwWhenFeatureRequired(bit4);
            parsableBitArray.skipBits(3);
            parsableBitArray.skipBits(4);
            boolean bit5 = parsableBitArray.readBit();
            if (bit5) {
                parsableBitArray.skipBits(2);
            }
            if (parsableBitArray.readBit()) {
                this.seqForceScreenContentTools = true;
            } else {
                this.seqForceScreenContentTools = parsableBitArray.readBit();
            }
            if (!this.seqForceScreenContentTools || parsableBitArray.readBit()) {
                this.seqForceIntegerMv = true;
            } else {
                this.seqForceIntegerMv = parsableBitArray.readBit();
            }
            if (bit5) {
                this.orderHintBits = parsableBitArray.readBits(3) + 1;
            } else {
                this.orderHintBits = 0;
            }
        }

        public static SequenceHeader parse(Obu obu) {
            try {
                return new SequenceHeader(obu);
            } catch (NotYetImplementedException unused) {
                return null;
            }
        }

        private static void skipTimingInfo(ParsableBitArray parsableBitArray) {
            parsableBitArray.skipBits(64);
            if (parsableBitArray.readBit()) {
                ObuParser.skipUvlc(parsableBitArray);
            }
        }
    }

    private ObuParser() {
    }

    private static int leb128(ByteBuffer byteBuffer) {
        int i6 = 0;
        for (int i10 = 0; i10 < 8; i10++) {
            byte b8 = byteBuffer.get();
            i6 |= (b8 & 127) << (i10 * 7);
            if ((b8 & 128) == 0) {
                break;
            }
        }
        return i6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void skipUvlc(ParsableBitArray parsableBitArray) {
        int i6 = 0;
        while (!parsableBitArray.readBit()) {
            i6++;
        }
        if (i6 < 32) {
            parsableBitArray.skipBits(i6);
        }
    }

    public static List<Obu> split(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        ArrayList arrayList = new ArrayList();
        while (byteBufferAsReadOnlyBuffer.hasRemaining()) {
            byte b8 = byteBufferAsReadOnlyBuffer.get();
            int i6 = (b8 >> 3) & 15;
            if (((b8 >> 2) & 1) != 0) {
                byteBufferAsReadOnlyBuffer.get();
            }
            int iLeb128 = ((b8 >> 1) & 1) != 0 ? leb128(byteBufferAsReadOnlyBuffer) : byteBufferAsReadOnlyBuffer.remaining();
            ByteBuffer byteBufferDuplicate = byteBufferAsReadOnlyBuffer.duplicate();
            byteBufferDuplicate.limit(byteBufferAsReadOnlyBuffer.position() + iLeb128);
            arrayList.add(new Obu(i6, byteBufferDuplicate));
            byteBufferAsReadOnlyBuffer.position(byteBufferAsReadOnlyBuffer.position() + iLeb128);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void throwWhenFeatureRequired(boolean z7) throws NotYetImplementedException {
        if (z7) {
            throw new NotYetImplementedException();
        }
    }
}
