package androidx.media3.exoplayer.mediacodec;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import java.util.List;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface MediaCodecSelector {
    public static final MediaCodecSelector DEFAULT;
    public static final MediaCodecSelector PREFER_SOFTWARE;

    static {
        final int i6 = 0;
        DEFAULT = new MediaCodecSelector() { // from class: androidx.media3.exoplayer.mediacodec.j
            @Override // androidx.media3.exoplayer.mediacodec.MediaCodecSelector
            public final List getDecoderInfos(String str, boolean z7, boolean z10) {
                switch (i6) {
                    case 0:
                        return MediaCodecUtil.getDecoderInfos(str, z7, z10);
                    default:
                        return MediaCodecUtil.getDecoderInfosSortedBySoftwareOnly(MediaCodecSelector.DEFAULT.getDecoderInfos(str, z7, z10));
                }
            }
        };
        final int i10 = 1;
        PREFER_SOFTWARE = new MediaCodecSelector() { // from class: androidx.media3.exoplayer.mediacodec.j
            @Override // androidx.media3.exoplayer.mediacodec.MediaCodecSelector
            public final List getDecoderInfos(String str, boolean z7, boolean z10) {
                switch (i10) {
                    case 0:
                        return MediaCodecUtil.getDecoderInfos(str, z7, z10);
                    default:
                        return MediaCodecUtil.getDecoderInfosSortedBySoftwareOnly(MediaCodecSelector.DEFAULT.getDecoderInfos(str, z7, z10));
                }
            }
        };
    }

    List<MediaCodecInfo> getDecoderInfos(String str, boolean z7, boolean z10) throws MediaCodecUtil.DecoderQueryException;
}
