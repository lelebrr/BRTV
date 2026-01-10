package androidx.media3.extractor.metadata.scte35;

import androidx.media3.common.C;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class SpliceScheduleCommand extends SpliceCommand {
    public final List<Event> events;

    /* compiled from: MyApplication */
    public static final class ComponentSplice {
        public final int componentTag;
        public final long utcSpliceTime;

        private ComponentSplice(int i6, long j10) {
            this.componentTag = i6;
            this.utcSpliceTime = j10;
        }
    }

    /* compiled from: MyApplication */
    public static final class Event {
        public final boolean autoReturn;
        public final int availNum;
        public final int availsExpected;
        public final long breakDurationUs;
        public final List<ComponentSplice> componentSpliceList;
        public final boolean outOfNetworkIndicator;
        public final boolean programSpliceFlag;
        public final boolean spliceEventCancelIndicator;
        public final long spliceEventId;
        public final int uniqueProgramId;
        public final long utcSpliceTime;

        private Event(long j10, boolean z7, boolean z10, boolean z11, List<ComponentSplice> list, long j11, boolean z12, long j12, int i6, int i10, int i11) {
            this.spliceEventId = j10;
            this.spliceEventCancelIndicator = z7;
            this.outOfNetworkIndicator = z10;
            this.programSpliceFlag = z11;
            this.componentSpliceList = Collections.unmodifiableList(list);
            this.utcSpliceTime = j11;
            this.autoReturn = z12;
            this.breakDurationUs = j12;
            this.uniqueProgramId = i6;
            this.availNum = i10;
            this.availsExpected = i11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Event parseFromSection(ParsableByteArray parsableByteArray) {
            ArrayList arrayList;
            boolean z7;
            long j10;
            boolean z10;
            long j11;
            int i6;
            int i10;
            int unsignedByte;
            boolean z11;
            boolean z12;
            long unsignedInt;
            long unsignedInt2 = parsableByteArray.readUnsignedInt();
            boolean z13 = (parsableByteArray.readUnsignedByte() & 128) != 0;
            ArrayList arrayList2 = new ArrayList();
            if (z13) {
                arrayList = arrayList2;
                z7 = false;
                j10 = C.TIME_UNSET;
                z10 = false;
                j11 = C.TIME_UNSET;
                i6 = 0;
                i10 = 0;
                unsignedByte = 0;
                z11 = false;
            } else {
                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                boolean z14 = (unsignedByte2 & 128) != 0;
                boolean z15 = (unsignedByte2 & 64) != 0;
                boolean z16 = (unsignedByte2 & 32) != 0;
                long unsignedInt3 = z15 ? parsableByteArray.readUnsignedInt() : C.TIME_UNSET;
                if (!z15) {
                    int unsignedByte3 = parsableByteArray.readUnsignedByte();
                    ArrayList arrayList3 = new ArrayList(unsignedByte3);
                    for (int i11 = 0; i11 < unsignedByte3; i11++) {
                        arrayList3.add(new ComponentSplice(parsableByteArray.readUnsignedByte(), parsableByteArray.readUnsignedInt()));
                    }
                    arrayList2 = arrayList3;
                }
                if (z16) {
                    long unsignedByte4 = parsableByteArray.readUnsignedByte();
                    boolean z17 = (128 & unsignedByte4) != 0;
                    unsignedInt = ((((unsignedByte4 & 1) << 32) | parsableByteArray.readUnsignedInt()) * 1000) / 90;
                    z12 = z17;
                } else {
                    z12 = false;
                    unsignedInt = C.TIME_UNSET;
                }
                int unsignedShort = parsableByteArray.readUnsignedShort();
                int unsignedByte5 = parsableByteArray.readUnsignedByte();
                z11 = z15;
                unsignedByte = parsableByteArray.readUnsignedByte();
                j11 = unsignedInt;
                arrayList = arrayList2;
                long j12 = unsignedInt3;
                i6 = unsignedShort;
                i10 = unsignedByte5;
                j10 = j12;
                boolean z18 = z14;
                z10 = z12;
                z7 = z18;
            }
            return new Event(unsignedInt2, z13, z7, z11, arrayList, j10, z10, j11, i6, i10, unsignedByte);
        }
    }

    private SpliceScheduleCommand(List<Event> list) {
        this.events = Collections.unmodifiableList(list);
    }

    public static SpliceScheduleCommand parseFromSection(ParsableByteArray parsableByteArray) {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        ArrayList arrayList = new ArrayList(unsignedByte);
        for (int i6 = 0; i6 < unsignedByte; i6++) {
            arrayList.add(Event.parseFromSection(parsableByteArray));
        }
        return new SpliceScheduleCommand(arrayList);
    }
}
