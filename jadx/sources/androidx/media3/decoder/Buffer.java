package androidx.media3.decoder;

import androidx.media3.common.C;
import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public abstract class Buffer {
    private int flags;

    public final void addFlag(int i6) {
        this.flags = i6 | this.flags;
    }

    public void clear() {
        this.flags = 0;
    }

    public final void clearFlag(int i6) {
        this.flags = (~i6) & this.flags;
    }

    public final boolean getFlag(int i6) {
        return (this.flags & i6) == i6;
    }

    public final boolean hasSupplementalData() {
        return getFlag(268435456);
    }

    public final boolean isEndOfStream() {
        return getFlag(4);
    }

    public final boolean isFirstSample() {
        return getFlag(C.BUFFER_FLAG_FIRST_SAMPLE);
    }

    public final boolean isKeyFrame() {
        return getFlag(1);
    }

    public final boolean isLastSample() {
        return getFlag(C.BUFFER_FLAG_LAST_SAMPLE);
    }

    public final boolean notDependedOn() {
        return getFlag(C.BUFFER_FLAG_NOT_DEPENDED_ON);
    }

    public final void setFlags(int i6) {
        this.flags = i6;
    }
}
