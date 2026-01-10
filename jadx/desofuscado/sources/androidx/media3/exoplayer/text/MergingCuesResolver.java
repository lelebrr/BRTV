package androidx.media3.exoplayer.text;

import androidx.media3.common.C;
import androidx.media3.common.util.Assertions;
import androidx.media3.extractor.text.CuesWithTiming;
import b7.i;
import d7.a5;
import d7.b5;
import d7.c0;
import d7.c5;
import d7.j5;
import d7.p0;
import d7.s1;
import d7.u1;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class MergingCuesResolver implements CuesResolver {
    private static final b5 CUES_DISPLAY_PRIORITY_COMPARATOR;
    private final List<CuesWithTiming> cuesWithTimingList = new ArrayList();

    static {
        a5 a5Var = a5.f6089a;
        final int i6 = 0;
        i iVar = new i() { // from class: androidx.media3.exoplayer.text.a
            @Override // b7.i
            public final Object apply(Object obj) {
                CuesWithTiming cuesWithTiming = (CuesWithTiming) obj;
                switch (i6) {
                    case 0:
                        return MergingCuesResolver.lambda$static$0(cuesWithTiming);
                    default:
                        return MergingCuesResolver.lambda$static$1(cuesWithTiming);
                }
            }
        };
        a5Var.getClass();
        c0 c0Var = new c0(iVar, a5Var);
        j5 j5Var = j5.f6188a;
        final int i10 = 1;
        i iVar2 = new i() { // from class: androidx.media3.exoplayer.text.a
            @Override // b7.i
            public final Object apply(Object obj) {
                CuesWithTiming cuesWithTiming = (CuesWithTiming) obj;
                switch (i10) {
                    case 0:
                        return MergingCuesResolver.lambda$static$0(cuesWithTiming);
                    default:
                        return MergingCuesResolver.lambda$static$1(cuesWithTiming);
                }
            }
        };
        j5Var.getClass();
        CUES_DISPLAY_PRIORITY_COMPARATOR = new p0(c0Var, new c0(iVar2, j5Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$static$0(CuesWithTiming cuesWithTiming) {
        return Long.valueOf(cuesWithTiming.startTimeUs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$static$1(CuesWithTiming cuesWithTiming) {
        return Long.valueOf(cuesWithTiming.durationUs);
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public boolean addCues(CuesWithTiming cuesWithTiming, long j10) {
        Assertions.checkArgument(cuesWithTiming.startTimeUs != C.TIME_UNSET);
        Assertions.checkArgument(cuesWithTiming.durationUs != C.TIME_UNSET);
        boolean z7 = cuesWithTiming.startTimeUs <= j10 && j10 < cuesWithTiming.endTimeUs;
        for (int size = this.cuesWithTimingList.size() - 1; size >= 0; size--) {
            if (cuesWithTiming.startTimeUs >= this.cuesWithTimingList.get(size).startTimeUs) {
                this.cuesWithTimingList.add(size + 1, cuesWithTiming);
                return z7;
            }
        }
        this.cuesWithTimingList.add(0, cuesWithTiming);
        return z7;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public void clear() {
        this.cuesWithTimingList.clear();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public void discardCuesBeforeTimeUs(long j10) {
        int i6 = 0;
        while (i6 < this.cuesWithTimingList.size()) {
            long j11 = this.cuesWithTimingList.get(i6).startTimeUs;
            if (j10 > j11 && j10 > this.cuesWithTimingList.get(i6).endTimeUs) {
                this.cuesWithTimingList.remove(i6);
                i6--;
            } else if (j10 < j11) {
                return;
            }
            i6++;
        }
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public u1 getCuesAtTimeUs(long j10) {
        if (!this.cuesWithTimingList.isEmpty()) {
            if (j10 >= this.cuesWithTimingList.get(0).startTimeUs) {
                ArrayList arrayList = new ArrayList();
                for (int i6 = 0; i6 < this.cuesWithTimingList.size(); i6++) {
                    CuesWithTiming cuesWithTiming = this.cuesWithTimingList.get(i6);
                    if (j10 >= cuesWithTiming.startTimeUs && j10 < cuesWithTiming.endTimeUs) {
                        arrayList.add(cuesWithTiming);
                    }
                    if (j10 < cuesWithTiming.startTimeUs) {
                        break;
                    }
                }
                c5 c5VarV = u1.v(CUES_DISPLAY_PRIORITY_COMPARATOR, arrayList);
                s1 s1VarK = u1.k();
                for (int i10 = 0; i10 < c5VarV.size(); i10++) {
                    s1VarK.d(((CuesWithTiming) c5VarV.get(i10)).cues);
                }
                return s1VarK.g();
            }
        }
        return u1.q();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public long getNextCueChangeTimeUs(long j10) {
        int i6 = 0;
        long jMin = -9223372036854775807L;
        while (true) {
            if (i6 >= this.cuesWithTimingList.size()) {
                break;
            }
            long j11 = this.cuesWithTimingList.get(i6).startTimeUs;
            long j12 = this.cuesWithTimingList.get(i6).endTimeUs;
            if (j10 < j11) {
                jMin = jMin == C.TIME_UNSET ? j11 : Math.min(jMin, j11);
            } else {
                if (j10 < j12) {
                    jMin = jMin == C.TIME_UNSET ? j12 : Math.min(jMin, j12);
                }
                i6++;
            }
        }
        if (jMin != C.TIME_UNSET) {
            return jMin;
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public long getPreviousCueChangeTimeUs(long j10) {
        if (this.cuesWithTimingList.isEmpty()) {
            return C.TIME_UNSET;
        }
        if (j10 < this.cuesWithTimingList.get(0).startTimeUs) {
            return C.TIME_UNSET;
        }
        long jMax = this.cuesWithTimingList.get(0).startTimeUs;
        for (int i6 = 0; i6 < this.cuesWithTimingList.size(); i6++) {
            long j11 = this.cuesWithTimingList.get(i6).startTimeUs;
            long j12 = this.cuesWithTimingList.get(i6).endTimeUs;
            if (j12 > j10) {
                if (j11 > j10) {
                    break;
                }
                jMax = Math.max(jMax, j11);
            } else {
                jMax = Math.max(jMax, j12);
            }
        }
        return jMax;
    }
}
