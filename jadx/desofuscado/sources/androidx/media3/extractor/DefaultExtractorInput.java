package androidx.media3.extractor;

import androidx.media3.common.DataReader;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class DefaultExtractorInput implements ExtractorInput {
    private static final int PEEK_MAX_FREE_SPACE = 524288;
    private static final int PEEK_MIN_FREE_SPACE_AFTER_RESIZE = 65536;
    private static final int SCRATCH_SPACE_SIZE = 4096;
    private final DataReader dataReader;
    private int peekBufferLength;
    private int peekBufferPosition;
    private long position;
    private final long streamLength;
    private byte[] peekBuffer = new byte[65536];
    private final byte[] scratchSpace = new byte[4096];

    static {
        MediaLibraryInfo.registerModule("media3.extractor");
    }

    public DefaultExtractorInput(DataReader dataReader, long j10, long j11) {
        this.dataReader = dataReader;
        this.position = j10;
        this.streamLength = j11;
    }

    private void commitBytesRead(int i6) {
        if (i6 != -1) {
            this.position += i6;
        }
    }

    private void ensureSpaceForPeek(int i6) {
        int i10 = this.peekBufferPosition + i6;
        byte[] bArr = this.peekBuffer;
        if (i10 > bArr.length) {
            this.peekBuffer = Arrays.copyOf(this.peekBuffer, Util.constrainValue(bArr.length * 2, 65536 + i10, i10 + PEEK_MAX_FREE_SPACE));
        }
    }

    private int readFromPeekBuffer(byte[] bArr, int i6, int i10) {
        int i11 = this.peekBufferLength;
        if (i11 == 0) {
            return 0;
        }
        int iMin = Math.min(i11, i10);
        System.arraycopy(this.peekBuffer, 0, bArr, i6, iMin);
        updatePeekBuffer(iMin);
        return iMin;
    }

    private int readFromUpstream(byte[] bArr, int i6, int i10, int i11, boolean z7) throws IOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int i12 = this.dataReader.read(bArr, i6 + i11, i10 - i11);
        if (i12 != -1) {
            return i11 + i12;
        }
        if (i11 == 0 && z7) {
            return -1;
        }
        throw new EOFException();
    }

    private int skipFromPeekBuffer(int i6) {
        int iMin = Math.min(this.peekBufferLength, i6);
        updatePeekBuffer(iMin);
        return iMin;
    }

    private void updatePeekBuffer(int i6) {
        int i10 = this.peekBufferLength - i6;
        this.peekBufferLength = i10;
        this.peekBufferPosition = 0;
        byte[] bArr = this.peekBuffer;
        byte[] bArr2 = i10 < bArr.length - PEEK_MAX_FREE_SPACE ? new byte[65536 + i10] : bArr;
        System.arraycopy(bArr, i6, bArr2, 0, i10);
        this.peekBuffer = bArr2;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public boolean advancePeekPosition(int i6, boolean z7) throws IOException {
        ensureSpaceForPeek(i6);
        int fromUpstream = this.peekBufferLength - this.peekBufferPosition;
        while (fromUpstream < i6) {
            fromUpstream = readFromUpstream(this.peekBuffer, this.peekBufferPosition, i6, fromUpstream, z7);
            if (fromUpstream == -1) {
                return false;
            }
            this.peekBufferLength = this.peekBufferPosition + fromUpstream;
        }
        this.peekBufferPosition += i6;
        return true;
    }

    public DataReader getDataReader() {
        return this.dataReader;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public long getLength() {
        return this.streamLength;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public long getPeekPosition() {
        return this.position + this.peekBufferPosition;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public long getPosition() {
        return this.position;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public int peek(byte[] bArr, int i6, int i10) throws IOException {
        int iMin;
        ensureSpaceForPeek(i10);
        int i11 = this.peekBufferLength;
        int i12 = this.peekBufferPosition;
        int i13 = i11 - i12;
        if (i13 == 0) {
            iMin = readFromUpstream(this.peekBuffer, i12, i10, 0, true);
            if (iMin == -1) {
                return -1;
            }
            this.peekBufferLength += iMin;
        } else {
            iMin = Math.min(i10, i13);
        }
        System.arraycopy(this.peekBuffer, this.peekBufferPosition, bArr, i6, iMin);
        this.peekBufferPosition += iMin;
        return iMin;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public boolean peekFully(byte[] bArr, int i6, int i10, boolean z7) throws IOException {
        if (!advancePeekPosition(i10, z7)) {
            return false;
        }
        System.arraycopy(this.peekBuffer, this.peekBufferPosition - i10, bArr, i6, i10);
        return true;
    }

    @Override // androidx.media3.extractor.ExtractorInput, androidx.media3.common.DataReader
    public int read(byte[] bArr, int i6, int i10) throws IOException {
        int fromPeekBuffer = readFromPeekBuffer(bArr, i6, i10);
        if (fromPeekBuffer == 0) {
            fromPeekBuffer = readFromUpstream(bArr, i6, i10, 0, true);
        }
        commitBytesRead(fromPeekBuffer);
        return fromPeekBuffer;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public boolean readFully(byte[] bArr, int i6, int i10, boolean z7) throws IOException {
        int fromPeekBuffer = readFromPeekBuffer(bArr, i6, i10);
        while (fromPeekBuffer < i10 && fromPeekBuffer != -1) {
            fromPeekBuffer = readFromUpstream(bArr, i6, i10, fromPeekBuffer, z7);
        }
        commitBytesRead(fromPeekBuffer);
        return fromPeekBuffer != -1;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void resetPeekPosition() {
        this.peekBufferPosition = 0;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E extends java.lang.Throwable */
    @Override // androidx.media3.extractor.ExtractorInput
    public <E extends Throwable> void setRetryPosition(long j10, E e5) throws Throwable {
        Assertions.checkArgument(j10 >= 0);
        this.position = j10;
        throw e5;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public int skip(int i6) throws IOException {
        int iSkipFromPeekBuffer = skipFromPeekBuffer(i6);
        if (iSkipFromPeekBuffer == 0) {
            byte[] bArr = this.scratchSpace;
            iSkipFromPeekBuffer = readFromUpstream(bArr, 0, Math.min(i6, bArr.length), 0, true);
        }
        commitBytesRead(iSkipFromPeekBuffer);
        return iSkipFromPeekBuffer;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public boolean skipFully(int i6, boolean z7) throws IOException {
        int iSkipFromPeekBuffer = skipFromPeekBuffer(i6);
        while (iSkipFromPeekBuffer < i6 && iSkipFromPeekBuffer != -1) {
            iSkipFromPeekBuffer = readFromUpstream(this.scratchSpace, -iSkipFromPeekBuffer, Math.min(i6, this.scratchSpace.length + iSkipFromPeekBuffer), iSkipFromPeekBuffer, z7);
        }
        commitBytesRead(iSkipFromPeekBuffer);
        return iSkipFromPeekBuffer != -1;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void peekFully(byte[] bArr, int i6, int i10) throws IOException {
        peekFully(bArr, i6, i10, false);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void readFully(byte[] bArr, int i6, int i10) throws IOException {
        readFully(bArr, i6, i10, false);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void skipFully(int i6) throws IOException {
        skipFully(i6, false);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void advancePeekPosition(int i6) throws IOException {
        advancePeekPosition(i6, false);
    }
}
