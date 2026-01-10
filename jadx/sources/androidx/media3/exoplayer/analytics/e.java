package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2132a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2133b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f2134c;

    public /* synthetic */ e(AnalyticsListener.EventTime eventTime, long j10, int i6) {
        this.f2132a = i6;
        this.f2133b = eventTime;
        this.f2134c = j10;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f2132a) {
            case 0:
                analyticsListener.onSeekForwardIncrementChanged(this.f2133b, this.f2134c);
                break;
            case 1:
                analyticsListener.onAudioPositionAdvancing(this.f2133b, this.f2134c);
                break;
            case 2:
                analyticsListener.onSeekBackIncrementChanged(this.f2133b, this.f2134c);
                break;
            default:
                analyticsListener.onMaxSeekToPreviousPositionChanged(this.f2133b, this.f2134c);
                break;
        }
    }
}
