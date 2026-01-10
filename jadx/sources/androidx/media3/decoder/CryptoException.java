package androidx.media3.decoder;

import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public class CryptoException extends Exception {
    public final int errorCode;

    public CryptoException(int i6, String str) {
        super(str);
        this.errorCode = i6;
    }
}
