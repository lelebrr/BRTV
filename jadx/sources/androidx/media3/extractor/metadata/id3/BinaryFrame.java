package androidx.media3.extractor.metadata.id3;

import a.e;
import androidx.media3.common.util.UnstableApi;
import java.util.Arrays;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class BinaryFrame extends Id3Frame {
    public final byte[] data;

    public BinaryFrame(String str, byte[] bArr) {
        super(str);
        this.data = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || BinaryFrame.class != obj.getClass()) {
            return false;
        }
        BinaryFrame binaryFrame = (BinaryFrame) obj;
        return this.id.equals(binaryFrame.id) && Arrays.equals(this.data, binaryFrame.data);
    }

    public int hashCode() {
        return Arrays.hashCode(this.data) + e.h(527, 31, this.id);
    }
}
