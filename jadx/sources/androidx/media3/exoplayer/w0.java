package androidx.media3.exoplayer;

import androidx.media3.common.util.Clock;
import androidx.media3.exoplayer.StreamVolumeManager;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.extractor.Extractor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class w0 implements b7.i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2468a;

    public /* synthetic */ w0(int i6) {
        this.f2468a = i6;
    }

    @Override // b7.i
    public final Object apply(Object obj) {
        switch (this.f2468a) {
            case 0:
                return StreamVolumeManager.lambda$release$11((StreamVolumeManager.StreamVolumeState) obj);
            case 1:
                return StreamVolumeManager.lambda$increaseVolume$5((StreamVolumeManager.StreamVolumeState) obj);
            case 2:
                return StreamVolumeManager.lambda$decreaseVolume$7((StreamVolumeManager.StreamVolumeState) obj);
            case 3:
                return new DefaultAnalyticsCollector((Clock) obj);
            default:
                return MediaExtractorCompat.lambda$selectExtractor$0((Extractor) obj);
        }
    }
}
