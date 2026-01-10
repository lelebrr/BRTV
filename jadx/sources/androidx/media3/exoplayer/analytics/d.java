package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2129a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2130b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DecoderCounters f2131c;

    public /* synthetic */ d(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters, int i6) {
        this.f2129a = i6;
        this.f2130b = eventTime;
        this.f2131c = decoderCounters;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f2129a) {
            case 0:
                analyticsListener.onAudioEnabled(this.f2130b, this.f2131c);
                break;
            case 1:
                analyticsListener.onAudioDisabled(this.f2130b, this.f2131c);
                break;
            case 2:
                analyticsListener.onVideoDisabled(this.f2130b, this.f2131c);
                break;
            default:
                analyticsListener.onVideoEnabled(this.f2130b, this.f2131c);
                break;
        }
    }
}
