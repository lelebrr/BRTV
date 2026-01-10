package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.source.MediaLoadData;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class r implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2173a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2174b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaLoadData f2175c;

    public /* synthetic */ r(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData, int i6) {
        this.f2173a = i6;
        this.f2174b = eventTime;
        this.f2175c = mediaLoadData;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f2173a) {
            case 0:
                analyticsListener.onDownstreamFormatChanged(this.f2174b, this.f2175c);
                break;
            default:
                analyticsListener.onUpstreamDiscarded(this.f2174b, this.f2175c);
                break;
        }
    }
}
