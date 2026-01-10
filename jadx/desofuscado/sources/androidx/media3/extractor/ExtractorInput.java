package androidx.media3.extractor;

import androidx.media3.common.DataReader;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface ExtractorInput extends DataReader {
    void advancePeekPosition(int i6) throws IOException;

    boolean advancePeekPosition(int i6, boolean z7) throws IOException;

    long getLength();

    long getPeekPosition();

    long getPosition();

    int peek(byte[] bArr, int i6, int i10) throws IOException;

    void peekFully(byte[] bArr, int i6, int i10) throws IOException;

    boolean peekFully(byte[] bArr, int i6, int i10, boolean z7) throws IOException;

    @Override // androidx.media3.common.DataReader
    int read(byte[] bArr, int i6, int i10) throws IOException;

    void readFully(byte[] bArr, int i6, int i10) throws IOException;

    boolean readFully(byte[] bArr, int i6, int i10, boolean z7) throws IOException;

    void resetPeekPosition();

    <E extends Throwable> void setRetryPosition(long j10, E e5) throws Throwable;

    int skip(int i6) throws IOException;

    void skipFully(int i6) throws IOException;

    boolean skipFully(int i6, boolean z7) throws IOException;
}
