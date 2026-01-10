package androidx.media3.extractor.text;

import androidx.media3.common.C;
import androidx.media3.common.g;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import d7.a5;
import d7.b5;
import d7.c0;
import d7.u1;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class CuesWithTimingSubtitle implements Subtitle {
    private static final b5 CUES_BY_START_TIME_ASCENDING;
    private static final String TAG = "CuesWithTimingSubtitle";
    private final u1 eventCues;
    private final long[] eventTimesUs;

    static {
        a5 a5Var = a5.f6089a;
        g gVar = new g(18);
        a5Var.getClass();
        CUES_BY_START_TIME_ASCENDING = new c0(gVar, a5Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public CuesWithTimingSubtitle(java.util.List<androidx.media3.extractor.text.CuesWithTiming> r18) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.text.CuesWithTimingSubtitle.<init>(java.util.List):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Comparable lambda$static$0(CuesWithTiming cuesWithTiming) {
        return Long.valueOf(normalizeUnsetStartTimeToZero(cuesWithTiming.startTimeUs));
    }

    private static long normalizeUnsetStartTimeToZero(long j10) {
        if (j10 == C.TIME_UNSET) {
            return 0L;
        }
        return j10;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public long getEventTime(int i6) {
        Assertions.checkArgument(i6 < this.eventCues.size());
        return this.eventTimesUs[i6];
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getEventTimeCount() {
        return this.eventCues.size();
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getNextEventTimeIndex(long j10) {
        int iBinarySearchCeil = Util.binarySearchCeil(this.eventTimesUs, j10, false, false);
        if (iBinarySearchCeil < this.eventCues.size()) {
            return iBinarySearchCeil;
        }
        return -1;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public u1 getCues(long j10) {
        int iBinarySearchFloor = Util.binarySearchFloor(this.eventTimesUs, j10, true, false);
        return iBinarySearchFloor == -1 ? u1.q() : (u1) this.eventCues.get(iBinarySearchFloor);
    }
}
