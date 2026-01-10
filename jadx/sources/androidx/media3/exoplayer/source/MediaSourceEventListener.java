package androidx.media3.exoplayer.source;

import android.os.Handler;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.w;
import androidx.media3.exoplayer.source.MediaSource;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface MediaSourceEventListener {

    /* compiled from: MyApplication */
    public static class EventDispatcher {
        private final CopyOnWriteArrayList<ListenerAndHandler> listenerAndHandlers;
        public final MediaSource.MediaPeriodId mediaPeriodId;
        public final int windowIndex;

        /* compiled from: MyApplication */
        public static final class ListenerAndHandler {
            public Handler handler;
            public MediaSourceEventListener listener;

            public ListenerAndHandler(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
                this.handler = handler;
                this.listener = mediaSourceEventListener;
            }
        }

        public EventDispatcher() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$downstreamFormatChanged$5(MediaLoadData mediaLoadData, MediaSourceEventListener mediaSourceEventListener) {
            mediaSourceEventListener.onDownstreamFormatChanged(this.windowIndex, this.mediaPeriodId, mediaLoadData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadCanceled$2(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, MediaSourceEventListener mediaSourceEventListener) {
            mediaSourceEventListener.onLoadCanceled(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadCompleted$1(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, MediaSourceEventListener mediaSourceEventListener) {
            mediaSourceEventListener.onLoadCompleted(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadError$3(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z7, MediaSourceEventListener mediaSourceEventListener) {
            mediaSourceEventListener.onLoadError(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData, iOException, z7);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadStarted$0(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i6, MediaSourceEventListener mediaSourceEventListener) {
            mediaSourceEventListener.onLoadStarted(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData, i6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$upstreamDiscarded$4(MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData, MediaSourceEventListener mediaSourceEventListener) {
            mediaSourceEventListener.onUpstreamDiscarded(this.windowIndex, mediaPeriodId, mediaLoadData);
        }

        public void addEventListener(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
            Assertions.checkNotNull(handler);
            Assertions.checkNotNull(mediaSourceEventListener);
            this.listenerAndHandlers.add(new ListenerAndHandler(handler, mediaSourceEventListener));
        }

        public void dispatchEvent(Consumer<MediaSourceEventListener> consumer) {
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                Util.postOrRun(next.handler, new m(consumer, 1, next.listener));
            }
        }

        public void downstreamFormatChanged(int i6, Format format, int i10, Object obj, long j10) {
            downstreamFormatChanged(new MediaLoadData(1, i6, format, i10, obj, Util.usToMs(j10), C.TIME_UNSET));
        }

        public void loadCanceled(LoadEventInfo loadEventInfo, int i6) {
            loadCanceled(loadEventInfo, i6, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET);
        }

        public void loadCompleted(LoadEventInfo loadEventInfo, int i6) {
            loadCompleted(loadEventInfo, i6, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET);
        }

        public void loadError(LoadEventInfo loadEventInfo, int i6, IOException iOException, boolean z7) {
            loadError(loadEventInfo, i6, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, iOException, z7);
        }

        @Deprecated
        public void loadStarted(LoadEventInfo loadEventInfo, int i6) {
            loadStarted(loadEventInfo, i6, 0);
        }

        public void removeEventListener(MediaSourceEventListener mediaSourceEventListener) {
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                if (next.listener == mediaSourceEventListener) {
                    this.listenerAndHandlers.remove(next);
                }
            }
        }

        public void upstreamDiscarded(int i6, long j10, long j11) {
            upstreamDiscarded(new MediaLoadData(1, i6, null, 3, null, Util.usToMs(j10), Util.usToMs(j11)));
        }

        public EventDispatcher withParameters(int i6, MediaSource.MediaPeriodId mediaPeriodId) {
            return new EventDispatcher(this.listenerAndHandlers, i6, mediaPeriodId);
        }

        private EventDispatcher(CopyOnWriteArrayList<ListenerAndHandler> copyOnWriteArrayList, int i6, MediaSource.MediaPeriodId mediaPeriodId) {
            this.listenerAndHandlers = copyOnWriteArrayList;
            this.windowIndex = i6;
            this.mediaPeriodId = mediaPeriodId;
        }

        public void loadCanceled(LoadEventInfo loadEventInfo, int i6, int i10, Format format, int i11, Object obj, long j10, long j11) {
            loadCanceled(loadEventInfo, new MediaLoadData(i6, i10, format, i11, obj, Util.usToMs(j10), Util.usToMs(j11)));
        }

        public void loadCompleted(LoadEventInfo loadEventInfo, int i6, int i10, Format format, int i11, Object obj, long j10, long j11) {
            loadCompleted(loadEventInfo, new MediaLoadData(i6, i10, format, i11, obj, Util.usToMs(j10), Util.usToMs(j11)));
        }

        public void loadError(LoadEventInfo loadEventInfo, int i6, int i10, Format format, int i11, Object obj, long j10, long j11, IOException iOException, boolean z7) {
            loadError(loadEventInfo, new MediaLoadData(i6, i10, format, i11, obj, Util.usToMs(j10), Util.usToMs(j11)), iOException, z7);
        }

        public void loadStarted(LoadEventInfo loadEventInfo, int i6, int i10) {
            loadStarted(loadEventInfo, i6, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, i10);
        }

        @Deprecated
        public EventDispatcher withParameters(int i6, MediaSource.MediaPeriodId mediaPeriodId, long j10) {
            return new EventDispatcher(this.listenerAndHandlers, i6, mediaPeriodId);
        }

        @Deprecated
        public void loadStarted(LoadEventInfo loadEventInfo, int i6, int i10, Format format, int i11, Object obj, long j10, long j11) {
            loadStarted(loadEventInfo, new MediaLoadData(i6, i10, format, i11, obj, Util.usToMs(j10), Util.usToMs(j11)));
        }

        public void downstreamFormatChanged(MediaLoadData mediaLoadData) {
            dispatchEvent(new c(this, mediaLoadData));
        }

        public void upstreamDiscarded(MediaLoadData mediaLoadData) {
            dispatchEvent(new androidx.media3.exoplayer.hls.b(this, (MediaSource.MediaPeriodId) Assertions.checkNotNull(this.mediaPeriodId), mediaLoadData, 2));
        }

        public void loadCanceled(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            dispatchEvent(new j(this, loadEventInfo, mediaLoadData, 1));
        }

        public void loadCompleted(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            dispatchEvent(new j(this, loadEventInfo, mediaLoadData, 0));
        }

        public void loadError(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z7) {
            dispatchEvent(new androidx.media3.exoplayer.analytics.l(this, loadEventInfo, mediaLoadData, iOException, z7));
        }

        public void loadStarted(LoadEventInfo loadEventInfo, int i6, int i10, Format format, int i11, Object obj, long j10, long j11, int i12) {
            loadStarted(loadEventInfo, new MediaLoadData(i6, i10, format, i11, obj, Util.usToMs(j10), Util.usToMs(j11)), i12);
        }

        @Deprecated
        public void loadStarted(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            loadStarted(loadEventInfo, mediaLoadData, 0);
        }

        public void loadStarted(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i6) {
            dispatchEvent(new w(this, loadEventInfo, mediaLoadData, i6, 2));
        }
    }

    void onDownstreamFormatChanged(int i6, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData);

    void onLoadCanceled(int i6, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void onLoadCompleted(int i6, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void onLoadError(int i6, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z7);

    void onLoadStarted(int i6, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i10);

    void onUpstreamDiscarded(int i6, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData);
}
