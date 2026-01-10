package androidx.media3.exoplayer.source;

import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.ProgressiveMediaExtractor;
import androidx.media3.exoplayer.source.SampleQueue;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class p implements Consumer, ProgressiveMediaExtractor.Factory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2401a;

    public /* synthetic */ p(int i6) {
        this.f2401a = i6;
    }

    @Override // androidx.media3.common.util.Consumer, l8.a
    public void accept(Object obj) {
        switch (this.f2401a) {
            case 0:
                SampleQueue.lambda$new$0((SampleQueue.SharedSampleMetadata) obj);
                break;
            default:
                SpannedData.lambda$new$0(obj);
                break;
        }
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor.Factory
    public ProgressiveMediaExtractor createProgressiveMediaExtractor(PlayerId playerId) {
        return MediaParserExtractorAdapter.lambda$static$0(playerId);
    }
}
