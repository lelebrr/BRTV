package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2127a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2128b;

    public /* synthetic */ c(AnalyticsListener.EventTime eventTime, int i6) {
        this.f2127a = i6;
        this.f2128b = eventTime;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.f2127a) {
            case 0:
                ((AnalyticsListener) obj).onPlayerReleased(this.f2128b);
                break;
            case 1:
                ((AnalyticsListener) obj).onDrmKeysRemoved(this.f2128b);
                break;
            case 2:
                ((AnalyticsListener) obj).onDrmKeysRestored(this.f2128b);
                break;
            case 3:
                ((AnalyticsListener) obj).onSeekStarted(this.f2128b);
                break;
            case 4:
                ((AnalyticsListener) obj).onDrmKeysLoaded(this.f2128b);
                break;
            default:
                ((AnalyticsListener) obj).onDrmSessionReleased(this.f2128b);
                break;
        }
    }
}
