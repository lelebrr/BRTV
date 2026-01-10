package androidx.media3.extractor.metadata.scte35;

import a.e;
import androidx.media3.common.C;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class SpliceInsertCommand extends SpliceCommand {
    public final boolean autoReturn;
    public final int availNum;
    public final int availsExpected;
    public final long breakDurationUs;
    public final List<ComponentSplice> componentSpliceList;
    public final boolean outOfNetworkIndicator;
    public final boolean programSpliceFlag;
    public final long programSplicePlaybackPositionUs;
    public final long programSplicePts;
    public final boolean spliceEventCancelIndicator;
    public final long spliceEventId;
    public final boolean spliceImmediateFlag;
    public final int uniqueProgramId;

    /* compiled from: MyApplication */
    public static final class ComponentSplice {
        public final long componentSplicePlaybackPositionUs;
        public final long componentSplicePts;
        public final int componentTag;

        private ComponentSplice(int i6, long j10, long j11) {
            this.componentTag = i6;
            this.componentSplicePts = j10;
            this.componentSplicePlaybackPositionUs = j11;
        }
    }

    private SpliceInsertCommand(long j10, boolean z7, boolean z10, boolean z11, boolean z12, long j11, long j12, List<ComponentSplice> list, boolean z13, long j13, int i6, int i10, int i11) {
        this.spliceEventId = j10;
        this.spliceEventCancelIndicator = z7;
        this.outOfNetworkIndicator = z10;
        this.programSpliceFlag = z11;
        this.spliceImmediateFlag = z12;
        this.programSplicePts = j11;
        this.programSplicePlaybackPositionUs = j12;
        this.componentSpliceList = Collections.unmodifiableList(list);
        this.autoReturn = z13;
        this.breakDurationUs = j13;
        this.uniqueProgramId = i6;
        this.availNum = i10;
        this.availsExpected = i11;
    }

    public static SpliceInsertCommand parseFromSection(ParsableByteArray parsableByteArray, long j10, TimestampAdjuster timestampAdjuster) {
        List list;
        boolean z7;
        boolean z10;
        long j11;
        boolean z11;
        long j12;
        int unsignedShort;
        int unsignedByte;
        int unsignedByte2;
        boolean z12;
        boolean z13;
        long unsignedInt;
        long unsignedInt2 = parsableByteArray.readUnsignedInt();
        boolean z14 = (parsableByteArray.readUnsignedByte() & 128) != 0;
        List listEmptyList = Collections.emptyList();
        if (z14) {
            list = listEmptyList;
            z7 = false;
            z10 = false;
            j11 = C.TIME_UNSET;
            z11 = false;
            j12 = C.TIME_UNSET;
            unsignedShort = 0;
            unsignedByte = 0;
            unsignedByte2 = 0;
            z12 = false;
        } else {
            int unsignedByte3 = parsableByteArray.readUnsignedByte();
            boolean z15 = (unsignedByte3 & 128) != 0;
            boolean z16 = (unsignedByte3 & 64) != 0;
            boolean z17 = (unsignedByte3 & 32) != 0;
            boolean z18 = (unsignedByte3 & 16) != 0;
            long spliceTime = (!z16 || z18) ? C.TIME_UNSET : TimeSignalCommand.parseSpliceTime(parsableByteArray, j10);
            if (!z16) {
                int unsignedByte4 = parsableByteArray.readUnsignedByte();
                ArrayList arrayList = new ArrayList(unsignedByte4);
                for (int i6 = 0; i6 < unsignedByte4; i6++) {
                    int unsignedByte5 = parsableByteArray.readUnsignedByte();
                    long spliceTime2 = !z18 ? TimeSignalCommand.parseSpliceTime(parsableByteArray, j10) : C.TIME_UNSET;
                    arrayList.add(new ComponentSplice(unsignedByte5, spliceTime2, timestampAdjuster.adjustTsTimestamp(spliceTime2)));
                }
                listEmptyList = arrayList;
            }
            if (z17) {
                long unsignedByte6 = parsableByteArray.readUnsignedByte();
                boolean z19 = (128 & unsignedByte6) != 0;
                unsignedInt = ((((unsignedByte6 & 1) << 32) | parsableByteArray.readUnsignedInt()) * 1000) / 90;
                z13 = z19;
            } else {
                z13 = false;
                unsignedInt = C.TIME_UNSET;
            }
            unsignedShort = parsableByteArray.readUnsignedShort();
            z12 = z16;
            unsignedByte = parsableByteArray.readUnsignedByte();
            unsignedByte2 = parsableByteArray.readUnsignedByte();
            list = listEmptyList;
            long j13 = spliceTime;
            z11 = z13;
            j12 = unsignedInt;
            z10 = z18;
            z7 = z15;
            j11 = j13;
        }
        return new SpliceInsertCommand(unsignedInt2, z14, z7, z12, z10, j11, timestampAdjuster.adjustTsTimestamp(j11), list, z11, j12, unsignedShort, unsignedByte, unsignedByte2);
    }

    @Override // androidx.media3.extractor.metadata.scte35.SpliceCommand
    public String toString() {
        StringBuilder sb = new StringBuilder("SCTE-35 SpliceInsertCommand { programSplicePts=");
        sb.append(this.programSplicePts);
        sb.append(", programSplicePlaybackPositionUs= ");
        return e.s(sb, this.programSplicePlaybackPositionUs, " }");
    }
}
