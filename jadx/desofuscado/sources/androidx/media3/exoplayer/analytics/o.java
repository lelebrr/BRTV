package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class o implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2164a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2165b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f2166c;
    public final /* synthetic */ int d;

    public /* synthetic */ o(AnalyticsListener.EventTime eventTime, int i6, long j10) {
        this.f2165b = eventTime;
        this.d = i6;
        this.f2166c = j10;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f2164a) {
            case 0:
                analyticsListener.onDroppedVideoFrames(this.f2165b, this.d, this.f2166c);
                break;
            default:
                analyticsListener.onVideoFrameProcessingOffset(this.f2165b, this.f2166c, this.d);
                break;
        }
    }

    public /* synthetic */ o(AnalyticsListener.EventTime eventTime, long j10, int i6) {
        this.f2165b = eventTime;
        this.f2166c = j10;
        this.d = i6;
    }
}
