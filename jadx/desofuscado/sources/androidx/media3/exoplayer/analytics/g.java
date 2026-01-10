package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2138a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2139b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f2140c;

    public /* synthetic */ g(AnalyticsListener.EventTime eventTime, String str, int i6) {
        this.f2138a = i6;
        this.f2139b = eventTime;
        this.f2140c = str;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f2138a) {
            case 0:
                analyticsListener.onAudioDecoderReleased(this.f2139b, this.f2140c);
                break;
            default:
                analyticsListener.onVideoDecoderReleased(this.f2139b, this.f2140c);
                break;
        }
    }
}
