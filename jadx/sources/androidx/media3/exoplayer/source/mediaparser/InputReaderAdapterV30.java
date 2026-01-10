package androidx.media3.exoplayer.source.mediaparser;

import android.media.MediaParser;
import androidx.media3.common.DataReader;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.IOException;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class InputReaderAdapterV30 implements MediaParser.SeekableInputReader {
    private long currentPosition;
    private DataReader dataReader;
    private long lastSeekPosition;
    private long resourceLength;

    public long getAndResetSeekPosition() {
        long j10 = this.lastSeekPosition;
        this.lastSeekPosition = -1L;
        return j10;
    }

    @Override // android.media.MediaParser.InputReader
    public long getLength() {
        return this.resourceLength;
    }

    @Override // android.media.MediaParser.InputReader
    public long getPosition() {
        return this.currentPosition;
    }

    @Override // android.media.MediaParser.InputReader
    public int read(byte[] bArr, int i6, int i10) throws IOException {
        int i11 = ((DataReader) Util.castNonNull(this.dataReader)).read(bArr, i6, i10);
        this.currentPosition += i11;
        return i11;
    }

    @Override // android.media.MediaParser.SeekableInputReader
    public void seekToPosition(long j10) {
        this.lastSeekPosition = j10;
    }

    public void setCurrentPosition(long j10) {
        this.currentPosition = j10;
    }

    public void setDataReader(DataReader dataReader, long j10) {
        this.dataReader = dataReader;
        this.resourceLength = j10;
        this.lastSeekPosition = -1L;
    }
}
