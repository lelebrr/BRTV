package androidx.media3.container;

import a.e;
import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.i;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import b7.k;
import ea.q;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class MdtaMetadataEntry implements Metadata.Entry {
    public static final byte AUXILIARY_TRACKS_SAMPLES_INTERLEAVED = 1;
    public static final byte AUXILIARY_TRACKS_SAMPLES_NOT_INTERLEAVED = 0;
    public static final int DEFAULT_LOCALE_INDICATOR = 0;
    public static final String KEY_ANDROID_CAPTURE_FPS = "com.android.capture.fps";
    public static final String KEY_AUXILIARY_TRACKS_INTERLEAVED = "auxiliary.tracks.interleaved";
    public static final String KEY_AUXILIARY_TRACKS_LENGTH = "auxiliary.tracks.length";
    public static final String KEY_AUXILIARY_TRACKS_MAP = "auxiliary.tracks.map";
    public static final String KEY_AUXILIARY_TRACKS_OFFSET = "auxiliary.tracks.offset";
    public static final int TYPE_INDICATOR_8_BIT_UNSIGNED_INT = 75;
    public static final int TYPE_INDICATOR_FLOAT32 = 23;
    public static final int TYPE_INDICATOR_INT32 = 67;
    public static final int TYPE_INDICATOR_RESERVED = 0;
    public static final int TYPE_INDICATOR_STRING = 1;
    public static final int TYPE_INDICATOR_UNSIGNED_INT64 = 78;
    public final String key;
    public final int localeIndicator;
    public final int typeIndicator;
    public final byte[] value;

    public MdtaMetadataEntry(String str, byte[] bArr, int i6) {
        this(str, bArr, 0, i6);
    }

    private static String getFormattedValueForAuxiliaryTracksMap(List<Integer> list) {
        StringBuilder sbM = q.m("track types = ");
        new k(String.valueOf(',')).a(sbM, list.iterator());
        return sbM.toString();
    }

    private static void validateData(String str, byte[] bArr, int i6) {
        boolean z7;
        byte b8;
        str.getClass();
        switch (str) {
            case "com.android.capture.fps":
                if (i6 == 23 && bArr.length == 4) {
                    z7 = true;
                }
                Assertions.checkArgument(z7);
                break;
            case "auxiliary.tracks.interleaved":
                if (i6 == 75 && bArr.length == 1 && ((b8 = bArr[0]) == 0 || b8 == 1)) {
                    z7 = true;
                }
                Assertions.checkArgument(z7);
                break;
            case "auxiliary.tracks.length":
            case "auxiliary.tracks.offset":
                if (i6 == 78 && bArr.length == 8) {
                    z7 = true;
                }
                Assertions.checkArgument(z7);
                break;
            case "auxiliary.tracks.map":
                Assertions.checkArgument(i6 == 0);
                break;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || MdtaMetadataEntry.class != obj.getClass()) {
            return false;
        }
        MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) obj;
        return this.key.equals(mdtaMetadataEntry.key) && Arrays.equals(this.value, mdtaMetadataEntry.value) && this.localeIndicator == mdtaMetadataEntry.localeIndicator && this.typeIndicator == mdtaMetadataEntry.typeIndicator;
    }

    public List<Integer> getAuxiliaryTrackTypesFromMap() {
        Assertions.checkState(this.key.equals(KEY_AUXILIARY_TRACKS_MAP), "Metadata is not an auxiliary tracks map");
        byte b8 = this.value[1];
        ArrayList arrayList = new ArrayList();
        for (int i6 = 0; i6 < b8; i6++) {
            arrayList.add(Integer.valueOf(this.value[i6 + 2]));
        }
        return arrayList;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ byte[] getWrappedMetadataBytes() {
        return i.a(this);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ Format getWrappedMetadataFormat() {
        return i.b(this);
    }

    public int hashCode() {
        return ((((Arrays.hashCode(this.value) + e.h(527, 31, this.key)) * 31) + this.localeIndicator) * 31) + this.typeIndicator;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ void populateMediaMetadata(MediaMetadata.Builder builder) {
        i.c(this, builder);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String toString() {
        /*
            r9 = this;
            int r0 = r9.typeIndicator
            if (r0 == 0) goto L97
            r1 = 1
            if (r0 == r1) goto L90
            r2 = 23
            r3 = 3
            r4 = 2
            java.lang.String r5 = "array too small: %s < %s"
            r6 = 4
            r7 = 0
            if (r0 == r2) goto L64
            r2 = 67
            if (r0 == r2) goto L3c
            r1 = 75
            if (r0 == r1) goto L30
            r1 = 78
            if (r0 == r1) goto L1f
            goto Laa
        L1f:
            androidx.media3.common.util.ParsableByteArray r0 = new androidx.media3.common.util.ParsableByteArray
            byte[] r1 = r9.value
            r0.<init>(r1)
            long r0 = r0.readUnsignedLongToLong()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto Lb0
        L30:
            byte[] r0 = r9.value
            r0 = r0[r7]
            r0 = r0 & 255(0xff, float:3.57E-43)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto Lb0
        L3c:
            byte[] r0 = r9.value
            int r2 = r0.length
            if (r2 < r6) goto L43
            r2 = 1
            goto L44
        L43:
            r2 = 0
        L44:
            int r8 = r0.length
            b7.b.d(r5, r8, r6, r2)
            r2 = r0[r7]
            r1 = r0[r1]
            r4 = r0[r4]
            r0 = r0[r3]
            int r2 = r2 << 24
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << 16
            r1 = r1 | r2
            r2 = r4 & 255(0xff, float:3.57E-43)
            int r2 = r2 << 8
            r1 = r1 | r2
            r0 = r0 & 255(0xff, float:3.57E-43)
            r0 = r0 | r1
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto Lb0
        L64:
            byte[] r0 = r9.value
            int r2 = r0.length
            if (r2 < r6) goto L6b
            r2 = 1
            goto L6c
        L6b:
            r2 = 0
        L6c:
            int r8 = r0.length
            b7.b.d(r5, r8, r6, r2)
            r2 = r0[r7]
            r1 = r0[r1]
            r4 = r0[r4]
            r0 = r0[r3]
            int r2 = r2 << 24
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << 16
            r1 = r1 | r2
            r2 = r4 & 255(0xff, float:3.57E-43)
            int r2 = r2 << 8
            r1 = r1 | r2
            r0 = r0 & 255(0xff, float:3.57E-43)
            r0 = r0 | r1
            float r0 = java.lang.Float.intBitsToFloat(r0)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto Lb0
        L90:
            byte[] r0 = r9.value
            java.lang.String r0 = androidx.media3.common.util.Util.fromUtf8Bytes(r0)
            goto Lb0
        L97:
            java.lang.String r0 = r9.key
            java.lang.String r1 = "auxiliary.tracks.map"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Laa
            java.util.List r0 = r9.getAuxiliaryTrackTypesFromMap()
            java.lang.String r0 = getFormattedValueForAuxiliaryTracksMap(r0)
            goto Lb0
        Laa:
            byte[] r0 = r9.value
            java.lang.String r0 = androidx.media3.common.util.Util.toHexString(r0)
        Lb0:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "mdta: key="
            r1.<init>(r2)
            java.lang.String r2 = r9.key
            r1.append(r2)
            java.lang.String r2 = ", value="
            r1.append(r2)
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.container.MdtaMetadataEntry.toString():java.lang.String");
    }

    public MdtaMetadataEntry(String str, byte[] bArr, int i6, int i10) {
        validateData(str, bArr, i10);
        this.key = str;
        this.value = bArr;
        this.localeIndicator = i6;
        this.typeIndicator = i10;
    }
}
