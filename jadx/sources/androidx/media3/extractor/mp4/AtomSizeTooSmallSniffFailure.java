package androidx.media3.extractor.mp4;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.SniffFailure;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class AtomSizeTooSmallSniffFailure implements SniffFailure {
    public final long atomSize;
    public final int atomType;
    public final int minimumHeaderSize;

    public AtomSizeTooSmallSniffFailure(int i6, long j10, int i10) {
        this.atomType = i6;
        this.atomSize = j10;
        this.minimumHeaderSize = i10;
    }
}
