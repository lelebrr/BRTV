package androidx.media3.exoplayer.text;

import androidx.media3.common.C;
import androidx.media3.extractor.text.CuesWithTiming;
import d7.c5;
import d7.d0;
import d7.g1;
import d7.u1;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class ReplacingCuesResolver implements CuesResolver {
    private final ArrayList<CuesWithTiming> cuesWithTimingList = new ArrayList<>();

    private int getIndexOfCuesStartingAfter(long j10) {
        for (int i6 = 0; i6 < this.cuesWithTimingList.size(); i6++) {
            if (j10 < this.cuesWithTimingList.get(i6).startTimeUs) {
                return i6;
            }
        }
        return this.cuesWithTimingList.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0025  */
    @Override // androidx.media3.exoplayer.text.CuesResolver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean addCues(androidx.media3.extractor.text.CuesWithTiming r10, long r11) {
        /*
            r9 = this;
            long r0 = r10.startTimeUs
            r2 = 0
            r3 = 1
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r6 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r6 == 0) goto Lf
            r0 = 1
            goto L10
        Lf:
            r0 = 0
        L10:
            androidx.media3.common.util.Assertions.checkArgument(r0)
            long r0 = r10.startTimeUs
            int r6 = (r0 > r11 ? 1 : (r0 == r11 ? 0 : -1))
            if (r6 > 0) goto L25
            long r0 = r10.endTimeUs
            int r6 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r6 == 0) goto L23
            int r4 = (r11 > r0 ? 1 : (r11 == r0 ? 0 : -1))
            if (r4 >= 0) goto L25
        L23:
            r0 = 1
            goto L26
        L25:
            r0 = 0
        L26:
            java.util.ArrayList<androidx.media3.extractor.text.CuesWithTiming> r1 = r9.cuesWithTimingList
            int r1 = r1.size()
            int r1 = r1 - r3
        L2d:
            if (r1 < 0) goto L58
            long r4 = r10.startTimeUs
            java.util.ArrayList<androidx.media3.extractor.text.CuesWithTiming> r6 = r9.cuesWithTimingList
            java.lang.Object r6 = r6.get(r1)
            androidx.media3.extractor.text.CuesWithTiming r6 = (androidx.media3.extractor.text.CuesWithTiming) r6
            long r6 = r6.startTimeUs
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 < 0) goto L46
            java.util.ArrayList<androidx.media3.extractor.text.CuesWithTiming> r11 = r9.cuesWithTimingList
            int r1 = r1 + r3
            r11.add(r1, r10)
            return r0
        L46:
            java.util.ArrayList<androidx.media3.extractor.text.CuesWithTiming> r4 = r9.cuesWithTimingList
            java.lang.Object r4 = r4.get(r1)
            androidx.media3.extractor.text.CuesWithTiming r4 = (androidx.media3.extractor.text.CuesWithTiming) r4
            long r4 = r4.startTimeUs
            int r6 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            if (r6 > 0) goto L55
            r0 = 0
        L55:
            int r1 = r1 + (-1)
            goto L2d
        L58:
            java.util.ArrayList<androidx.media3.extractor.text.CuesWithTiming> r11 = r9.cuesWithTimingList
            r11.add(r2, r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.text.ReplacingCuesResolver.addCues(androidx.media3.extractor.text.CuesWithTiming, long):boolean");
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public void clear() {
        this.cuesWithTimingList.clear();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public void discardCuesBeforeTimeUs(long j10) {
        int indexOfCuesStartingAfter = getIndexOfCuesStartingAfter(j10);
        if (indexOfCuesStartingAfter == 0) {
            return;
        }
        long j11 = this.cuesWithTimingList.get(indexOfCuesStartingAfter - 1).endTimeUs;
        if (j11 == C.TIME_UNSET || j11 >= j10) {
            indexOfCuesStartingAfter--;
        }
        this.cuesWithTimingList.subList(0, indexOfCuesStartingAfter).clear();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public u1 getCuesAtTimeUs(long j10) {
        int indexOfCuesStartingAfter = getIndexOfCuesStartingAfter(j10);
        if (indexOfCuesStartingAfter == 0) {
            g1 g1Var = u1.f6276b;
            return c5.f6115e;
        }
        CuesWithTiming cuesWithTiming = this.cuesWithTimingList.get(indexOfCuesStartingAfter - 1);
        long j11 = cuesWithTiming.endTimeUs;
        if (j11 == C.TIME_UNSET || j10 < j11) {
            return cuesWithTiming.cues;
        }
        g1 g1Var2 = u1.f6276b;
        return c5.f6115e;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public long getNextCueChangeTimeUs(long j10) {
        if (this.cuesWithTimingList.isEmpty()) {
            return Long.MIN_VALUE;
        }
        if (j10 < this.cuesWithTimingList.get(0).startTimeUs) {
            return this.cuesWithTimingList.get(0).startTimeUs;
        }
        for (int i6 = 1; i6 < this.cuesWithTimingList.size(); i6++) {
            CuesWithTiming cuesWithTiming = this.cuesWithTimingList.get(i6);
            if (j10 < cuesWithTiming.startTimeUs) {
                long j11 = this.cuesWithTimingList.get(i6 - 1).endTimeUs;
                return (j11 == C.TIME_UNSET || j11 <= j10 || j11 >= cuesWithTiming.startTimeUs) ? cuesWithTiming.startTimeUs : j11;
            }
        }
        long j12 = ((CuesWithTiming) d0.n(this.cuesWithTimingList)).endTimeUs;
        if (j12 == C.TIME_UNSET || j10 >= j12) {
            return Long.MIN_VALUE;
        }
        return j12;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public long getPreviousCueChangeTimeUs(long j10) {
        if (this.cuesWithTimingList.isEmpty() || j10 < this.cuesWithTimingList.get(0).startTimeUs) {
            return C.TIME_UNSET;
        }
        for (int i6 = 1; i6 < this.cuesWithTimingList.size(); i6++) {
            long j11 = this.cuesWithTimingList.get(i6).startTimeUs;
            if (j10 == j11) {
                return j11;
            }
            if (j10 < j11) {
                CuesWithTiming cuesWithTiming = this.cuesWithTimingList.get(i6 - 1);
                long j12 = cuesWithTiming.endTimeUs;
                return (j12 == C.TIME_UNSET || j12 > j10) ? cuesWithTiming.startTimeUs : j12;
            }
        }
        CuesWithTiming cuesWithTiming2 = (CuesWithTiming) d0.n(this.cuesWithTimingList);
        long j13 = cuesWithTiming2.endTimeUs;
        return (j13 == C.TIME_UNSET || j10 < j13) ? cuesWithTiming2.startTimeUs : j13;
    }
}
