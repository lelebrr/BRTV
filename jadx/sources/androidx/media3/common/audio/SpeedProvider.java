package androidx.media3.common.audio;

import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface SpeedProvider {
    long getNextSpeedChangeTimeUs(long j10);

    float getSpeed(long j10);
}
