package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class i implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2144a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2145b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2146c;
    public final /* synthetic */ long d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f2147e;

    public /* synthetic */ i(AnalyticsListener.EventTime eventTime, int i6, long j10, long j11, int i10) {
        this.f2144a = i10;
        this.f2145b = eventTime;
        this.f2146c = i6;
        this.d = j10;
        this.f2147e = j11;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.f2144a) {
            case 0:
                ((AnalyticsListener) obj).onBandwidthEstimate(this.f2145b, this.f2146c, this.d, this.f2147e);
                break;
            default:
                ((AnalyticsListener) obj).onAudioUnderrun(this.f2145b, this.f2146c, this.d, this.f2147e);
                break;
        }
    }
}
