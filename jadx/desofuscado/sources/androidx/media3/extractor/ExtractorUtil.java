package androidx.media3.extractor;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.UnstableApi;
import java.io.EOFException;
import java.io.IOException;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class ExtractorUtil {
    private ExtractorUtil() {
    }

    public static void checkContainerInput(boolean z7, String str) throws ParserException {
        if (!z7) {
            throw ParserException.createForMalformedContainer(str, null);
        }
    }

    public static boolean peekFullyQuietly(ExtractorInput extractorInput, byte[] bArr, int i6, int i10, boolean z7) throws IOException {
        try {
            return extractorInput.peekFully(bArr, i6, i10, z7);
        } catch (EOFException e5) {
            if (z7) {
                return false;
            }
            throw e5;
        }
    }

    public static int peekToLength(ExtractorInput extractorInput, byte[] bArr, int i6, int i10) throws IOException {
        int i11 = 0;
        while (i11 < i10) {
            int iPeek = extractorInput.peek(bArr, i6 + i11, i10 - i11);
            if (iPeek == -1) {
                break;
            }
            i11 += iPeek;
        }
        return i11;
    }

    public static boolean readFullyQuietly(ExtractorInput extractorInput, byte[] bArr, int i6, int i10) throws IOException {
        try {
            extractorInput.readFully(bArr, i6, i10);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean skipFullyQuietly(ExtractorInput extractorInput, int i6) throws IOException {
        try {
            extractorInput.skipFully(i6);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
