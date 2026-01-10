package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.audio.AudioSink;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class u implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2182a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2183b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioSink.AudioTrackConfig f2184c;

    public /* synthetic */ u(AnalyticsListener.EventTime eventTime, AudioSink.AudioTrackConfig audioTrackConfig, int i6) {
        this.f2182a = i6;
        this.f2183b = eventTime;
        this.f2184c = audioTrackConfig;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f2182a) {
            case 0:
                analyticsListener.onAudioTrackInitialized(this.f2183b, this.f2184c);
                break;
            default:
                analyticsListener.onAudioTrackReleased(this.f2183b, this.f2184c);
                break;
        }
    }
}
