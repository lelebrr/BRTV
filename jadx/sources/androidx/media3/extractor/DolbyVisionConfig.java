package androidx.media3.extractor;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import ea.q;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class DolbyVisionConfig {
    public final String codecs;
    public final int level;
    public final int profile;

    private DolbyVisionConfig(int i6, int i10, String str) {
        this.profile = i6;
        this.level = i10;
        this.codecs = str;
    }

    public static DolbyVisionConfig parse(ParsableByteArray parsableByteArray) {
        String str;
        parsableByteArray.skipBytes(2);
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int i6 = unsignedByte >> 1;
        int unsignedByte2 = ((parsableByteArray.readUnsignedByte() >> 3) & 31) | ((unsignedByte & 1) << 5);
        if (i6 == 4 || i6 == 5 || i6 == 7 || i6 == 8) {
            str = "dvhe";
        } else if (i6 == 9) {
            str = "dvav";
        } else {
            if (i6 != 10) {
                return null;
            }
            str = "dav1";
        }
        StringBuilder sbM = q.m(str);
        sbM.append(i6 < 10 ? ".0" : ".");
        sbM.append(i6);
        sbM.append(unsignedByte2 < 10 ? ".0" : ".");
        sbM.append(unsignedByte2);
        return new DolbyVisionConfig(i6, unsignedByte2, sbM.toString());
    }
}
