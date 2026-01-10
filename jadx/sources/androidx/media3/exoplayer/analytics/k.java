package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class k implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2150a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2151b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Exception f2152c;

    public /* synthetic */ k(AnalyticsListener.EventTime eventTime, Exception exc, int i6) {
        this.f2150a = i6;
        this.f2151b = eventTime;
        this.f2152c = exc;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f2150a) {
            case 0:
                analyticsListener.onVideoCodecError(this.f2151b, this.f2152c);
                break;
            case 1:
                analyticsListener.onDrmSessionManagerError(this.f2151b, this.f2152c);
                break;
            case 2:
                analyticsListener.onAudioCodecError(this.f2151b, this.f2152c);
                break;
            default:
                analyticsListener.onAudioSinkError(this.f2151b, this.f2152c);
                break;
        }
    }
}
