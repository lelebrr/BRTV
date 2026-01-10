package androidx.media3.exoplayer.analytics;

import androidx.media3.common.Format;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class t implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2179a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f2180b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Format f2181c;
    public final /* synthetic */ DecoderReuseEvaluation d;

    public /* synthetic */ t(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation, int i6) {
        this.f2179a = i6;
        this.f2180b = eventTime;
        this.f2181c = format;
        this.d = decoderReuseEvaluation;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f2179a) {
            case 0:
                analyticsListener.onVideoInputFormatChanged(this.f2180b, this.f2181c, this.d);
                break;
            default:
                analyticsListener.onAudioInputFormatChanged(this.f2180b, this.f2181c, this.d);
                break;
        }
    }
}
