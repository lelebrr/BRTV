package androidx.media3.exoplayer.text;

import androidx.media3.extractor.text.CuesWithTiming;
import d7.u1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
interface CuesResolver {
    boolean addCues(CuesWithTiming cuesWithTiming, long j10);

    void clear();

    void discardCuesBeforeTimeUs(long j10);

    u1 getCuesAtTimeUs(long j10);

    long getNextCueChangeTimeUs(long j10);

    long getPreviousCueChangeTimeUs(long j10);
}
