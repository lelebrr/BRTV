package androidx.media3.common;

import android.view.SurfaceView;
import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface DebugViewProvider {
    public static final DebugViewProvider NONE = new a4.s(1);

    SurfaceView getDebugPreviewSurfaceView(int i6, int i10);
}
