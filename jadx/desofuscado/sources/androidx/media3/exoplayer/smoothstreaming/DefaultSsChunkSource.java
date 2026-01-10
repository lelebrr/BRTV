package androidx.media3.exoplayer.smoothstreaming;

import android.net.Uri;
import android.os.SystemClock;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.UriUtil;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.smoothstreaming.SsChunkSource;
import androidx.media3.exoplayer.smoothstreaming.manifest.SsManifest;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.source.chunk.BaseMediaChunkIterator;
import androidx.media3.exoplayer.source.chunk.BundledChunkExtractor;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.ChunkExtractor;
import androidx.media3.exoplayer.source.chunk.ChunkHolder;
import androidx.media3.exoplayer.source.chunk.ContainerMediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelectionUtil;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoaderErrorThrower;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import androidx.media3.extractor.mp4.Track;
import androidx.media3.extractor.mp4.TrackEncryptionBox;
import androidx.media3.extractor.text.DefaultSubtitleParserFactory;
import androidx.media3.extractor.text.SubtitleParser;
import d7.c5;
import d7.g1;
import d7.u1;
import java.io.IOException;
import java.util.List;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public class DefaultSsChunkSource implements SsChunkSource {
    private final ChunkExtractor[] chunkExtractors;
    private final CmcdConfiguration cmcdConfiguration;
    private int currentManifestChunkOffset;
    private final DataSource dataSource;
    private IOException fatalError;
    private long lastChunkRequestRealtimeMs = C.TIME_UNSET;
    private SsManifest manifest;
    private final LoaderErrorThrower manifestLoaderErrorThrower;
    private final int streamElementIndex;
    private ExoTrackSelection trackSelection;

    /* compiled from: MyApplication */
    public static final class Factory implements SsChunkSource.Factory {
        private final DataSource.Factory dataSourceFactory;
        private boolean parseSubtitlesDuringExtraction;
        private SubtitleParser.Factory subtitleParserFactory = new DefaultSubtitleParserFactory();

        public Factory(DataSource.Factory factory) {
            this.dataSourceFactory = factory;
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.SsChunkSource.Factory
        public SsChunkSource createChunkSource(LoaderErrorThrower loaderErrorThrower, SsManifest ssManifest, int i6, ExoTrackSelection exoTrackSelection, TransferListener transferListener, CmcdConfiguration cmcdConfiguration) {
            DataSource dataSourceCreateDataSource = this.dataSourceFactory.createDataSource();
            if (transferListener != null) {
                dataSourceCreateDataSource.addTransferListener(transferListener);
            }
            return new DefaultSsChunkSource(loaderErrorThrower, ssManifest, i6, exoTrackSelection, dataSourceCreateDataSource, cmcdConfiguration, this.subtitleParserFactory, this.parseSubtitlesDuringExtraction);
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.SsChunkSource.Factory
        public Format getOutputTextFormat(Format format) {
            String str;
            if (!this.parseSubtitlesDuringExtraction || !this.subtitleParserFactory.supportsFormat(format)) {
                return format;
            }
            Format.Builder cueReplacementBehavior = format.buildUpon().setSampleMimeType(MimeTypes.APPLICATION_MEDIA3_CUES).setCueReplacementBehavior(this.subtitleParserFactory.getCueReplacementBehavior(format));
            StringBuilder sb = new StringBuilder();
            sb.append(format.sampleMimeType);
            if (format.codecs != null) {
                str = " " + format.codecs;
            } else {
                str = "";
            }
            sb.append(str);
            return cueReplacementBehavior.setCodecs(sb.toString()).setSubsampleOffsetUs(Long.MAX_VALUE).build();
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.SsChunkSource.Factory
        public Factory experimentalParseSubtitlesDuringExtraction(boolean z7) {
            this.parseSubtitlesDuringExtraction = z7;
            return this;
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.SsChunkSource.Factory
        public Factory setSubtitleParserFactory(SubtitleParser.Factory factory) {
            this.subtitleParserFactory = factory;
            return this;
        }
    }

    /* compiled from: MyApplication */
    public static final class StreamElementIterator extends BaseMediaChunkIterator {
        private final SsManifest.StreamElement streamElement;
        private final int trackIndex;

        public StreamElementIterator(SsManifest.StreamElement streamElement, int i6, int i10) {
            super(i10, streamElement.chunkCount - 1);
            this.streamElement = streamElement;
            this.trackIndex = i6;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            return this.streamElement.getChunkDurationUs((int) getCurrentIndex()) + getChunkStartTimeUs();
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            checkInBounds();
            return this.streamElement.getStartTimeUs((int) getCurrentIndex());
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public DataSpec getDataSpec() {
            checkInBounds();
            return new DataSpec(this.streamElement.buildRequestUri(this.trackIndex, (int) getCurrentIndex()));
        }
    }

    public DefaultSsChunkSource(LoaderErrorThrower loaderErrorThrower, SsManifest ssManifest, int i6, ExoTrackSelection exoTrackSelection, DataSource dataSource, CmcdConfiguration cmcdConfiguration, SubtitleParser.Factory factory, boolean z7) {
        this.manifestLoaderErrorThrower = loaderErrorThrower;
        this.manifest = ssManifest;
        this.streamElementIndex = i6;
        this.trackSelection = exoTrackSelection;
        this.dataSource = dataSource;
        this.cmcdConfiguration = cmcdConfiguration;
        SsManifest.StreamElement streamElement = ssManifest.streamElements[i6];
        this.chunkExtractors = new ChunkExtractor[exoTrackSelection.length()];
        for (int i10 = 0; i10 < this.chunkExtractors.length; i10++) {
            int indexInTrackGroup = exoTrackSelection.getIndexInTrackGroup(i10);
            Format format = streamElement.formats[indexInTrackGroup];
            TrackEncryptionBox[] trackEncryptionBoxArr = format.drmInitData != null ? ((SsManifest.ProtectionElement) Assertions.checkNotNull(ssManifest.protectionElement)).trackEncryptionBoxes : null;
            int i11 = streamElement.type;
            int i12 = i11 == 2 ? 4 : 0;
            long j10 = streamElement.timescale;
            long j11 = ssManifest.durationUs;
            Track track = new Track(indexInTrackGroup, i11, j10, C.TIME_UNSET, j11, j11, format, 0, trackEncryptionBoxArr, i12, null, null);
            int i13 = !z7 ? 35 : 3;
            g1 g1Var = u1.f6276b;
            this.chunkExtractors[i10] = new BundledChunkExtractor(new FragmentedMp4Extractor(factory, i13, null, track, c5.f6115e, null), streamElement.type, format);
        }
    }

    private static MediaChunk newMediaChunk(Format format, DataSource dataSource, Uri uri, int i6, long j10, long j11, long j12, int i10, Object obj, ChunkExtractor chunkExtractor, CmcdData.Factory factory) {
        DataSpec dataSpecBuild = new DataSpec.Builder().setUri(uri).build();
        if (factory != null) {
            dataSpecBuild = factory.createCmcdData().addToDataSpec(dataSpecBuild);
        }
        return new ContainerMediaChunk(dataSource, dataSpecBuild, format, i10, obj, j10, j11, j12, C.TIME_UNSET, i6, 1, j10, chunkExtractor);
    }

    private long resolveTimeToLiveEdgeUs(long j10) {
        SsManifest ssManifest = this.manifest;
        if (!ssManifest.isLive) {
            return C.TIME_UNSET;
        }
        SsManifest.StreamElement streamElement = ssManifest.streamElements[this.streamElementIndex];
        int i6 = streamElement.chunkCount - 1;
        return (streamElement.getChunkDurationUs(i6) + streamElement.getStartTimeUs(i6)) - j10;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public long getAdjustedSeekPositionUs(long j10, SeekParameters seekParameters) {
        SsManifest.StreamElement streamElement = this.manifest.streamElements[this.streamElementIndex];
        int chunkIndex = streamElement.getChunkIndex(j10);
        long startTimeUs = streamElement.getStartTimeUs(chunkIndex);
        return seekParameters.resolveSeekPositionUs(j10, startTimeUs, (startTimeUs >= j10 || chunkIndex >= streamElement.chunkCount + (-1)) ? startTimeUs : streamElement.getStartTimeUs(chunkIndex + 1));
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public final void getNextChunk(LoadingInfo loadingInfo, long j10, List<? extends MediaChunk> list, ChunkHolder chunkHolder) {
        int nextChunkIndex;
        CmcdData.Factory chunkDurationUs;
        if (this.fatalError != null) {
            return;
        }
        SsManifest.StreamElement streamElement = this.manifest.streamElements[this.streamElementIndex];
        if (streamElement.chunkCount == 0) {
            chunkHolder.endOfStream = !r5.isLive;
            return;
        }
        if (list.isEmpty()) {
            nextChunkIndex = streamElement.getChunkIndex(j10);
        } else {
            nextChunkIndex = (int) (list.get(list.size() - 1).getNextChunkIndex() - this.currentManifestChunkOffset);
            if (nextChunkIndex < 0) {
                this.fatalError = new BehindLiveWindowException();
                return;
            }
        }
        if (nextChunkIndex >= streamElement.chunkCount) {
            chunkHolder.endOfStream = !this.manifest.isLive;
            return;
        }
        long j11 = loadingInfo.playbackPositionUs;
        long j12 = j10 - j11;
        long jResolveTimeToLiveEdgeUs = resolveTimeToLiveEdgeUs(j11);
        int length = this.trackSelection.length();
        MediaChunkIterator[] mediaChunkIteratorArr = new MediaChunkIterator[length];
        for (int i6 = 0; i6 < length; i6++) {
            mediaChunkIteratorArr[i6] = new StreamElementIterator(streamElement, this.trackSelection.getIndexInTrackGroup(i6), nextChunkIndex);
        }
        this.trackSelection.updateSelectedTrack(j11, j12, jResolveTimeToLiveEdgeUs, list, mediaChunkIteratorArr);
        long startTimeUs = streamElement.getStartTimeUs(nextChunkIndex);
        long chunkDurationUs2 = streamElement.getChunkDurationUs(nextChunkIndex) + startTimeUs;
        long j13 = list.isEmpty() ? j10 : -9223372036854775807L;
        int i10 = nextChunkIndex + this.currentManifestChunkOffset;
        int selectedIndex = this.trackSelection.getSelectedIndex();
        ChunkExtractor chunkExtractor = this.chunkExtractors[selectedIndex];
        int indexInTrackGroup = this.trackSelection.getIndexInTrackGroup(selectedIndex);
        Uri uriBuildRequestUri = streamElement.buildRequestUri(indexInTrackGroup, nextChunkIndex);
        if (this.cmcdConfiguration != null) {
            chunkDurationUs = new CmcdData.Factory(this.cmcdConfiguration, CmcdData.STREAMING_FORMAT_SS).setTrackSelection(this.trackSelection).setBufferedDurationUs(Math.max(0L, j12)).setPlaybackRate(loadingInfo.playbackSpeed).setIsLive(this.manifest.isLive).setDidRebuffer(loadingInfo.rebufferedSince(this.lastChunkRequestRealtimeMs)).setIsBufferEmpty(list.isEmpty()).setChunkDurationUs(chunkDurationUs2 - startTimeUs);
            int i11 = nextChunkIndex + 1;
            if (i11 < streamElement.chunkCount) {
                chunkDurationUs.setNextObjectRequest(UriUtil.getRelativePath(uriBuildRequestUri, streamElement.buildRequestUri(indexInTrackGroup, i11)));
            }
        } else {
            chunkDurationUs = null;
        }
        CmcdData.Factory factory = chunkDurationUs;
        this.lastChunkRequestRealtimeMs = SystemClock.elapsedRealtime();
        chunkHolder.chunk = newMediaChunk(this.trackSelection.getSelectedFormat(), this.dataSource, uriBuildRequestUri, i10, startTimeUs, chunkDurationUs2, j13, this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), chunkExtractor, factory);
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public int getPreferredQueueSize(long j10, List<? extends MediaChunk> list) {
        return (this.fatalError != null || this.trackSelection.length() < 2) ? list.size() : this.trackSelection.evaluateQueueSize(j10, list);
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public void maybeThrowError() throws IOException {
        IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        this.manifestLoaderErrorThrower.maybeThrowError();
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public boolean onChunkLoadError(Chunk chunk, boolean z7, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor = loadErrorHandlingPolicy.getFallbackSelectionFor(TrackSelectionUtil.createFallbackOptions(this.trackSelection), loadErrorInfo);
        if (z7 && fallbackSelectionFor != null && fallbackSelectionFor.type == 2) {
            ExoTrackSelection exoTrackSelection = this.trackSelection;
            if (exoTrackSelection.excludeTrack(exoTrackSelection.indexOf(chunk.trackFormat), fallbackSelectionFor.exclusionDurationMs)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public void release() {
        for (ChunkExtractor chunkExtractor : this.chunkExtractors) {
            chunkExtractor.release();
        }
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public boolean shouldCancelLoad(long j10, Chunk chunk, List<? extends MediaChunk> list) {
        if (this.fatalError != null) {
            return false;
        }
        return this.trackSelection.shouldCancelChunkLoad(j10, chunk, list);
    }

    @Override // androidx.media3.exoplayer.smoothstreaming.SsChunkSource
    public void updateManifest(SsManifest ssManifest) {
        SsManifest.StreamElement[] streamElementArr = this.manifest.streamElements;
        int i6 = this.streamElementIndex;
        SsManifest.StreamElement streamElement = streamElementArr[i6];
        int i10 = streamElement.chunkCount;
        SsManifest.StreamElement streamElement2 = ssManifest.streamElements[i6];
        if (i10 == 0 || streamElement2.chunkCount == 0) {
            this.currentManifestChunkOffset += i10;
        } else {
            int i11 = i10 - 1;
            long chunkDurationUs = streamElement.getChunkDurationUs(i11) + streamElement.getStartTimeUs(i11);
            long startTimeUs = streamElement2.getStartTimeUs(0);
            if (chunkDurationUs <= startTimeUs) {
                this.currentManifestChunkOffset += i10;
            } else {
                this.currentManifestChunkOffset = streamElement.getChunkIndex(startTimeUs) + this.currentManifestChunkOffset;
            }
        }
        this.manifest = ssManifest;
    }

    @Override // androidx.media3.exoplayer.smoothstreaming.SsChunkSource
    public void updateTrackSelection(ExoTrackSelection exoTrackSelection) {
        this.trackSelection = exoTrackSelection;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public void onChunkLoadCompleted(Chunk chunk) {
    }
}
