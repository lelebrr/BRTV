package androidx.media3.datasource;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class AesFlushingCipher {
    private final int blockSize;
    private final Cipher cipher;
    private final byte[] flushedBlock;
    private int pendingXorBytes;
    private final byte[] zerosBlock;

    public AesFlushingCipher(int i6, byte[] bArr, String str, long j10) {
        this(i6, bArr, getFNV64Hash(str), j10);
    }

    private static long getFNV64Hash(String str) {
        long j10 = 0;
        if (str == null) {
            return 0L;
        }
        for (int i6 = 0; i6 < str.length(); i6++) {
            long jCharAt = j10 ^ str.charAt(i6);
            j10 = jCharAt + (jCharAt << 1) + (jCharAt << 4) + (jCharAt << 5) + (jCharAt << 7) + (jCharAt << 8) + (jCharAt << 40);
        }
        return j10;
    }

    private byte[] getInitializationVector(long j10, long j11) {
        return ByteBuffer.allocate(16).putLong(j10).putLong(j11).array();
    }

    private int nonFlushingUpdate(byte[] bArr, int i6, int i10, byte[] bArr2, int i11) {
        try {
            return this.cipher.update(bArr, i6, i10, bArr2, i11);
        } catch (ShortBufferException e5) {
            throw new RuntimeException(e5);
        }
    }

    public void update(byte[] bArr, int i6, int i10, byte[] bArr2, int i11) {
        int i12 = i6;
        do {
            int i13 = this.pendingXorBytes;
            if (i13 <= 0) {
                int iNonFlushingUpdate = nonFlushingUpdate(bArr, i12, i10, bArr2, i11);
                if (i10 == iNonFlushingUpdate) {
                    return;
                }
                int i14 = i10 - iNonFlushingUpdate;
                int i15 = 0;
                Assertions.checkState(i14 < this.blockSize);
                int i16 = i11 + iNonFlushingUpdate;
                int i17 = this.blockSize - i14;
                this.pendingXorBytes = i17;
                Assertions.checkState(nonFlushingUpdate(this.zerosBlock, 0, i17, this.flushedBlock, 0) == this.blockSize);
                while (i15 < i14) {
                    bArr2[i16] = this.flushedBlock[i15];
                    i15++;
                    i16++;
                }
                return;
            }
            bArr2[i11] = (byte) (bArr[i12] ^ this.flushedBlock[this.blockSize - i13]);
            i11++;
            i12++;
            this.pendingXorBytes = i13 - 1;
            i10--;
        } while (i10 != 0);
    }

    public void updateInPlace(byte[] bArr, int i6, int i10) {
        update(bArr, i6, i10, bArr, i6);
    }

    public AesFlushingCipher(int i6, byte[] bArr, long j10, long j11) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
            this.cipher = cipher;
            int blockSize = cipher.getBlockSize();
            this.blockSize = blockSize;
            this.zerosBlock = new byte[blockSize];
            this.flushedBlock = new byte[blockSize];
            int i10 = (int) (j11 % blockSize);
            cipher.init(i6, new SecretKeySpec(bArr, Util.splitAtFirst(cipher.getAlgorithm(), "/")[0]), new IvParameterSpec(getInitializationVector(j10, j11 / blockSize)));
            if (i10 != 0) {
                updateInPlace(new byte[i10], 0, i10);
            }
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e5) {
            throw new RuntimeException(e5);
        }
    }
}
