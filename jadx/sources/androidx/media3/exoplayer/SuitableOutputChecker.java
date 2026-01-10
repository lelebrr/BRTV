package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Looper;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface SuitableOutputChecker {

    /* compiled from: MyApplication */
    public interface Callback {
        void onSelectedOutputSuitabilityChanged(boolean z7);
    }

    void disable();

    void enable(Callback callback, Context context, Looper looper, Looper looper2, Clock clock);

    boolean isSelectedOutputSuitableForPlayback();
}
