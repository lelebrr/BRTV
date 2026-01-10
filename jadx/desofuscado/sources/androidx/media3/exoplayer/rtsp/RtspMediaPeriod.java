package androidx.media3.exoplayer.rtsp;

import android.net.Uri;
import android.os.Handler;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.rtsp.RtpDataChannel;
import androidx.media3.exoplayer.rtsp.RtpDataLoadable;
import androidx.media3.exoplayer.rtsp.RtspClient;
import androidx.media3.exoplayer.rtsp.RtspMediaSource;
import androidx.media3.exoplayer.rtsp.RtspMessageChannel;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.SampleQueue;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.i;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import d7.c5;
import d7.g1;
import d7.s1;
import d7.u1;
import java.io.IOException;
import java.net.BindException;
import java.util.ArrayList;
import java.util.List;
import javax.net.SocketFactory;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class RtspMediaPeriod implements MediaPeriod {
    private static final int PORT_BINDING_MAX_RETRY_COUNT = 3;
    private final Allocator allocator;
    private MediaPeriod.Callback callback;
    private final Handler handler = Util.createHandlerForCurrentLooper();
    private final InternalListener internalListener;
    private boolean isUsingRtpTcp;
    private final Listener listener;
    private boolean loadingFinished;
    private boolean notifyDiscontinuity;
    private long pendingSeekPositionUs;
    private long pendingSeekPositionUsForTcpRetry;
    private RtspMediaSource.RtspPlaybackException playbackException;
    private int portBindingRetryCount;
    private IOException preparationError;
    private boolean prepared;
    private boolean released;
    private long requestedSeekPositionUs;
    private final RtpDataChannel.Factory rtpDataChannelFactory;
    private final RtspClient rtspClient;
    private final List<RtspLoaderWrapper> rtspLoaderWrappers;
    private final List<RtpLoadInfo> selectedLoadInfos;
    private u1 trackGroups;
    private boolean trackSelected;

    /* compiled from: MyApplication */
    public final class ExtractorOutputImpl implements ExtractorOutput {
        private final TrackOutput trackOutput;

        @Override // androidx.media3.extractor.ExtractorOutput
        public void endTracks() {
            RtspMediaPeriod.this.handler.post(new e(0, RtspMediaPeriod.this));
        }

        @Override // androidx.media3.extractor.ExtractorOutput
        public TrackOutput track(int i6, int i10) {
            return this.trackOutput;
        }

        private ExtractorOutputImpl(TrackOutput trackOutput) {
            this.trackOutput = trackOutput;
        }

        @Override // androidx.media3.extractor.ExtractorOutput
        public void seekMap(SeekMap seekMap) {
        }
    }

    /* compiled from: MyApplication */
    public final class InternalListener implements Loader.Callback<RtpDataLoadable>, SampleQueue.UpstreamFormatChangedListener, RtspClient.SessionInfoListener, RtspClient.PlaybackEventListener {
        private InternalListener() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCanceled(RtpDataLoadable rtpDataLoadable, long j10, long j11, boolean z7) {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public final /* synthetic */ void onLoadStarted(Loader.Loadable loadable, long j10, long j11, int i6) {
            i.a(this, loadable, j10, j11, i6);
        }

        @Override // androidx.media3.exoplayer.rtsp.RtspClient.PlaybackEventListener
        public void onPlaybackError(RtspMediaSource.RtspPlaybackException rtspPlaybackException) {
            if (!(rtspPlaybackException instanceof RtspMediaSource.RtspUdpUnsupportedTransportException) || RtspMediaPeriod.this.isUsingRtpTcp) {
                RtspMediaPeriod.this.playbackException = rtspPlaybackException;
            } else {
                RtspMediaPeriod.this.retryWithRtpTcp();
            }
        }

        @Override // androidx.media3.exoplayer.rtsp.RtspClient.PlaybackEventListener
        public void onPlaybackStarted(long j10, u1 u1Var) {
            ArrayList arrayList = new ArrayList(u1Var.size());
            for (int i6 = 0; i6 < u1Var.size(); i6++) {
                arrayList.add((String) Assertions.checkNotNull(((RtspTrackTiming) u1Var.get(i6)).uri.getPath()));
            }
            for (int i10 = 0; i10 < RtspMediaPeriod.this.selectedLoadInfos.size(); i10++) {
                if (!arrayList.contains(((RtpLoadInfo) RtspMediaPeriod.this.selectedLoadInfos.get(i10)).getTrackUri().getPath())) {
                    RtspMediaPeriod.this.listener.onSeekingUnsupported();
                    if (RtspMediaPeriod.this.isSeekPending()) {
                        RtspMediaPeriod.this.notifyDiscontinuity = true;
                        RtspMediaPeriod.this.pendingSeekPositionUs = C.TIME_UNSET;
                        RtspMediaPeriod.this.requestedSeekPositionUs = C.TIME_UNSET;
                        RtspMediaPeriod.this.pendingSeekPositionUsForTcpRetry = C.TIME_UNSET;
                    }
                }
            }
            for (int i11 = 0; i11 < u1Var.size(); i11++) {
                RtspTrackTiming rtspTrackTiming = (RtspTrackTiming) u1Var.get(i11);
                RtpDataLoadable loadableByTrackUri = RtspMediaPeriod.this.getLoadableByTrackUri(rtspTrackTiming.uri);
                if (loadableByTrackUri != null) {
                    loadableByTrackUri.setTimestamp(rtspTrackTiming.rtpTimestamp);
                    loadableByTrackUri.setSequenceNumber(rtspTrackTiming.sequenceNumber);
                    if (RtspMediaPeriod.this.isSeekPending() && RtspMediaPeriod.this.pendingSeekPositionUs == RtspMediaPeriod.this.requestedSeekPositionUs) {
                        loadableByTrackUri.seekToUs(j10, rtspTrackTiming.rtpTimestamp);
                    }
                }
            }
            if (!RtspMediaPeriod.this.isSeekPending()) {
                if (RtspMediaPeriod.this.pendingSeekPositionUsForTcpRetry == C.TIME_UNSET || !RtspMediaPeriod.this.isUsingRtpTcp) {
                    return;
                }
                RtspMediaPeriod rtspMediaPeriod = RtspMediaPeriod.this;
                rtspMediaPeriod.seekToUs(rtspMediaPeriod.pendingSeekPositionUsForTcpRetry);
                RtspMediaPeriod.this.pendingSeekPositionUsForTcpRetry = C.TIME_UNSET;
                return;
            }
            if (RtspMediaPeriod.this.pendingSeekPositionUs == RtspMediaPeriod.this.requestedSeekPositionUs) {
                RtspMediaPeriod.this.pendingSeekPositionUs = C.TIME_UNSET;
                RtspMediaPeriod.this.requestedSeekPositionUs = C.TIME_UNSET;
            } else {
                RtspMediaPeriod.this.pendingSeekPositionUs = C.TIME_UNSET;
                RtspMediaPeriod rtspMediaPeriod2 = RtspMediaPeriod.this;
                rtspMediaPeriod2.seekToUs(rtspMediaPeriod2.requestedSeekPositionUs);
            }
        }

        @Override // androidx.media3.exoplayer.rtsp.RtspClient.PlaybackEventListener
        public void onRtspSetupCompleted() {
            RtspMediaPeriod.this.rtspClient.startPlayback(RtspMediaPeriod.this.pendingSeekPositionUs != C.TIME_UNSET ? Util.usToMs(RtspMediaPeriod.this.pendingSeekPositionUs) : RtspMediaPeriod.this.pendingSeekPositionUsForTcpRetry != C.TIME_UNSET ? Util.usToMs(RtspMediaPeriod.this.pendingSeekPositionUsForTcpRetry) : 0L);
        }

        @Override // androidx.media3.exoplayer.rtsp.RtspClient.SessionInfoListener
        public void onSessionTimelineRequestFailed(String str, Throwable th) {
            RtspMediaPeriod.this.preparationError = th == null ? new IOException(str) : new IOException(str, th);
        }

        @Override // androidx.media3.exoplayer.rtsp.RtspClient.SessionInfoListener
        public void onSessionTimelineUpdated(RtspSessionTiming rtspSessionTiming, u1 u1Var) {
            for (int i6 = 0; i6 < u1Var.size(); i6++) {
                RtspMediaTrack rtspMediaTrack = (RtspMediaTrack) u1Var.get(i6);
                RtspMediaPeriod rtspMediaPeriod = RtspMediaPeriod.this;
                RtspLoaderWrapper rtspLoaderWrapper = rtspMediaPeriod.new RtspLoaderWrapper(rtspMediaTrack, i6, rtspMediaPeriod.rtpDataChannelFactory);
                RtspMediaPeriod.this.rtspLoaderWrappers.add(rtspLoaderWrapper);
                rtspLoaderWrapper.startLoading();
            }
            RtspMediaPeriod.this.listener.onSourceInfoRefreshed(rtspSessionTiming);
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue.UpstreamFormatChangedListener
        public void onUpstreamFormatChanged(Format format) {
            RtspMediaPeriod.this.handler.post(new e(1, RtspMediaPeriod.this));
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCompleted(RtpDataLoadable rtpDataLoadable, long j10, long j11) {
            if (RtspMediaPeriod.this.getBufferedPositionUs() == 0) {
                if (RtspMediaPeriod.this.isUsingRtpTcp) {
                    return;
                }
                RtspMediaPeriod.this.retryWithRtpTcp();
                return;
            }
            int i6 = 0;
            while (true) {
                if (i6 >= RtspMediaPeriod.this.rtspLoaderWrappers.size()) {
                    break;
                }
                RtspLoaderWrapper rtspLoaderWrapper = (RtspLoaderWrapper) RtspMediaPeriod.this.rtspLoaderWrappers.get(i6);
                if (rtspLoaderWrapper.loadInfo.loadable == rtpDataLoadable) {
                    rtspLoaderWrapper.cancelLoad();
                    break;
                }
                i6++;
            }
            RtspMediaPeriod.this.rtspClient.signalPlaybackEnded();
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public Loader.LoadErrorAction onLoadError(RtpDataLoadable rtpDataLoadable, long j10, long j11, IOException iOException, int i6) {
            if (!RtspMediaPeriod.this.prepared) {
                RtspMediaPeriod.this.preparationError = iOException;
            } else if (!(iOException.getCause() instanceof BindException)) {
                RtspMediaPeriod.this.playbackException = new RtspMediaSource.RtspPlaybackException(rtpDataLoadable.rtspMediaTrack.uri.toString(), iOException);
            } else if (RtspMediaPeriod.access$1208(RtspMediaPeriod.this) < 3) {
                return Loader.RETRY;
            }
            return Loader.DONT_RETRY;
        }
    }

    /* compiled from: MyApplication */
    public interface Listener {
        void onSeekingUnsupported();

        void onSourceInfoRefreshed(RtspSessionTiming rtspSessionTiming);
    }

    /* compiled from: MyApplication */
    public final class RtpLoadInfo {
        private final RtpDataLoadable loadable;
        public final RtspMediaTrack mediaTrack;
        private String transport;

        public RtpLoadInfo(RtspMediaTrack rtspMediaTrack, int i6, TrackOutput trackOutput, RtpDataChannel.Factory factory) {
            this.mediaTrack = rtspMediaTrack;
            this.loadable = new RtpDataLoadable(i6, rtspMediaTrack, new RtpDataLoadable.EventListener() { // from class: androidx.media3.exoplayer.rtsp.g
                @Override // androidx.media3.exoplayer.rtsp.RtpDataLoadable.EventListener
                public final void onTransportReady(String str, RtpDataChannel rtpDataChannel) {
                    this.f2361a.lambda$new$0(str, rtpDataChannel);
                }
            }, new ExtractorOutputImpl(trackOutput), factory);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(String str, RtpDataChannel rtpDataChannel) {
            this.transport = str;
            RtspMessageChannel.InterleavedBinaryDataListener interleavedBinaryDataListener = rtpDataChannel.getInterleavedBinaryDataListener();
            if (interleavedBinaryDataListener != null) {
                RtspMediaPeriod.this.rtspClient.registerInterleavedDataChannel(rtpDataChannel.getLocalPort(), interleavedBinaryDataListener);
                RtspMediaPeriod.this.isUsingRtpTcp = true;
            }
            RtspMediaPeriod.this.maybeSetupTracks();
        }

        public Uri getTrackUri() {
            return this.loadable.rtspMediaTrack.uri;
        }

        public String getTransport() {
            Assertions.checkStateNotNull(this.transport);
            return this.transport;
        }

        public boolean isTransportReady() {
            return this.transport != null;
        }
    }

    /* compiled from: MyApplication */
    public final class RtspLoaderWrapper {
        private boolean canceled;
        public final RtpLoadInfo loadInfo;
        private final Loader loader;
        private boolean released;
        private final SampleQueue sampleQueue;

        public RtspLoaderWrapper(RtspMediaTrack rtspMediaTrack, int i6, RtpDataChannel.Factory factory) {
            this.loader = new Loader(a.e.n(i6, "ExoPlayer:RtspMediaPeriod:RtspLoaderWrapper "));
            SampleQueue sampleQueueCreateWithoutDrm = SampleQueue.createWithoutDrm(RtspMediaPeriod.this.allocator);
            this.sampleQueue = sampleQueueCreateWithoutDrm;
            this.loadInfo = RtspMediaPeriod.this.new RtpLoadInfo(rtspMediaTrack, i6, sampleQueueCreateWithoutDrm, factory);
            sampleQueueCreateWithoutDrm.setUpstreamFormatChangeListener(RtspMediaPeriod.this.internalListener);
        }

        public void cancelLoad() {
            if (this.canceled) {
                return;
            }
            this.loadInfo.loadable.cancelLoad();
            this.canceled = true;
            RtspMediaPeriod.this.updateLoadingFinished();
        }

        public long getBufferedPositionUs() {
            return this.sampleQueue.getLargestQueuedTimestampUs();
        }

        public boolean isSampleQueueReady() {
            return this.sampleQueue.isReady(this.canceled);
        }

        public int read(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i6) {
            return this.sampleQueue.read(formatHolder, decoderInputBuffer, i6, this.canceled);
        }

        public void release() {
            if (this.released) {
                return;
            }
            this.loader.release();
            this.sampleQueue.release();
            this.released = true;
        }

        public void resumeLoad() {
            Assertions.checkState(this.canceled);
            this.canceled = false;
            RtspMediaPeriod.this.updateLoadingFinished();
            startLoading();
        }

        public void seekTo(long j10) {
            if (this.canceled) {
                return;
            }
            this.loadInfo.loadable.resetForSeek();
            this.sampleQueue.reset();
            this.sampleQueue.setStartTimeUs(j10);
        }

        public int skipData(long j10) {
            int skipCount = this.sampleQueue.getSkipCount(j10, this.canceled);
            this.sampleQueue.skip(skipCount);
            return skipCount;
        }

        public void startLoading() {
            this.loader.startLoading(this.loadInfo.loadable, RtspMediaPeriod.this.internalListener, 0);
        }
    }

    /* compiled from: MyApplication */
    public final class SampleStreamImpl implements SampleStream {
        private final int track;

        public SampleStreamImpl(int i6) {
            this.track = i6;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public boolean isReady() {
            return RtspMediaPeriod.this.isReady(this.track);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public void maybeThrowError() throws RtspMediaSource.RtspPlaybackException {
            if (RtspMediaPeriod.this.playbackException != null) {
                throw RtspMediaPeriod.this.playbackException;
            }
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i6) {
            return RtspMediaPeriod.this.readData(this.track, formatHolder, decoderInputBuffer, i6);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int skipData(long j10) {
            return RtspMediaPeriod.this.skipData(this.track, j10);
        }
    }

    public RtspMediaPeriod(Allocator allocator, RtpDataChannel.Factory factory, Uri uri, Listener listener, String str, SocketFactory socketFactory, boolean z7) {
        this.allocator = allocator;
        this.rtpDataChannelFactory = factory;
        this.listener = listener;
        InternalListener internalListener = new InternalListener();
        this.internalListener = internalListener;
        this.rtspClient = new RtspClient(internalListener, internalListener, str, uri, socketFactory, z7);
        this.rtspLoaderWrappers = new ArrayList();
        this.selectedLoadInfos = new ArrayList();
        this.pendingSeekPositionUs = C.TIME_UNSET;
        this.requestedSeekPositionUs = C.TIME_UNSET;
        this.pendingSeekPositionUsForTcpRetry = C.TIME_UNSET;
    }

    public static /* synthetic */ int access$1208(RtspMediaPeriod rtspMediaPeriod) {
        int i6 = rtspMediaPeriod.portBindingRetryCount;
        rtspMediaPeriod.portBindingRetryCount = i6 + 1;
        return i6;
    }

    public static /* synthetic */ void access$500(RtspMediaPeriod rtspMediaPeriod) {
        rtspMediaPeriod.maybeFinishPrepare();
    }

    private static u1 buildTrackGroups(u1 u1Var) {
        s1 s1Var = new s1();
        for (int i6 = 0; i6 < u1Var.size(); i6++) {
            s1Var.c(new TrackGroup(Integer.toString(i6), (Format) Assertions.checkNotNull(((RtspLoaderWrapper) u1Var.get(i6)).sampleQueue.getUpstreamFormat())));
        }
        return s1Var.g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RtpDataLoadable getLoadableByTrackUri(Uri uri) {
        for (int i6 = 0; i6 < this.rtspLoaderWrappers.size(); i6++) {
            if (!this.rtspLoaderWrappers.get(i6).canceled) {
                RtpLoadInfo rtpLoadInfo = this.rtspLoaderWrappers.get(i6).loadInfo;
                if (rtpLoadInfo.getTrackUri().equals(uri)) {
                    return rtpLoadInfo.loadable;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSeekPending() {
        return this.pendingSeekPositionUs != C.TIME_UNSET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeFinishPrepare() {
        if (this.released || this.prepared) {
            return;
        }
        for (int i6 = 0; i6 < this.rtspLoaderWrappers.size(); i6++) {
            if (this.rtspLoaderWrappers.get(i6).sampleQueue.getUpstreamFormat() == null) {
                return;
            }
        }
        this.prepared = true;
        this.trackGroups = buildTrackGroups(u1.n(this.rtspLoaderWrappers));
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onPrepared(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeSetupTracks() {
        boolean zIsTransportReady = true;
        for (int i6 = 0; i6 < this.selectedLoadInfos.size(); i6++) {
            zIsTransportReady &= this.selectedLoadInfos.get(i6).isTransportReady();
        }
        if (zIsTransportReady && this.trackSelected) {
            this.rtspClient.setupSelectedTracks(this.selectedLoadInfos);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retryWithRtpTcp() {
        this.isUsingRtpTcp = true;
        this.rtspClient.retryWithRtpTcp();
        RtpDataChannel.Factory factoryCreateFallbackDataChannelFactory = this.rtpDataChannelFactory.createFallbackDataChannelFactory();
        if (factoryCreateFallbackDataChannelFactory == null) {
            this.playbackException = new RtspMediaSource.RtspPlaybackException("No fallback data channel factory for TCP retry");
            return;
        }
        ArrayList arrayList = new ArrayList(this.rtspLoaderWrappers.size());
        ArrayList arrayList2 = new ArrayList(this.selectedLoadInfos.size());
        for (int i6 = 0; i6 < this.rtspLoaderWrappers.size(); i6++) {
            RtspLoaderWrapper rtspLoaderWrapper = this.rtspLoaderWrappers.get(i6);
            if (rtspLoaderWrapper.canceled) {
                arrayList.add(rtspLoaderWrapper);
            } else {
                RtspLoaderWrapper rtspLoaderWrapper2 = new RtspLoaderWrapper(rtspLoaderWrapper.loadInfo.mediaTrack, i6, factoryCreateFallbackDataChannelFactory);
                arrayList.add(rtspLoaderWrapper2);
                rtspLoaderWrapper2.startLoading();
                if (this.selectedLoadInfos.contains(rtspLoaderWrapper.loadInfo)) {
                    arrayList2.add(rtspLoaderWrapper2.loadInfo);
                }
            }
        }
        u1 u1VarN = u1.n(this.rtspLoaderWrappers);
        this.rtspLoaderWrappers.clear();
        this.rtspLoaderWrappers.addAll(arrayList);
        this.selectedLoadInfos.clear();
        this.selectedLoadInfos.addAll(arrayList2);
        for (int i10 = 0; i10 < u1VarN.size(); i10++) {
            ((RtspLoaderWrapper) u1VarN.get(i10)).cancelLoad();
        }
    }

    private boolean seekInsideBufferUs(long j10) {
        for (int i6 = 0; i6 < this.rtspLoaderWrappers.size(); i6++) {
            if (!this.rtspLoaderWrappers.get(i6).sampleQueue.seekTo(j10, false)) {
                return false;
            }
        }
        return true;
    }

    private boolean suppressRead() {
        return this.notifyDiscontinuity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLoadingFinished() {
        this.loadingFinished = true;
        for (int i6 = 0; i6 < this.rtspLoaderWrappers.size(); i6++) {
            this.loadingFinished &= this.rtspLoaderWrappers.get(i6).canceled;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(LoadingInfo loadingInfo) {
        return isLoading();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long j10, boolean z7) {
        if (isSeekPending()) {
            return;
        }
        for (int i6 = 0; i6 < this.rtspLoaderWrappers.size(); i6++) {
            RtspLoaderWrapper rtspLoaderWrapper = this.rtspLoaderWrappers.get(i6);
            if (!rtspLoaderWrapper.canceled) {
                rtspLoaderWrapper.sampleQueue.discardTo(j10, z7, true);
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        if (this.loadingFinished || this.rtspLoaderWrappers.isEmpty()) {
            return Long.MIN_VALUE;
        }
        long j10 = this.requestedSeekPositionUs;
        if (j10 != C.TIME_UNSET) {
            return j10;
        }
        boolean z7 = true;
        long jMin = Long.MAX_VALUE;
        for (int i6 = 0; i6 < this.rtspLoaderWrappers.size(); i6++) {
            RtspLoaderWrapper rtspLoaderWrapper = this.rtspLoaderWrappers.get(i6);
            if (!rtspLoaderWrapper.canceled) {
                jMin = Math.min(jMin, rtspLoaderWrapper.getBufferedPositionUs());
                z7 = false;
            }
        }
        if (z7 || jMin == Long.MIN_VALUE) {
            return 0L;
        }
        return jMin;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public /* bridge */ /* synthetic */ List getStreamKeys(List list) {
        return getStreamKeys((List<ExoTrackSelection>) list);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        Assertions.checkState(this.prepared);
        return new TrackGroupArray((TrackGroup[]) ((u1) Assertions.checkNotNull(this.trackGroups)).toArray(new TrackGroup[0]));
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return !this.loadingFinished && (this.rtspClient.getState() == 2 || this.rtspClient.getState() == 1);
    }

    public boolean isReady(int i6) {
        return !suppressRead() && this.rtspLoaderWrappers.get(i6).isSampleQueueReady();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        IOException iOException = this.preparationError;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j10) throws IOException {
        this.callback = callback;
        try {
            this.rtspClient.start();
        } catch (IOException e5) {
            this.preparationError = e5;
            Util.closeQuietly(this.rtspClient);
        }
    }

    public int readData(int i6, FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i10) {
        if (suppressRead()) {
            return -3;
        }
        return this.rtspLoaderWrappers.get(i6).read(formatHolder, decoderInputBuffer, i10);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        if (!this.notifyDiscontinuity) {
            return C.TIME_UNSET;
        }
        this.notifyDiscontinuity = false;
        return 0L;
    }

    public void release() throws IOException {
        for (int i6 = 0; i6 < this.rtspLoaderWrappers.size(); i6++) {
            this.rtspLoaderWrappers.get(i6).release();
        }
        Util.closeQuietly(this.rtspClient);
        this.released = true;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long j10) {
        if (getBufferedPositionUs() == 0 && !this.isUsingRtpTcp) {
            this.pendingSeekPositionUsForTcpRetry = j10;
            return j10;
        }
        discardBuffer(j10, false);
        this.requestedSeekPositionUs = j10;
        if (isSeekPending()) {
            int state = this.rtspClient.getState();
            if (state == 1) {
                return j10;
            }
            if (state != 2) {
                throw new IllegalStateException();
            }
            this.pendingSeekPositionUs = j10;
            this.rtspClient.seekToUs(j10);
            return j10;
        }
        if (seekInsideBufferUs(j10)) {
            return j10;
        }
        this.pendingSeekPositionUs = j10;
        if (this.loadingFinished) {
            for (int i6 = 0; i6 < this.rtspLoaderWrappers.size(); i6++) {
                this.rtspLoaderWrappers.get(i6).resumeLoad();
            }
            if (this.isUsingRtpTcp) {
                this.rtspClient.startPlayback(Util.usToMs(j10));
            } else {
                this.rtspClient.seekToUs(j10);
            }
        } else {
            this.rtspClient.seekToUs(j10);
        }
        for (int i10 = 0; i10 < this.rtspLoaderWrappers.size(); i10++) {
            this.rtspLoaderWrappers.get(i10).seekTo(j10);
        }
        return j10;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j10) {
        for (int i6 = 0; i6 < exoTrackSelectionArr.length; i6++) {
            if (sampleStreamArr[i6] != null && (exoTrackSelectionArr[i6] == null || !zArr[i6])) {
                sampleStreamArr[i6] = null;
            }
        }
        this.selectedLoadInfos.clear();
        for (int i10 = 0; i10 < exoTrackSelectionArr.length; i10++) {
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i10];
            if (exoTrackSelection != null) {
                TrackGroup trackGroup = exoTrackSelection.getTrackGroup();
                int iIndexOf = ((u1) Assertions.checkNotNull(this.trackGroups)).indexOf(trackGroup);
                this.selectedLoadInfos.add(((RtspLoaderWrapper) Assertions.checkNotNull(this.rtspLoaderWrappers.get(iIndexOf))).loadInfo);
                if (this.trackGroups.contains(trackGroup) && sampleStreamArr[i10] == null) {
                    sampleStreamArr[i10] = new SampleStreamImpl(iIndexOf);
                    zArr2[i10] = true;
                }
            }
        }
        for (int i11 = 0; i11 < this.rtspLoaderWrappers.size(); i11++) {
            RtspLoaderWrapper rtspLoaderWrapper = this.rtspLoaderWrappers.get(i11);
            if (!this.selectedLoadInfos.contains(rtspLoaderWrapper.loadInfo)) {
                rtspLoaderWrapper.cancelLoad();
            }
        }
        this.trackSelected = true;
        if (j10 != 0) {
            this.requestedSeekPositionUs = j10;
            this.pendingSeekPositionUs = j10;
            this.pendingSeekPositionUsForTcpRetry = j10;
        }
        maybeSetupTracks();
        return j10;
    }

    public int skipData(int i6, long j10) {
        if (suppressRead()) {
            return -3;
        }
        return this.rtspLoaderWrappers.get(i6).skipData(j10);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public u1 getStreamKeys(List<ExoTrackSelection> list) {
        g1 g1Var = u1.f6276b;
        return c5.f6115e;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j10) {
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j10, SeekParameters seekParameters) {
        return j10;
    }
}
