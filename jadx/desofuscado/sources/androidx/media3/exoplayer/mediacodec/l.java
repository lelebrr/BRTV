package androidx.media3.exoplayer.mediacodec;

import android.os.Bundle;
import androidx.media3.exoplayer.mediacodec.LoudnessCodecController;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class l implements MediaCodecUtil.ScoreProvider, LoudnessCodecController.LoudnessParameterUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2315a;

    public /* synthetic */ l(int i6) {
        this.f2315a = i6;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider
    public int getScore(Object obj) {
        MediaCodecInfo mediaCodecInfo = (MediaCodecInfo) obj;
        switch (this.f2315a) {
            case 0:
                return MediaCodecUtil.lambda$getDecoderInfosSortedBySoftwareOnly$2(mediaCodecInfo);
            default:
                return MediaCodecUtil.lambda$applyWorkarounds$3(mediaCodecInfo);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.LoudnessCodecController.LoudnessParameterUpdateListener
    public Bundle onLoudnessParameterUpdate(Bundle bundle) {
        return d.a(bundle);
    }
}
