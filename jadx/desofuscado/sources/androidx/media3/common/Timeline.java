package androidx.media3.common;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import d7.c5;
import d7.g1;
import d7.s1;
import d7.u1;
import java.util.ArrayList;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class Timeline {
    public static final Timeline EMPTY = new Timeline() { // from class: androidx.media3.common.Timeline.1
        @Override // androidx.media3.common.Timeline
        public int getIndexOfPeriod(Object obj) {
            return -1;
        }

        @Override // androidx.media3.common.Timeline
        public Period getPeriod(int i6, Period period, boolean z7) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.Timeline
        public int getPeriodCount() {
            return 0;
        }

        @Override // androidx.media3.common.Timeline
        public Object getUidOfPeriod(int i6) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.Timeline
        public Window getWindow(int i6, Window window, long j10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.Timeline
        public int getWindowCount() {
            return 0;
        }
    };
    private static final String FIELD_WINDOWS = Util.intToStringMaxRadix(0);
    private static final String FIELD_PERIODS = Util.intToStringMaxRadix(1);
    private static final String FIELD_SHUFFLED_WINDOW_INDICES = Util.intToStringMaxRadix(2);

    /* compiled from: MyApplication */
    public static final class Period {

        @UnstableApi
        public AdPlaybackState adPlaybackState = AdPlaybackState.NONE;

        @UnstableApi
        public long durationUs;
        public Object id;
        public boolean isPlaceholder;

        @UnstableApi
        public long positionInWindowUs;
        public Object uid;
        public int windowIndex;
        private static final String FIELD_WINDOW_INDEX = Util.intToStringMaxRadix(0);
        private static final String FIELD_DURATION_US = Util.intToStringMaxRadix(1);
        private static final String FIELD_POSITION_IN_WINDOW_US = Util.intToStringMaxRadix(2);
        private static final String FIELD_PLACEHOLDER = Util.intToStringMaxRadix(3);
        private static final String FIELD_AD_PLAYBACK_STATE = Util.intToStringMaxRadix(4);

        @UnstableApi
        public static Period fromBundle(Bundle bundle) {
            int i6 = bundle.getInt(FIELD_WINDOW_INDEX, 0);
            long j10 = bundle.getLong(FIELD_DURATION_US, C.TIME_UNSET);
            long j11 = bundle.getLong(FIELD_POSITION_IN_WINDOW_US, 0L);
            boolean z7 = bundle.getBoolean(FIELD_PLACEHOLDER, false);
            Bundle bundle2 = bundle.getBundle(FIELD_AD_PLAYBACK_STATE);
            AdPlaybackState adPlaybackStateFromBundle = bundle2 != null ? AdPlaybackState.fromBundle(bundle2) : AdPlaybackState.NONE;
            Period period = new Period();
            period.set(null, null, i6, j10, j11, adPlaybackStateFromBundle, z7);
            return period;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !Period.class.equals(obj.getClass())) {
                return false;
            }
            Period period = (Period) obj;
            return Objects.equals(this.id, period.id) && Objects.equals(this.uid, period.uid) && this.windowIndex == period.windowIndex && this.durationUs == period.durationUs && this.positionInWindowUs == period.positionInWindowUs && this.isPlaceholder == period.isPlaceholder && Objects.equals(this.adPlaybackState, period.adPlaybackState);
        }

        public int getAdCountInAdGroup(int i6) {
            return this.adPlaybackState.getAdGroup(i6).count;
        }

        public long getAdDurationUs(int i6, int i10) {
            AdPlaybackState.AdGroup adGroup = this.adPlaybackState.getAdGroup(i6);
            return adGroup.count != -1 ? adGroup.durationsUs[i10] : C.TIME_UNSET;
        }

        public int getAdGroupCount() {
            return this.adPlaybackState.adGroupCount;
        }

        public int getAdGroupIndexAfterPositionUs(long j10) {
            return this.adPlaybackState.getAdGroupIndexAfterPositionUs(j10, this.durationUs);
        }

        public int getAdGroupIndexForPositionUs(long j10) {
            return this.adPlaybackState.getAdGroupIndexForPositionUs(j10, this.durationUs);
        }

        public long getAdGroupTimeUs(int i6) {
            return this.adPlaybackState.getAdGroup(i6).timeUs;
        }

        public long getAdResumePositionUs() {
            return this.adPlaybackState.adResumePositionUs;
        }

        @UnstableApi
        public int getAdState(int i6, int i10) {
            AdPlaybackState.AdGroup adGroup = this.adPlaybackState.getAdGroup(i6);
            if (adGroup.count != -1) {
                return adGroup.states[i10];
            }
            return 0;
        }

        public Object getAdsId() {
            return this.adPlaybackState.adsId;
        }

        @UnstableApi
        public long getContentResumeOffsetUs(int i6) {
            return this.adPlaybackState.getAdGroup(i6).contentResumeOffsetUs;
        }

        public long getDurationMs() {
            return Util.usToMs(this.durationUs);
        }

        public long getDurationUs() {
            return this.durationUs;
        }

        public int getFirstAdIndexToPlay(int i6) {
            return this.adPlaybackState.getAdGroup(i6).getFirstAdIndexToPlay();
        }

        public int getNextAdIndexToPlay(int i6, int i10) {
            return this.adPlaybackState.getAdGroup(i6).getNextAdIndexToPlay(i10);
        }

        public long getPositionInWindowMs() {
            return Util.usToMs(this.positionInWindowUs);
        }

        public long getPositionInWindowUs() {
            return this.positionInWindowUs;
        }

        public int getRemovedAdGroupCount() {
            return this.adPlaybackState.removedAdGroupCount;
        }

        public boolean hasPlayedAdGroup(int i6) {
            return !this.adPlaybackState.getAdGroup(i6).hasUnplayedAds();
        }

        public int hashCode() {
            Object obj = this.id;
            int iHashCode = (217 + (obj == null ? 0 : obj.hashCode())) * 31;
            Object obj2 = this.uid;
            int iHashCode2 = (((iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.windowIndex) * 31;
            long j10 = this.durationUs;
            int i6 = (iHashCode2 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.positionInWindowUs;
            return this.adPlaybackState.hashCode() + ((((i6 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.isPlaceholder ? 1 : 0)) * 31);
        }

        @UnstableApi
        public boolean isLivePostrollPlaceholder(int i6) {
            return i6 == getAdGroupCount() - 1 && this.adPlaybackState.isLivePostrollPlaceholder(i6);
        }

        @UnstableApi
        public boolean isServerSideInsertedAdGroup(int i6) {
            return this.adPlaybackState.getAdGroup(i6).isServerSideInserted;
        }

        @UnstableApi
        public Period set(Object obj, Object obj2, int i6, long j10, long j11) {
            return set(obj, obj2, i6, j10, j11, AdPlaybackState.NONE, false);
        }

        @UnstableApi
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            int i6 = this.windowIndex;
            if (i6 != 0) {
                bundle.putInt(FIELD_WINDOW_INDEX, i6);
            }
            long j10 = this.durationUs;
            if (j10 != C.TIME_UNSET) {
                bundle.putLong(FIELD_DURATION_US, j10);
            }
            long j11 = this.positionInWindowUs;
            if (j11 != 0) {
                bundle.putLong(FIELD_POSITION_IN_WINDOW_US, j11);
            }
            boolean z7 = this.isPlaceholder;
            if (z7) {
                bundle.putBoolean(FIELD_PLACEHOLDER, z7);
            }
            if (!this.adPlaybackState.equals(AdPlaybackState.NONE)) {
                bundle.putBundle(FIELD_AD_PLAYBACK_STATE, this.adPlaybackState.toBundle());
            }
            return bundle;
        }

        @UnstableApi
        public Period set(Object obj, Object obj2, int i6, long j10, long j11, AdPlaybackState adPlaybackState, boolean z7) {
            this.id = obj;
            this.uid = obj2;
            this.windowIndex = i6;
            this.durationUs = j10;
            this.positionInWindowUs = j11;
            this.adPlaybackState = adPlaybackState;
            this.isPlaceholder = z7;
            return this;
        }
    }

    /* compiled from: MyApplication */
    @UnstableApi
    public static final class RemotableTimeline extends Timeline {
        private final u1 periods;
        private final int[] shuffledWindowIndices;
        private final int[] windowIndicesInShuffled;
        private final u1 windows;

        public RemotableTimeline(u1 u1Var, u1 u1Var2, int[] iArr) {
            Assertions.checkArgument(u1Var.size() == iArr.length);
            this.windows = u1Var;
            this.periods = u1Var2;
            this.shuffledWindowIndices = iArr;
            this.windowIndicesInShuffled = new int[iArr.length];
            for (int i6 = 0; i6 < iArr.length; i6++) {
                this.windowIndicesInShuffled[iArr[i6]] = i6;
            }
        }

        @Override // androidx.media3.common.Timeline
        public int getFirstWindowIndex(boolean z7) {
            if (isEmpty()) {
                return -1;
            }
            if (z7) {
                return this.shuffledWindowIndices[0];
            }
            return 0;
        }

        @Override // androidx.media3.common.Timeline
        public int getIndexOfPeriod(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media3.common.Timeline
        public int getLastWindowIndex(boolean z7) {
            if (isEmpty()) {
                return -1;
            }
            return z7 ? this.shuffledWindowIndices[getWindowCount() - 1] : getWindowCount() - 1;
        }

        @Override // androidx.media3.common.Timeline
        public int getNextWindowIndex(int i6, int i10, boolean z7) {
            if (i10 == 1) {
                return i6;
            }
            if (i6 != getLastWindowIndex(z7)) {
                return z7 ? this.shuffledWindowIndices[this.windowIndicesInShuffled[i6] + 1] : i6 + 1;
            }
            if (i10 == 2) {
                return getFirstWindowIndex(z7);
            }
            return -1;
        }

        @Override // androidx.media3.common.Timeline
        public Period getPeriod(int i6, Period period, boolean z7) {
            Period period2 = (Period) this.periods.get(i6);
            period.set(period2.id, period2.uid, period2.windowIndex, period2.durationUs, period2.positionInWindowUs, period2.adPlaybackState, period2.isPlaceholder);
            return period;
        }

        @Override // androidx.media3.common.Timeline
        public int getPeriodCount() {
            return this.periods.size();
        }

        @Override // androidx.media3.common.Timeline
        public int getPreviousWindowIndex(int i6, int i10, boolean z7) {
            if (i10 == 1) {
                return i6;
            }
            if (i6 != getFirstWindowIndex(z7)) {
                return z7 ? this.shuffledWindowIndices[this.windowIndicesInShuffled[i6] - 1] : i6 - 1;
            }
            if (i10 == 2) {
                return getLastWindowIndex(z7);
            }
            return -1;
        }

        @Override // androidx.media3.common.Timeline
        public Object getUidOfPeriod(int i6) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media3.common.Timeline
        public Window getWindow(int i6, Window window, long j10) {
            Window window2 = (Window) this.windows.get(i6);
            window.set(window2.uid, window2.mediaItem, window2.manifest, window2.presentationStartTimeMs, window2.windowStartTimeMs, window2.elapsedRealtimeEpochOffsetMs, window2.isSeekable, window2.isDynamic, window2.liveConfiguration, window2.defaultPositionUs, window2.durationUs, window2.firstPeriodIndex, window2.lastPeriodIndex, window2.positionInFirstPeriodUs);
            window.isPlaceholder = window2.isPlaceholder;
            return window;
        }

        @Override // androidx.media3.common.Timeline
        public int getWindowCount() {
            return this.windows.size();
        }
    }

    /* compiled from: MyApplication */
    public static final class Window {

        @UnstableApi
        public long defaultPositionUs;

        @UnstableApi
        public long durationUs;
        public long elapsedRealtimeEpochOffsetMs;
        public int firstPeriodIndex;
        public boolean isDynamic;
        public boolean isPlaceholder;
        public boolean isSeekable;
        public int lastPeriodIndex;
        public MediaItem.LiveConfiguration liveConfiguration;
        public Object manifest;

        @UnstableApi
        public long positionInFirstPeriodUs;
        public long presentationStartTimeMs;

        @UnstableApi
        @Deprecated
        public Object tag;
        public long windowStartTimeMs;
        public static final Object SINGLE_WINDOW_UID = new Object();
        private static final Object FAKE_WINDOW_UID = new Object();
        private static final MediaItem PLACEHOLDER_MEDIA_ITEM = new MediaItem.Builder().setMediaId("androidx.media3.common.Timeline").setUri(Uri.EMPTY).build();
        private static final String FIELD_MEDIA_ITEM = Util.intToStringMaxRadix(1);
        private static final String FIELD_PRESENTATION_START_TIME_MS = Util.intToStringMaxRadix(2);
        private static final String FIELD_WINDOW_START_TIME_MS = Util.intToStringMaxRadix(3);
        private static final String FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS = Util.intToStringMaxRadix(4);
        private static final String FIELD_IS_SEEKABLE = Util.intToStringMaxRadix(5);
        private static final String FIELD_IS_DYNAMIC = Util.intToStringMaxRadix(6);
        private static final String FIELD_LIVE_CONFIGURATION = Util.intToStringMaxRadix(7);
        private static final String FIELD_IS_PLACEHOLDER = Util.intToStringMaxRadix(8);
        private static final String FIELD_DEFAULT_POSITION_US = Util.intToStringMaxRadix(9);
        private static final String FIELD_DURATION_US = Util.intToStringMaxRadix(10);
        private static final String FIELD_FIRST_PERIOD_INDEX = Util.intToStringMaxRadix(11);
        private static final String FIELD_LAST_PERIOD_INDEX = Util.intToStringMaxRadix(12);
        private static final String FIELD_POSITION_IN_FIRST_PERIOD_US = Util.intToStringMaxRadix(13);
        public Object uid = SINGLE_WINDOW_UID;
        public MediaItem mediaItem = PLACEHOLDER_MEDIA_ITEM;

        @UnstableApi
        public static Window fromBundle(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle(FIELD_MEDIA_ITEM);
            MediaItem mediaItemFromBundle = bundle2 != null ? MediaItem.fromBundle(bundle2) : MediaItem.EMPTY;
            long j10 = bundle.getLong(FIELD_PRESENTATION_START_TIME_MS, C.TIME_UNSET);
            long j11 = bundle.getLong(FIELD_WINDOW_START_TIME_MS, C.TIME_UNSET);
            long j12 = bundle.getLong(FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS, C.TIME_UNSET);
            boolean z7 = bundle.getBoolean(FIELD_IS_SEEKABLE, false);
            boolean z10 = bundle.getBoolean(FIELD_IS_DYNAMIC, false);
            Bundle bundle3 = bundle.getBundle(FIELD_LIVE_CONFIGURATION);
            MediaItem.LiveConfiguration liveConfigurationFromBundle = bundle3 != null ? MediaItem.LiveConfiguration.fromBundle(bundle3) : null;
            boolean z11 = bundle.getBoolean(FIELD_IS_PLACEHOLDER, false);
            long j13 = bundle.getLong(FIELD_DEFAULT_POSITION_US, 0L);
            long j14 = bundle.getLong(FIELD_DURATION_US, C.TIME_UNSET);
            int i6 = bundle.getInt(FIELD_FIRST_PERIOD_INDEX, 0);
            int i10 = bundle.getInt(FIELD_LAST_PERIOD_INDEX, 0);
            long j15 = bundle.getLong(FIELD_POSITION_IN_FIRST_PERIOD_US, 0L);
            Window window = new Window();
            window.set(FAKE_WINDOW_UID, mediaItemFromBundle, null, j10, j11, j12, z7, z10, liveConfigurationFromBundle, j13, j14, i6, i10, j15);
            window.isPlaceholder = z11;
            return window;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !Window.class.equals(obj.getClass())) {
                return false;
            }
            Window window = (Window) obj;
            return Objects.equals(this.uid, window.uid) && Objects.equals(this.mediaItem, window.mediaItem) && Objects.equals(this.manifest, window.manifest) && Objects.equals(this.liveConfiguration, window.liveConfiguration) && this.presentationStartTimeMs == window.presentationStartTimeMs && this.windowStartTimeMs == window.windowStartTimeMs && this.elapsedRealtimeEpochOffsetMs == window.elapsedRealtimeEpochOffsetMs && this.isSeekable == window.isSeekable && this.isDynamic == window.isDynamic && this.isPlaceholder == window.isPlaceholder && this.defaultPositionUs == window.defaultPositionUs && this.durationUs == window.durationUs && this.firstPeriodIndex == window.firstPeriodIndex && this.lastPeriodIndex == window.lastPeriodIndex && this.positionInFirstPeriodUs == window.positionInFirstPeriodUs;
        }

        public long getCurrentUnixTimeMs() {
            return Util.getNowUnixTimeMs(this.elapsedRealtimeEpochOffsetMs);
        }

        public long getDefaultPositionMs() {
            return Util.usToMs(this.defaultPositionUs);
        }

        public long getDefaultPositionUs() {
            return this.defaultPositionUs;
        }

        public long getDurationMs() {
            return Util.usToMs(this.durationUs);
        }

        public long getDurationUs() {
            return this.durationUs;
        }

        public long getPositionInFirstPeriodMs() {
            return Util.usToMs(this.positionInFirstPeriodUs);
        }

        public long getPositionInFirstPeriodUs() {
            return this.positionInFirstPeriodUs;
        }

        public int hashCode() {
            int iHashCode = (this.mediaItem.hashCode() + ((this.uid.hashCode() + 217) * 31)) * 31;
            Object obj = this.manifest;
            int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            MediaItem.LiveConfiguration liveConfiguration = this.liveConfiguration;
            int iHashCode3 = (iHashCode2 + (liveConfiguration != null ? liveConfiguration.hashCode() : 0)) * 31;
            long j10 = this.presentationStartTimeMs;
            int i6 = (iHashCode3 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.windowStartTimeMs;
            int i10 = (i6 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.elapsedRealtimeEpochOffsetMs;
            int i11 = (((((((i10 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + (this.isSeekable ? 1 : 0)) * 31) + (this.isDynamic ? 1 : 0)) * 31) + (this.isPlaceholder ? 1 : 0)) * 31;
            long j13 = this.defaultPositionUs;
            int i12 = (i11 + ((int) (j13 ^ (j13 >>> 32)))) * 31;
            long j14 = this.durationUs;
            int i13 = (((((i12 + ((int) (j14 ^ (j14 >>> 32)))) * 31) + this.firstPeriodIndex) * 31) + this.lastPeriodIndex) * 31;
            long j15 = this.positionInFirstPeriodUs;
            return i13 + ((int) (j15 ^ (j15 >>> 32)));
        }

        public boolean isLive() {
            return this.liveConfiguration != null;
        }

        @UnstableApi
        public Window set(Object obj, MediaItem mediaItem, Object obj2, long j10, long j11, long j12, boolean z7, boolean z10, MediaItem.LiveConfiguration liveConfiguration, long j13, long j14, int i6, int i10, long j15) {
            MediaItem.LocalConfiguration localConfiguration;
            this.uid = obj;
            this.mediaItem = mediaItem != null ? mediaItem : PLACEHOLDER_MEDIA_ITEM;
            this.tag = (mediaItem == null || (localConfiguration = mediaItem.localConfiguration) == null) ? null : localConfiguration.tag;
            this.manifest = obj2;
            this.presentationStartTimeMs = j10;
            this.windowStartTimeMs = j11;
            this.elapsedRealtimeEpochOffsetMs = j12;
            this.isSeekable = z7;
            this.isDynamic = z10;
            this.liveConfiguration = liveConfiguration;
            this.defaultPositionUs = j13;
            this.durationUs = j14;
            this.firstPeriodIndex = i6;
            this.lastPeriodIndex = i10;
            this.positionInFirstPeriodUs = j15;
            this.isPlaceholder = false;
            return this;
        }

        @UnstableApi
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            if (!MediaItem.EMPTY.equals(this.mediaItem)) {
                bundle.putBundle(FIELD_MEDIA_ITEM, this.mediaItem.toBundle());
            }
            long j10 = this.presentationStartTimeMs;
            if (j10 != C.TIME_UNSET) {
                bundle.putLong(FIELD_PRESENTATION_START_TIME_MS, j10);
            }
            long j11 = this.windowStartTimeMs;
            if (j11 != C.TIME_UNSET) {
                bundle.putLong(FIELD_WINDOW_START_TIME_MS, j11);
            }
            long j12 = this.elapsedRealtimeEpochOffsetMs;
            if (j12 != C.TIME_UNSET) {
                bundle.putLong(FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS, j12);
            }
            boolean z7 = this.isSeekable;
            if (z7) {
                bundle.putBoolean(FIELD_IS_SEEKABLE, z7);
            }
            boolean z10 = this.isDynamic;
            if (z10) {
                bundle.putBoolean(FIELD_IS_DYNAMIC, z10);
            }
            MediaItem.LiveConfiguration liveConfiguration = this.liveConfiguration;
            if (liveConfiguration != null) {
                bundle.putBundle(FIELD_LIVE_CONFIGURATION, liveConfiguration.toBundle());
            }
            boolean z11 = this.isPlaceholder;
            if (z11) {
                bundle.putBoolean(FIELD_IS_PLACEHOLDER, z11);
            }
            long j13 = this.defaultPositionUs;
            if (j13 != 0) {
                bundle.putLong(FIELD_DEFAULT_POSITION_US, j13);
            }
            long j14 = this.durationUs;
            if (j14 != C.TIME_UNSET) {
                bundle.putLong(FIELD_DURATION_US, j14);
            }
            int i6 = this.firstPeriodIndex;
            if (i6 != 0) {
                bundle.putInt(FIELD_FIRST_PERIOD_INDEX, i6);
            }
            int i10 = this.lastPeriodIndex;
            if (i10 != 0) {
                bundle.putInt(FIELD_LAST_PERIOD_INDEX, i10);
            }
            long j15 = this.positionInFirstPeriodUs;
            if (j15 != 0) {
                bundle.putLong(FIELD_POSITION_IN_FIRST_PERIOD_US, j15);
            }
            return bundle;
        }
    }

    @UnstableApi
    public Timeline() {
    }

    @UnstableApi
    public static Timeline fromBundle(Bundle bundle) {
        u1 u1VarFromBundleListRetriever = fromBundleListRetriever(new g(7), bundle.getBinder(FIELD_WINDOWS));
        u1 u1VarFromBundleListRetriever2 = fromBundleListRetriever(new g(8), bundle.getBinder(FIELD_PERIODS));
        int[] intArray = bundle.getIntArray(FIELD_SHUFFLED_WINDOW_INDICES);
        if (intArray == null) {
            intArray = generateUnshuffledIndices(u1VarFromBundleListRetriever.size());
        }
        return new RemotableTimeline(u1VarFromBundleListRetriever, u1VarFromBundleListRetriever2, intArray);
    }

    private static <T> u1 fromBundleListRetriever(b7.i iVar, IBinder iBinder) {
        if (iBinder != null) {
            return BundleCollectionUtil.fromBundleList(iVar, BundleListRetriever.getList(iBinder));
        }
        g1 g1Var = u1.f6276b;
        return c5.f6115e;
    }

    private static int[] generateUnshuffledIndices(int i6) {
        int[] iArr = new int[i6];
        for (int i10 = 0; i10 < i6; i10++) {
            iArr[i10] = i10;
        }
        return iArr;
    }

    @UnstableApi
    public final Timeline copyWithSingleWindow(int i6) {
        if (getWindowCount() == 1) {
            return this;
        }
        Window window = getWindow(i6, new Window(), 0L);
        s1 s1VarK = u1.k();
        int i10 = window.firstPeriodIndex;
        while (true) {
            int i11 = window.lastPeriodIndex;
            if (i10 > i11) {
                window.lastPeriodIndex = i11 - window.firstPeriodIndex;
                window.firstPeriodIndex = 0;
                return new RemotableTimeline(u1.r(window), s1VarK.g(), new int[]{0});
            }
            Period period = getPeriod(i10, new Period(), true);
            period.windowIndex = 0;
            s1VarK.a(period);
            i10++;
        }
    }

    public boolean equals(Object obj) {
        int lastWindowIndex;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Timeline)) {
            return false;
        }
        Timeline timeline = (Timeline) obj;
        if (timeline.getWindowCount() != getWindowCount() || timeline.getPeriodCount() != getPeriodCount()) {
            return false;
        }
        Window window = new Window();
        Period period = new Period();
        Window window2 = new Window();
        Period period2 = new Period();
        for (int i6 = 0; i6 < getWindowCount(); i6++) {
            if (!getWindow(i6, window).equals(timeline.getWindow(i6, window2))) {
                return false;
            }
        }
        for (int i10 = 0; i10 < getPeriodCount(); i10++) {
            if (!getPeriod(i10, period, true).equals(timeline.getPeriod(i10, period2, true))) {
                return false;
            }
        }
        int firstWindowIndex = getFirstWindowIndex(true);
        if (firstWindowIndex != timeline.getFirstWindowIndex(true) || (lastWindowIndex = getLastWindowIndex(true)) != timeline.getLastWindowIndex(true)) {
            return false;
        }
        while (firstWindowIndex != lastWindowIndex) {
            int nextWindowIndex = getNextWindowIndex(firstWindowIndex, 0, true);
            if (nextWindowIndex != timeline.getNextWindowIndex(firstWindowIndex, 0, true)) {
                return false;
            }
            firstWindowIndex = nextWindowIndex;
        }
        return true;
    }

    public int getFirstWindowIndex(boolean z7) {
        return isEmpty() ? -1 : 0;
    }

    public abstract int getIndexOfPeriod(Object obj);

    public int getLastWindowIndex(boolean z7) {
        if (isEmpty()) {
            return -1;
        }
        return getWindowCount() - 1;
    }

    public final int getNextPeriodIndex(int i6, Period period, Window window, int i10, boolean z7) {
        int i11 = getPeriod(i6, period).windowIndex;
        if (getWindow(i11, window).lastPeriodIndex != i6) {
            return i6 + 1;
        }
        int nextWindowIndex = getNextWindowIndex(i11, i10, z7);
        if (nextWindowIndex == -1) {
            return -1;
        }
        return getWindow(nextWindowIndex, window).firstPeriodIndex;
    }

    public int getNextWindowIndex(int i6, int i10, boolean z7) {
        if (i10 == 0) {
            if (i6 == getLastWindowIndex(z7)) {
                return -1;
            }
            return i6 + 1;
        }
        if (i10 == 1) {
            return i6;
        }
        if (i10 == 2) {
            return i6 == getLastWindowIndex(z7) ? getFirstWindowIndex(z7) : i6 + 1;
        }
        throw new IllegalStateException();
    }

    public final Period getPeriod(int i6, Period period) {
        return getPeriod(i6, period, false);
    }

    public abstract Period getPeriod(int i6, Period period, boolean z7);

    public Period getPeriodByUid(Object obj, Period period) {
        return getPeriod(getIndexOfPeriod(obj), period, true);
    }

    public abstract int getPeriodCount();

    @UnstableApi
    @Deprecated
    public final Pair<Object, Long> getPeriodPosition(Window window, Period period, int i6, long j10) {
        return getPeriodPositionUs(window, period, i6, j10);
    }

    public final Pair<Object, Long> getPeriodPositionUs(Window window, Period period, int i6, long j10) {
        return (Pair) Assertions.checkNotNull(getPeriodPositionUs(window, period, i6, j10, 0L));
    }

    public int getPreviousWindowIndex(int i6, int i10, boolean z7) {
        if (i10 == 0) {
            if (i6 == getFirstWindowIndex(z7)) {
                return -1;
            }
            return i6 - 1;
        }
        if (i10 == 1) {
            return i6;
        }
        if (i10 == 2) {
            return i6 == getFirstWindowIndex(z7) ? getLastWindowIndex(z7) : i6 - 1;
        }
        throw new IllegalStateException();
    }

    public abstract Object getUidOfPeriod(int i6);

    public final Window getWindow(int i6, Window window) {
        return getWindow(i6, window, 0L);
    }

    public abstract Window getWindow(int i6, Window window, long j10);

    public abstract int getWindowCount();

    public int hashCode() {
        Window window = new Window();
        Period period = new Period();
        int windowCount = getWindowCount() + 217;
        for (int i6 = 0; i6 < getWindowCount(); i6++) {
            windowCount = (windowCount * 31) + getWindow(i6, window).hashCode();
        }
        int periodCount = getPeriodCount() + (windowCount * 31);
        for (int i10 = 0; i10 < getPeriodCount(); i10++) {
            periodCount = (periodCount * 31) + getPeriod(i10, period, true).hashCode();
        }
        int firstWindowIndex = getFirstWindowIndex(true);
        while (firstWindowIndex != -1) {
            periodCount = (periodCount * 31) + firstWindowIndex;
            firstWindowIndex = getNextWindowIndex(firstWindowIndex, 0, true);
        }
        return periodCount;
    }

    public final boolean isEmpty() {
        return getWindowCount() == 0;
    }

    public final boolean isLastPeriod(int i6, Period period, Window window, int i10, boolean z7) {
        return getNextPeriodIndex(i6, period, window, i10, z7) == -1;
    }

    @UnstableApi
    public final Bundle toBundle() {
        ArrayList arrayList = new ArrayList();
        int windowCount = getWindowCount();
        Window window = new Window();
        for (int i6 = 0; i6 < windowCount; i6++) {
            arrayList.add(getWindow(i6, window, 0L).toBundle());
        }
        ArrayList arrayList2 = new ArrayList();
        int periodCount = getPeriodCount();
        Period period = new Period();
        for (int i10 = 0; i10 < periodCount; i10++) {
            arrayList2.add(getPeriod(i10, period, false).toBundle());
        }
        int[] iArr = new int[windowCount];
        if (windowCount > 0) {
            iArr[0] = getFirstWindowIndex(true);
        }
        for (int i11 = 1; i11 < windowCount; i11++) {
            iArr[i11] = getNextWindowIndex(iArr[i11 - 1], 0, true);
        }
        Bundle bundle = new Bundle();
        bundle.putBinder(FIELD_WINDOWS, new BundleListRetriever(arrayList));
        bundle.putBinder(FIELD_PERIODS, new BundleListRetriever(arrayList2));
        bundle.putIntArray(FIELD_SHUFFLED_WINDOW_INDICES, iArr);
        return bundle;
    }

    @UnstableApi
    @Deprecated
    public final Pair<Object, Long> getPeriodPosition(Window window, Period period, int i6, long j10, long j11) {
        return getPeriodPositionUs(window, period, i6, j10, j11);
    }

    public final Pair<Object, Long> getPeriodPositionUs(Window window, Period period, int i6, long j10, long j11) {
        Assertions.checkIndex(i6, 0, getWindowCount());
        getWindow(i6, window, j11);
        if (j10 == C.TIME_UNSET) {
            j10 = window.getDefaultPositionUs();
            if (j10 == C.TIME_UNSET) {
                return null;
            }
        }
        int i10 = window.firstPeriodIndex;
        getPeriod(i10, period);
        while (i10 < window.lastPeriodIndex && period.positionInWindowUs != j10) {
            int i11 = i10 + 1;
            if (getPeriod(i11, period).positionInWindowUs > j10) {
                break;
            }
            i10 = i11;
        }
        getPeriod(i10, period, true);
        long jMin = j10 - period.positionInWindowUs;
        long j12 = period.durationUs;
        if (j12 != C.TIME_UNSET) {
            jMin = Math.min(jMin, j12 - 1);
        }
        return Pair.create(Assertions.checkNotNull(period.uid), Long.valueOf(Math.max(0L, jMin)));
    }
}
