package androidx.media3.exoplayer.drm;

import androidx.media3.exoplayer.drm.ExoMediaDrm;
import java.util.UUID;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class k implements ExoMediaDrm.Provider {
    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm.Provider
    public final ExoMediaDrm acquireExoMediaDrm(UUID uuid) {
        return FrameworkMediaDrm.lambda$static$0(uuid);
    }
}
