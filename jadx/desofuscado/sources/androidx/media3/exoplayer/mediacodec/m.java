package androidx.media3.exoplayer.mediacodec;

import androidx.media3.common.Format;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class m implements MediaCodecUtil.ScoreProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2316a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Format f2317b;

    public /* synthetic */ m(Format format, int i6) {
        this.f2316a = i6;
        this.f2317b = format;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider
    public final int getScore(Object obj) {
        switch (this.f2316a) {
            case 0:
                return MediaCodecUtil.lambda$getDecoderInfosSortedByFullFormatSupport$1(this.f2317b, (MediaCodecInfo) obj);
            default:
                return MediaCodecUtil.lambda$getDecoderInfosSortedByFormatSupport$0(this.f2317b, (MediaCodecInfo) obj);
        }
    }
}
