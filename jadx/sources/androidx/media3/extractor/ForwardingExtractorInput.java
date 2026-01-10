package androidx.media3.extractor;

import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public class ForwardingExtractorInput implements ExtractorInput {
    private final ExtractorInput input;

    public ForwardingExtractorInput(ExtractorInput extractorInput) {
        this.input = extractorInput;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public boolean advancePeekPosition(int i6, boolean z7) throws IOException {
        return this.input.advancePeekPosition(i6, z7);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public long getLength() {
        return this.input.getLength();
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public long getPeekPosition() {
        return this.input.getPeekPosition();
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public long getPosition() {
        return this.input.getPosition();
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public int peek(byte[] bArr, int i6, int i10) throws IOException {
        return this.input.peek(bArr, i6, i10);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public boolean peekFully(byte[] bArr, int i6, int i10, boolean z7) throws IOException {
        return this.input.peekFully(bArr, i6, i10, z7);
    }

    @Override // androidx.media3.extractor.ExtractorInput, androidx.media3.common.DataReader
    public int read(byte[] bArr, int i6, int i10) throws IOException {
        return this.input.read(bArr, i6, i10);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public boolean readFully(byte[] bArr, int i6, int i10, boolean z7) throws IOException {
        return this.input.readFully(bArr, i6, i10, z7);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void resetPeekPosition() {
        this.input.resetPeekPosition();
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public <E extends Throwable> void setRetryPosition(long j10, E e5) throws Throwable {
        this.input.setRetryPosition(j10, e5);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public int skip(int i6) throws IOException {
        return this.input.skip(i6);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public boolean skipFully(int i6, boolean z7) throws IOException {
        return this.input.skipFully(i6, z7);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void advancePeekPosition(int i6) throws IOException {
        this.input.advancePeekPosition(i6);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void peekFully(byte[] bArr, int i6, int i10) throws IOException {
        this.input.peekFully(bArr, i6, i10);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void readFully(byte[] bArr, int i6, int i10) throws IOException {
        this.input.readFully(bArr, i6, i10);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void skipFully(int i6) throws IOException {
        this.input.skipFully(i6);
    }
}
