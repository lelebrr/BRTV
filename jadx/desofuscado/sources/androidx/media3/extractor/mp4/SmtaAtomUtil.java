package androidx.media3.extractor.mp4;

import androidx.media3.common.C;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.metadata.mp4.SmtaMetadataEntry;
import androidx.media3.extractor.ts.PsExtractor;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class SmtaAtomUtil {
    private static final int CAMCORDER_FRC_SUPERSLOW_MOTION = 9;
    private static final int CAMCORDER_FRC_SUPERSLOW_MOTION_HEVC = 22;
    private static final int CAMCORDER_NORMAL = 0;
    private static final int CAMCORDER_QFRC_SUPERSLOW_MOTION = 23;
    private static final int CAMCORDER_SINGLE_SUPERSLOW_MOTION = 7;
    private static final int CAMCORDER_SLOW_MOTION_V2 = 12;
    private static final int CAMCORDER_SLOW_MOTION_V2_120 = 13;
    private static final int CAMCORDER_SLOW_MOTION_V2_HEVC = 21;
    private static final int NO_VALUE = -1;

    private SmtaAtomUtil() {
    }

    private static int getCaptureFrameRate(int i6, ParsableByteArray parsableByteArray, int i10) {
        if (i6 == 12) {
            return PsExtractor.VIDEO_STREAM_MASK;
        }
        if (i6 == 13) {
            return 120;
        }
        if (i6 == 21 && parsableByteArray.bytesLeft() >= 8 && parsableByteArray.getPosition() + 8 <= i10) {
            int i11 = parsableByteArray.readInt();
            int i12 = parsableByteArray.readInt();
            if (i11 >= 12 && i12 == 1936877170) {
                return parsableByteArray.readUnsignedFixedPoint1616();
            }
        }
        return C.RATE_UNSET_INT;
    }

    public static Metadata parseSmta(ParsableByteArray parsableByteArray, int i6) {
        parsableByteArray.skipBytes(12);
        while (parsableByteArray.getPosition() < i6) {
            int position = parsableByteArray.getPosition();
            int i10 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1935766900) {
                if (i10 < 16) {
                    return null;
                }
                parsableByteArray.skipBytes(4);
                int i11 = -1;
                int i12 = 0;
                for (int i13 = 0; i13 < 2; i13++) {
                    int unsignedByte = parsableByteArray.readUnsignedByte();
                    int unsignedByte2 = parsableByteArray.readUnsignedByte();
                    if (unsignedByte == 0) {
                        i11 = unsignedByte2;
                    } else if (unsignedByte == 1) {
                        i12 = unsignedByte2;
                    }
                }
                int captureFrameRate = getCaptureFrameRate(i11, parsableByteArray, i6);
                if (captureFrameRate == -2147483647) {
                    return null;
                }
                return new Metadata(new SmtaMetadataEntry(captureFrameRate, i12));
            }
            parsableByteArray.setPosition(position + i10);
        }
        return null;
    }
}
