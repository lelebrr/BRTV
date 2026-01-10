package androidx.media3.extractor;

import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.TrackOutput;
import java.io.EOFException;
import java.io.IOException;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class DiscardingTrackOutput implements TrackOutput {
    private final byte[] readBuffer = new byte[4096];

    @Override // androidx.media3.extractor.TrackOutput
    public final /* synthetic */ void durationUs(long j10) {
        d.a(this, j10);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final /* synthetic */ int sampleData(DataReader dataReader, int i6, boolean z7) {
        return d.b(this, dataReader, i6, z7);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final /* synthetic */ void sampleData(ParsableByteArray parsableByteArray, int i6) {
        d.c(this, parsableByteArray, i6);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public int sampleData(DataReader dataReader, int i6, boolean z7, int i10) throws IOException {
        int i11 = dataReader.read(this.readBuffer, 0, Math.min(this.readBuffer.length, i6));
        if (i11 != -1) {
            return i11;
        }
        if (z7) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void sampleData(ParsableByteArray parsableByteArray, int i6, int i10) {
        parsableByteArray.skipBytes(i6);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void format(Format format) {
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void sampleMetadata(long j10, int i6, int i10, int i11, TrackOutput.CryptoData cryptoData) {
    }
}
