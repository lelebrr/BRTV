package androidx.media3.extractor;

import androidx.media3.common.DataReader;
import androidx.media3.common.util.ParsableByteArray;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class d {
    public static int b(TrackOutput trackOutput, DataReader dataReader, int i6, boolean z7) {
        return trackOutput.sampleData(dataReader, i6, z7, 0);
    }

    public static void c(TrackOutput trackOutput, ParsableByteArray parsableByteArray, int i6) {
        trackOutput.sampleData(parsableByteArray, i6, 0);
    }

    public static void a(TrackOutput trackOutput, long j10) {
    }
}
