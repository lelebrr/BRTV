package com.alibaba.fastjson.util;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class UTF8Decoder extends CharsetDecoder {
    private static final Charset charset = Charset.forName("UTF-8");

    public UTF8Decoder() {
        super(charset, 1.0f, 1.0f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0091, code lost:
    
        return xflow(r13, r2, r6, r14, r8, 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c9, code lost:
    
        return xflow(r13, r2, r6, r14, r8, 3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x012f, code lost:
    
        return xflow(r13, r2, r6, r14, r8, 4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.nio.charset.CoderResult decodeArrayLoop(java.nio.ByteBuffer r13, java.nio.CharBuffer r14) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.util.UTF8Decoder.decodeArrayLoop(java.nio.ByteBuffer, java.nio.CharBuffer):java.nio.charset.CoderResult");
    }

    private static boolean isMalformed2(int i6, int i10) {
        return (i6 & 30) == 0 || (i10 & 192) != 128;
    }

    private static boolean isMalformed3(int i6, int i10, int i11) {
        return ((i6 != -32 || (i10 & 224) != 128) && (i10 & 192) == 128 && (i11 & 192) == 128) ? false : true;
    }

    private static boolean isMalformed4(int i6, int i10, int i11) {
        return ((i6 & 192) == 128 && (i10 & 192) == 128 && (i11 & 192) == 128) ? false : true;
    }

    private static boolean isNotContinuation(int i6) {
        return (i6 & 192) != 128;
    }

    private static CoderResult lookupN(ByteBuffer byteBuffer, int i6) {
        for (int i10 = 1; i10 < i6; i10++) {
            if (isNotContinuation(byteBuffer.get())) {
                return CoderResult.malformedForLength(i10);
            }
        }
        return CoderResult.malformedForLength(i6);
    }

    private static CoderResult malformed(ByteBuffer byteBuffer, int i6, CharBuffer charBuffer, int i10, int i11) {
        byteBuffer.position(i6 - byteBuffer.arrayOffset());
        CoderResult coderResultMalformedN = malformedN(byteBuffer, i11);
        byteBuffer.position(i6);
        charBuffer.position(i10);
        return coderResultMalformedN;
    }

    public static CoderResult malformedN(ByteBuffer byteBuffer, int i6) {
        int i10 = 1;
        if (i6 == 1) {
            byte b8 = byteBuffer.get();
            return (b8 >> 2) == -2 ? byteBuffer.remaining() < 4 ? CoderResult.UNDERFLOW : lookupN(byteBuffer, 5) : (b8 >> 1) == -2 ? byteBuffer.remaining() < 5 ? CoderResult.UNDERFLOW : lookupN(byteBuffer, 6) : CoderResult.malformedForLength(1);
        }
        if (i6 == 2) {
            return CoderResult.malformedForLength(1);
        }
        if (i6 != 3) {
            if (i6 != 4) {
                throw new IllegalStateException();
            }
            int i11 = byteBuffer.get() & 255;
            byte b10 = byteBuffer.get();
            int i12 = b10 & 255;
            return (i11 > 244 || (i11 == 240 && (i12 < 144 || i12 > 191)) || ((i11 == 244 && (b10 & 240) != 128) || isNotContinuation(i12))) ? CoderResult.malformedForLength(1) : isNotContinuation(byteBuffer.get()) ? CoderResult.malformedForLength(2) : CoderResult.malformedForLength(3);
        }
        byte b11 = byteBuffer.get();
        byte b12 = byteBuffer.get();
        if ((b11 != -32 || (b12 & 224) != 128) && !isNotContinuation(b12)) {
            i10 = 2;
        }
        return CoderResult.malformedForLength(i10);
    }

    private static CoderResult xflow(Buffer buffer, int i6, int i10, Buffer buffer2, int i11, int i12) {
        buffer.position(i6);
        buffer2.position(i11);
        return (i12 == 0 || i10 - i6 < i12) ? CoderResult.UNDERFLOW : CoderResult.OVERFLOW;
    }

    @Override // java.nio.charset.CharsetDecoder
    public CoderResult decodeLoop(ByteBuffer byteBuffer, CharBuffer charBuffer) {
        return decodeArrayLoop(byteBuffer, charBuffer);
    }
}
