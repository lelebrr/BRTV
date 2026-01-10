package androidx.media3.exoplayer.analytics;

import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class p implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2167a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2168b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PlaybackException f2169c;

    public /* synthetic */ p(AnalyticsListener.EventTime eventTime, PlaybackException playbackException, int i6) {
        this.f2167a = i6;
        this.f2168b = eventTime;
        this.f2169c = playbackException;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f2167a) {
            case 0:
                analyticsListener.onPlayerErrorChanged(this.f2168b, this.f2169c);
                break;
            default:
                analyticsListener.onPlayerError(this.f2168b, this.f2169c);
                break;
        }
    }
}
