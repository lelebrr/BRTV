package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class l implements ListenerSet.Event, Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LoadEventInfo f2153a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MediaLoadData f2154b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ IOException f2155c;
    public final /* synthetic */ boolean d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f2156e;

    public /* synthetic */ l(Object obj, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z7) {
        this.f2156e = obj;
        this.f2153a = loadEventInfo;
        this.f2154b = mediaLoadData;
        this.f2155c = iOException;
        this.d = z7;
    }

    @Override // androidx.media3.common.util.Consumer, l8.a
    public void accept(Object obj) {
        MediaLoadData mediaLoadData = this.f2154b;
        IOException iOException = this.f2155c;
        ((MediaSourceEventListener.EventDispatcher) this.f2156e).lambda$loadError$3(this.f2153a, mediaLoadData, iOException, this.d, (MediaSourceEventListener) obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onLoadError((AnalyticsListener.EventTime) this.f2156e, this.f2153a, this.f2154b, this.f2155c, this.d);
    }
}
