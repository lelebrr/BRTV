package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.source.ShuffleOrder;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public abstract class AbstractConcatenatedTimeline extends Timeline {
    private final int childCount;
    private final boolean isAtomic;
    private final ShuffleOrder shuffleOrder;

    public AbstractConcatenatedTimeline(boolean z7, ShuffleOrder shuffleOrder) {
        this.isAtomic = z7;
        this.shuffleOrder = shuffleOrder;
        this.childCount = shuffleOrder.getLength();
    }

    public static Object getChildPeriodUidFromConcatenatedUid(Object obj) {
        return ((Pair) obj).second;
    }

    public static Object getChildTimelineUidFromConcatenatedUid(Object obj) {
        return ((Pair) obj).first;
    }

    public static Object getConcatenatedUid(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    private int getNextChildIndex(int i6, boolean z7) {
        if (z7) {
            return this.shuffleOrder.getNextIndex(i6);
        }
        if (i6 < this.childCount - 1) {
            return i6 + 1;
        }
        return -1;
    }

    private int getPreviousChildIndex(int i6, boolean z7) {
        if (z7) {
            return this.shuffleOrder.getPreviousIndex(i6);
        }
        if (i6 > 0) {
            return i6 - 1;
        }
        return -1;
    }

    public abstract int getChildIndexByChildUid(Object obj);

    public abstract int getChildIndexByPeriodIndex(int i6);

    public abstract int getChildIndexByWindowIndex(int i6);

    public abstract Object getChildUidByChildIndex(int i6);

    public abstract int getFirstPeriodIndexByChildIndex(int i6);

    @Override // androidx.media3.common.Timeline
    public int getFirstWindowIndex(boolean z7) {
        if (this.childCount == 0) {
            return -1;
        }
        if (this.isAtomic) {
            z7 = false;
        }
        int firstIndex = z7 ? this.shuffleOrder.getFirstIndex() : 0;
        while (getTimelineByChildIndex(firstIndex).isEmpty()) {
            firstIndex = getNextChildIndex(firstIndex, z7);
            if (firstIndex == -1) {
                return -1;
            }
        }
        return getTimelineByChildIndex(firstIndex).getFirstWindowIndex(z7) + getFirstWindowIndexByChildIndex(firstIndex);
    }

    public abstract int getFirstWindowIndexByChildIndex(int i6);

    @Override // androidx.media3.common.Timeline
    public final int getIndexOfPeriod(Object obj) {
        int indexOfPeriod;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Object childTimelineUidFromConcatenatedUid = getChildTimelineUidFromConcatenatedUid(obj);
        Object childPeriodUidFromConcatenatedUid = getChildPeriodUidFromConcatenatedUid(obj);
        int childIndexByChildUid = getChildIndexByChildUid(childTimelineUidFromConcatenatedUid);
        if (childIndexByChildUid == -1 || (indexOfPeriod = getTimelineByChildIndex(childIndexByChildUid).getIndexOfPeriod(childPeriodUidFromConcatenatedUid)) == -1) {
            return -1;
        }
        return getFirstPeriodIndexByChildIndex(childIndexByChildUid) + indexOfPeriod;
    }

    @Override // androidx.media3.common.Timeline
    public int getLastWindowIndex(boolean z7) {
        int i6 = this.childCount;
        if (i6 == 0) {
            return -1;
        }
        if (this.isAtomic) {
            z7 = false;
        }
        int lastIndex = z7 ? this.shuffleOrder.getLastIndex() : i6 - 1;
        while (getTimelineByChildIndex(lastIndex).isEmpty()) {
            lastIndex = getPreviousChildIndex(lastIndex, z7);
            if (lastIndex == -1) {
                return -1;
            }
        }
        return getTimelineByChildIndex(lastIndex).getLastWindowIndex(z7) + getFirstWindowIndexByChildIndex(lastIndex);
    }

    @Override // androidx.media3.common.Timeline
    public int getNextWindowIndex(int i6, int i10, boolean z7) {
        if (this.isAtomic) {
            if (i10 == 1) {
                i10 = 2;
            }
            z7 = false;
        }
        int childIndexByWindowIndex = getChildIndexByWindowIndex(i6);
        int firstWindowIndexByChildIndex = getFirstWindowIndexByChildIndex(childIndexByWindowIndex);
        int nextWindowIndex = getTimelineByChildIndex(childIndexByWindowIndex).getNextWindowIndex(i6 - firstWindowIndexByChildIndex, i10 != 2 ? i10 : 0, z7);
        if (nextWindowIndex != -1) {
            return firstWindowIndexByChildIndex + nextWindowIndex;
        }
        int nextChildIndex = getNextChildIndex(childIndexByWindowIndex, z7);
        while (nextChildIndex != -1 && getTimelineByChildIndex(nextChildIndex).isEmpty()) {
            nextChildIndex = getNextChildIndex(nextChildIndex, z7);
        }
        if (nextChildIndex != -1) {
            return getTimelineByChildIndex(nextChildIndex).getFirstWindowIndex(z7) + getFirstWindowIndexByChildIndex(nextChildIndex);
        }
        if (i10 == 2) {
            return getFirstWindowIndex(z7);
        }
        return -1;
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Period getPeriod(int i6, Timeline.Period period, boolean z7) {
        int childIndexByPeriodIndex = getChildIndexByPeriodIndex(i6);
        int firstWindowIndexByChildIndex = getFirstWindowIndexByChildIndex(childIndexByPeriodIndex);
        getTimelineByChildIndex(childIndexByPeriodIndex).getPeriod(i6 - getFirstPeriodIndexByChildIndex(childIndexByPeriodIndex), period, z7);
        period.windowIndex += firstWindowIndexByChildIndex;
        if (z7) {
            period.uid = getConcatenatedUid(getChildUidByChildIndex(childIndexByPeriodIndex), Assertions.checkNotNull(period.uid));
        }
        return period;
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Period getPeriodByUid(Object obj, Timeline.Period period) {
        Object childTimelineUidFromConcatenatedUid = getChildTimelineUidFromConcatenatedUid(obj);
        Object childPeriodUidFromConcatenatedUid = getChildPeriodUidFromConcatenatedUid(obj);
        int childIndexByChildUid = getChildIndexByChildUid(childTimelineUidFromConcatenatedUid);
        int firstWindowIndexByChildIndex = getFirstWindowIndexByChildIndex(childIndexByChildUid);
        getTimelineByChildIndex(childIndexByChildUid).getPeriodByUid(childPeriodUidFromConcatenatedUid, period);
        period.windowIndex += firstWindowIndexByChildIndex;
        period.uid = obj;
        return period;
    }

    @Override // androidx.media3.common.Timeline
    public int getPreviousWindowIndex(int i6, int i10, boolean z7) {
        if (this.isAtomic) {
            if (i10 == 1) {
                i10 = 2;
            }
            z7 = false;
        }
        int childIndexByWindowIndex = getChildIndexByWindowIndex(i6);
        int firstWindowIndexByChildIndex = getFirstWindowIndexByChildIndex(childIndexByWindowIndex);
        int previousWindowIndex = getTimelineByChildIndex(childIndexByWindowIndex).getPreviousWindowIndex(i6 - firstWindowIndexByChildIndex, i10 != 2 ? i10 : 0, z7);
        if (previousWindowIndex != -1) {
            return firstWindowIndexByChildIndex + previousWindowIndex;
        }
        int previousChildIndex = getPreviousChildIndex(childIndexByWindowIndex, z7);
        while (previousChildIndex != -1 && getTimelineByChildIndex(previousChildIndex).isEmpty()) {
            previousChildIndex = getPreviousChildIndex(previousChildIndex, z7);
        }
        if (previousChildIndex != -1) {
            return getTimelineByChildIndex(previousChildIndex).getLastWindowIndex(z7) + getFirstWindowIndexByChildIndex(previousChildIndex);
        }
        if (i10 == 2) {
            return getLastWindowIndex(z7);
        }
        return -1;
    }

    public abstract Timeline getTimelineByChildIndex(int i6);

    @Override // androidx.media3.common.Timeline
    public final Object getUidOfPeriod(int i6) {
        int childIndexByPeriodIndex = getChildIndexByPeriodIndex(i6);
        return getConcatenatedUid(getChildUidByChildIndex(childIndexByPeriodIndex), getTimelineByChildIndex(childIndexByPeriodIndex).getUidOfPeriod(i6 - getFirstPeriodIndexByChildIndex(childIndexByPeriodIndex)));
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Window getWindow(int i6, Timeline.Window window, long j10) {
        int childIndexByWindowIndex = getChildIndexByWindowIndex(i6);
        int firstWindowIndexByChildIndex = getFirstWindowIndexByChildIndex(childIndexByWindowIndex);
        int firstPeriodIndexByChildIndex = getFirstPeriodIndexByChildIndex(childIndexByWindowIndex);
        getTimelineByChildIndex(childIndexByWindowIndex).getWindow(i6 - firstWindowIndexByChildIndex, window, j10);
        Object childUidByChildIndex = getChildUidByChildIndex(childIndexByWindowIndex);
        if (!Timeline.Window.SINGLE_WINDOW_UID.equals(window.uid)) {
            childUidByChildIndex = getConcatenatedUid(childUidByChildIndex, window.uid);
        }
        window.uid = childUidByChildIndex;
        window.firstPeriodIndex += firstPeriodIndexByChildIndex;
        window.lastPeriodIndex += firstPeriodIndexByChildIndex;
        return window;
    }
}
