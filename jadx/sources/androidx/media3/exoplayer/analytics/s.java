package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class s implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2176a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2177b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LoadEventInfo f2178c;
    public final /* synthetic */ MediaLoadData d;

    public /* synthetic */ s(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i6) {
        this.f2176a = i6;
        this.f2177b = eventTime;
        this.f2178c = loadEventInfo;
        this.d = mediaLoadData;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f2176a) {
            case 0:
                analyticsListener.onLoadCanceled(this.f2177b, this.f2178c, this.d);
                break;
            default:
                analyticsListener.onLoadCompleted(this.f2177b, this.f2178c, this.d);
                break;
        }
    }
}
