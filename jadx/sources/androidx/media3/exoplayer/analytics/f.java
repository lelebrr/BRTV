package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2135a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2136b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f2137c;

    public /* synthetic */ f(AnalyticsListener.EventTime eventTime, int i6, boolean z7) {
        this.f2135a = i6;
        this.f2136b = eventTime;
        this.f2137c = z7;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f2135a) {
            case 0:
                DefaultAnalyticsCollector.lambda$onIsLoadingChanged$35(this.f2136b, this.f2137c, analyticsListener);
                break;
            case 1:
                analyticsListener.onSkipSilenceEnabledChanged(this.f2136b, this.f2137c);
                break;
            case 2:
                analyticsListener.onIsPlayingChanged(this.f2136b, this.f2137c);
                break;
            default:
                analyticsListener.onShuffleModeChanged(this.f2136b, this.f2137c);
                break;
        }
    }
}
