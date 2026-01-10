package androidx.media3.exoplayer.source;

import android.os.Handler;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.extractor.text.SubtitleParser;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface MediaSource {

    /* compiled from: MyApplication */
    public interface Factory {

        @UnstableApi
        public static final Factory UNSUPPORTED = MediaSourceFactory.UNSUPPORTED;

        @UnstableApi
        MediaSource createMediaSource(MediaItem mediaItem);

        @UnstableApi
        @Deprecated
        Factory experimentalParseSubtitlesDuringExtraction(boolean z7);

        @UnstableApi
        Factory experimentalSetCodecsToParseWithinGopSampleDependencies(int i6);

        @UnstableApi
        int[] getSupportedTypes();

        @UnstableApi
        Factory setCmcdConfigurationFactory(CmcdConfiguration.Factory factory);

        @UnstableApi
        Factory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider);

        @UnstableApi
        Factory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy);

        @UnstableApi
        Factory setSubtitleParserFactory(SubtitleParser.Factory factory);
    }

    /* compiled from: MyApplication */
    @UnstableApi
    public static final class MediaPeriodId {
        public final int adGroupIndex;
        public final int adIndexInAdGroup;
        public final int nextAdGroupIndex;
        public final Object periodUid;
        public final long windowSequenceNumber;

        public MediaPeriodId(Object obj) {
            this(obj, -1L);
        }

        public MediaPeriodId copyWithPeriodUid(Object obj) {
            return this.periodUid.equals(obj) ? this : new MediaPeriodId(obj, this.adGroupIndex, this.adIndexInAdGroup, this.windowSequenceNumber, this.nextAdGroupIndex);
        }

        public MediaPeriodId copyWithWindowSequenceNumber(long j10) {
            return this.windowSequenceNumber == j10 ? this : new MediaPeriodId(this.periodUid, this.adGroupIndex, this.adIndexInAdGroup, j10, this.nextAdGroupIndex);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MediaPeriodId)) {
                return false;
            }
            MediaPeriodId mediaPeriodId = (MediaPeriodId) obj;
            return this.periodUid.equals(mediaPeriodId.periodUid) && this.adGroupIndex == mediaPeriodId.adGroupIndex && this.adIndexInAdGroup == mediaPeriodId.adIndexInAdGroup && this.windowSequenceNumber == mediaPeriodId.windowSequenceNumber && this.nextAdGroupIndex == mediaPeriodId.nextAdGroupIndex;
        }

        public int hashCode() {
            return ((((((((this.periodUid.hashCode() + 527) * 31) + this.adGroupIndex) * 31) + this.adIndexInAdGroup) * 31) + ((int) this.windowSequenceNumber)) * 31) + this.nextAdGroupIndex;
        }

        public boolean isAd() {
            return this.adGroupIndex != -1;
        }

        public MediaPeriodId(Object obj, long j10) {
            this(obj, -1, -1, j10, -1);
        }

        public MediaPeriodId(Object obj, long j10, int i6) {
            this(obj, -1, -1, j10, i6);
        }

        public MediaPeriodId(Object obj, int i6, int i10, long j10) {
            this(obj, i6, i10, j10, -1);
        }

        private MediaPeriodId(Object obj, int i6, int i10, long j10, int i11) {
            this.periodUid = obj;
            this.adGroupIndex = i6;
            this.adIndexInAdGroup = i10;
            this.windowSequenceNumber = j10;
            this.nextAdGroupIndex = i11;
        }
    }

    /* compiled from: MyApplication */
    @UnstableApi
    public interface MediaSourceCaller {
        void onSourceInfoRefreshed(MediaSource mediaSource, Timeline timeline);
    }

    @UnstableApi
    void addDrmEventListener(Handler handler, DrmSessionEventListener drmSessionEventListener);

    @UnstableApi
    void addEventListener(Handler handler, MediaSourceEventListener mediaSourceEventListener);

    @UnstableApi
    boolean canUpdateMediaItem(MediaItem mediaItem);

    @UnstableApi
    MediaPeriod createPeriod(MediaPeriodId mediaPeriodId, Allocator allocator, long j10);

    @UnstableApi
    void disable(MediaSourceCaller mediaSourceCaller);

    @UnstableApi
    void enable(MediaSourceCaller mediaSourceCaller);

    @UnstableApi
    Timeline getInitialTimeline();

    @UnstableApi
    MediaItem getMediaItem();

    @UnstableApi
    boolean isSingleWindow();

    @UnstableApi
    void maybeThrowSourceInfoRefreshError() throws IOException;

    @UnstableApi
    @Deprecated
    void prepareSource(MediaSourceCaller mediaSourceCaller, TransferListener transferListener);

    @UnstableApi
    void prepareSource(MediaSourceCaller mediaSourceCaller, TransferListener transferListener, PlayerId playerId);

    @UnstableApi
    void releasePeriod(MediaPeriod mediaPeriod);

    @UnstableApi
    void releaseSource(MediaSourceCaller mediaSourceCaller);

    @UnstableApi
    void removeDrmEventListener(DrmSessionEventListener drmSessionEventListener);

    @UnstableApi
    void removeEventListener(MediaSourceEventListener mediaSourceEventListener);

    @UnstableApi
    void updateMediaItem(MediaItem mediaItem);
}
