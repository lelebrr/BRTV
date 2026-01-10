package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class h implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2141a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2142b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2143c;

    public /* synthetic */ h(AnalyticsListener.EventTime eventTime, int i6, int i10) {
        this.f2141a = i10;
        this.f2142b = eventTime;
        this.f2143c = i6;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f2141a) {
            case 0:
                analyticsListener.onTimelineChanged(this.f2142b, this.f2143c);
                break;
            case 1:
                analyticsListener.onPlaybackSuppressionReasonChanged(this.f2142b, this.f2143c);
                break;
            case 2:
                analyticsListener.onPlaybackStateChanged(this.f2142b, this.f2143c);
                break;
            case 3:
                DefaultAnalyticsCollector.lambda$onDrmSessionAcquired$64(this.f2142b, this.f2143c, analyticsListener);
                break;
            case 4:
                analyticsListener.onAudioSessionIdChanged(this.f2142b, this.f2143c);
                break;
            default:
                analyticsListener.onRepeatModeChanged(this.f2142b, this.f2143c);
                break;
        }
    }
}
