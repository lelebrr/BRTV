package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class n implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2160a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2161b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f2162c;
    public final /* synthetic */ long d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f2163e;

    public /* synthetic */ n(AnalyticsListener.EventTime eventTime, String str, long j10, long j11, int i6) {
        this.f2160a = i6;
        this.f2161b = eventTime;
        this.f2162c = str;
        this.d = j10;
        this.f2163e = j11;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.f2160a) {
            case 0:
                String str = this.f2162c;
                long j10 = this.d;
                DefaultAnalyticsCollector.lambda$onAudioDecoderInitialized$5(this.f2161b, str, j10, this.f2163e, (AnalyticsListener) obj);
                break;
            default:
                String str2 = this.f2162c;
                long j11 = this.d;
                DefaultAnalyticsCollector.lambda$onVideoDecoderInitialized$17(this.f2161b, str2, j11, this.f2163e, (AnalyticsListener) obj);
                break;
        }
    }
}
