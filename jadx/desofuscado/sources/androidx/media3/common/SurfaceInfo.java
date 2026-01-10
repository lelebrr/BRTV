package androidx.media3.common;

import android.view.Surface;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class SurfaceInfo {
    public final int height;
    public final boolean isEncoderInputSurface;
    public final int orientationDegrees;
    public final Surface surface;
    public final int width;

    public SurfaceInfo(Surface surface, int i6, int i10) {
        this(surface, i6, i10, 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SurfaceInfo)) {
            return false;
        }
        SurfaceInfo surfaceInfo = (SurfaceInfo) obj;
        return this.width == surfaceInfo.width && this.height == surfaceInfo.height && this.orientationDegrees == surfaceInfo.orientationDegrees && this.isEncoderInputSurface == surfaceInfo.isEncoderInputSurface && this.surface.equals(surfaceInfo.surface);
    }

    public int hashCode() {
        return (((((((this.surface.hashCode() * 31) + this.width) * 31) + this.height) * 31) + this.orientationDegrees) * 31) + (this.isEncoderInputSurface ? 1 : 0);
    }

    public SurfaceInfo(Surface surface, int i6, int i10, int i11) {
        this(surface, i6, i10, i11, false);
    }

    public SurfaceInfo(Surface surface, int i6, int i10, int i11, boolean z7) {
        Assertions.checkArgument(i11 == 0 || i11 == 90 || i11 == 180 || i11 == 270, "orientationDegrees must be 0, 90, 180, or 270");
        this.surface = surface;
        this.width = i6;
        this.height = i10;
        this.orientationDegrees = i11;
        this.isEncoderInputSurface = z7;
    }
}
