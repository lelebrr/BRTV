package androidx.media3.exoplayer.upstream.experimental;

import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface BandwidthStatistic {
    void addSample(long j10, long j11);

    long getBandwidthEstimate();

    void reset();
}
