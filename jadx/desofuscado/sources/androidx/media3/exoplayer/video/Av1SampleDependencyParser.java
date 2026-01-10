package androidx.media3.exoplayer.video;

import androidx.media3.container.ObuParser;
import java.nio.ByteBuffer;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class Av1SampleDependencyParser {
    private static final int MAX_OBU_COUNT_FOR_PARTIAL_SKIP = 8;
    private ObuParser.SequenceHeader sequenceHeader;

    private boolean canSkipObu(ObuParser.Obu obu, boolean z7) {
        ObuParser.SequenceHeader sequenceHeader;
        ObuParser.FrameHeader frameHeader;
        int i6 = obu.type;
        if (i6 == 2 || i6 == 15) {
            return true;
        }
        if (i6 != 3 || z7) {
            return ((i6 != 6 && i6 != 3) || (sequenceHeader = this.sequenceHeader) == null || (frameHeader = ObuParser.FrameHeader.parse(sequenceHeader, obu)) == null || frameHeader.isDependedOn()) ? false : true;
        }
        return false;
    }

    private void updateSequenceHeaders(List<ObuParser.Obu> list) {
        for (int i6 = 0; i6 < list.size(); i6++) {
            if (list.get(i6).type == 1) {
                this.sequenceHeader = ObuParser.SequenceHeader.parse(list.get(i6));
            }
        }
    }

    public void queueInputBuffer(ByteBuffer byteBuffer) {
        updateSequenceHeaders(ObuParser.split(byteBuffer));
    }

    public void reset() {
        this.sequenceHeader = null;
    }

    public int sampleLimitAfterSkippingNonReferenceFrame(ByteBuffer byteBuffer, boolean z7) {
        List<ObuParser.Obu> listSplit = ObuParser.split(byteBuffer);
        updateSequenceHeaders(listSplit);
        int size = listSplit.size() - 1;
        int i6 = 0;
        while (size >= 0 && canSkipObu(listSplit.get(size), z7)) {
            if (listSplit.get(size).type == 6 || listSplit.get(size).type == 3) {
                i6++;
            }
            size--;
        }
        return (i6 > 1 || size + 1 >= 8) ? byteBuffer.limit() : size >= 0 ? listSplit.get(size).payload.limit() : byteBuffer.position();
    }
}
