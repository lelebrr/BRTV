package androidx.media3.exoplayer.source;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.LoadingInfo;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface SequenceableLoader {

    /* compiled from: MyApplication */
    public interface Callback<T extends SequenceableLoader> {
        void onContinueLoadingRequested(T t5);
    }

    boolean continueLoading(LoadingInfo loadingInfo);

    long getBufferedPositionUs();

    long getNextLoadPositionUs();

    boolean isLoading();

    void reevaluateBuffer(long j10);
}
