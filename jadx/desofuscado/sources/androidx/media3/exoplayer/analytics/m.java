package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class m implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2157a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2158b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2159c;
    public final /* synthetic */ boolean d;

    public /* synthetic */ m(AnalyticsListener.EventTime eventTime, int i6, int i10, boolean z7) {
        this.f2157a = i10;
        this.f2158b = eventTime;
        this.d = z7;
        this.f2159c = i6;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f2157a) {
            case 0:
                analyticsListener.onPlayerStateChanged(this.f2158b, this.d, this.f2159c);
                break;
            case 1:
                analyticsListener.onDeviceVolumeChanged(this.f2158b, this.f2159c, this.d);
                break;
            default:
                analyticsListener.onPlayWhenReadyChanged(this.f2158b, this.d, this.f2159c);
                break;
        }
    }

    public /* synthetic */ m(AnalyticsListener.EventTime eventTime, int i6, boolean z7) {
        this.f2157a = 1;
        this.f2158b = eventTime;
        this.f2159c = i6;
        this.d = z7;
    }
}
