package androidx.media3.ui;

import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface TimeBar {

    /* compiled from: MyApplication */
    public interface OnScrubListener {
        void onScrubMove(TimeBar timeBar, long j10);

        void onScrubStart(TimeBar timeBar, long j10);

        void onScrubStop(TimeBar timeBar, long j10, boolean z7);
    }

    void addListener(OnScrubListener onScrubListener);

    long getPreferredUpdateDelay();

    void removeListener(OnScrubListener onScrubListener);

    void setAdGroupTimesMs(long[] jArr, boolean[] zArr, int i6);

    void setBufferedPosition(long j10);

    void setDuration(long j10);

    void setEnabled(boolean z7);

    void setKeyCountIncrement(int i6);

    void setKeyTimeIncrement(long j10);

    void setPosition(long j10);
}
