package androidx.media3.common;

import android.util.Pair;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.UnstableApi;
import java.util.List;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface VideoCompositorSettings {
    public static final VideoCompositorSettings DEFAULT = new VideoCompositorSettings() { // from class: androidx.media3.common.VideoCompositorSettings.1
        @Override // androidx.media3.common.VideoCompositorSettings
        public Size getOutputSize(List<Size> list) {
            return list.get(0);
        }

        @Override // androidx.media3.common.VideoCompositorSettings
        public OverlaySettings getOverlaySettings(int i6, long j10) {
            return new OverlaySettings() { // from class: androidx.media3.common.VideoCompositorSettings.1.1
                @Override // androidx.media3.common.OverlaySettings
                public final /* synthetic */ float getAlphaScale() {
                    return j.a(this);
                }

                @Override // androidx.media3.common.OverlaySettings
                public final /* synthetic */ Pair getBackgroundFrameAnchor() {
                    return j.b(this);
                }

                @Override // androidx.media3.common.OverlaySettings
                public final /* synthetic */ float getHdrLuminanceMultiplier() {
                    return j.c(this);
                }

                @Override // androidx.media3.common.OverlaySettings
                public final /* synthetic */ Pair getOverlayFrameAnchor() {
                    return j.d(this);
                }

                @Override // androidx.media3.common.OverlaySettings
                public final /* synthetic */ float getRotationDegrees() {
                    return j.e(this);
                }

                @Override // androidx.media3.common.OverlaySettings
                public final /* synthetic */ Pair getScale() {
                    return j.f(this);
                }
            };
        }
    };

    Size getOutputSize(List<Size> list);

    OverlaySettings getOverlaySettings(int i6, long j10);
}
