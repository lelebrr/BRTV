package okhttp3.internal.http2;

import j9.i;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class StreamResetException extends IOException {
    public final ErrorCode errorCode;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StreamResetException(ErrorCode errorCode) {
        super("stream was reset: " + errorCode);
        i.f(errorCode, "errorCode");
        this.errorCode = errorCode;
    }
}
