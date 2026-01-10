package androidx.media3.exoplayer;

import androidx.media3.common.util.Clock;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.StreamVolumeManager;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class n implements b7.i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2319a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2320b;

    public /* synthetic */ n(int i6, Object obj) {
        this.f2319a = i6;
        this.f2320b = obj;
    }

    @Override // b7.i
    public final Object apply(Object obj) {
        switch (this.f2319a) {
            case 0:
                return ExoPlayer.Builder.lambda$setAnalyticsCollector$21((AnalyticsCollector) this.f2320b, (Clock) obj);
            case 1:
                return ExoPlayer.Builder.lambda$new$13((AnalyticsCollector) this.f2320b, (Clock) obj);
            default:
                return ((StreamVolumeManager) this.f2320b).lambda$release$12((StreamVolumeManager.StreamVolumeState) obj);
        }
    }
}
