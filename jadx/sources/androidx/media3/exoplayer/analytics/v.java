package androidx.media3.exoplayer.analytics;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class v implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2185a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2186b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaMetadata f2187c;

    public /* synthetic */ v(AnalyticsListener.EventTime eventTime, MediaMetadata mediaMetadata, int i6) {
        this.f2185a = i6;
        this.f2186b = eventTime;
        this.f2187c = mediaMetadata;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f2185a) {
            case 0:
                analyticsListener.onPlaylistMetadataChanged(this.f2186b, this.f2187c);
                break;
            default:
                analyticsListener.onMediaMetadataChanged(this.f2186b, this.f2187c);
                break;
        }
    }
}
