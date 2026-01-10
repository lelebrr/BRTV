package okhttp3.internal.http2;

import j9.i;
import java.io.IOException;
import java.util.List;
import okio.BufferedSource;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface PushObserver {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final PushObserver CANCEL = new Companion.PushObserverCancel();

    /* compiled from: MyApplication */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        /* compiled from: MyApplication */
        public static final class PushObserverCancel implements PushObserver {
            @Override // okhttp3.internal.http2.PushObserver
            public boolean onData(int i6, BufferedSource bufferedSource, int i10, boolean z7) throws IOException {
                i.f(bufferedSource, "source");
                bufferedSource.skip(i10);
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onHeaders(int i6, List<Header> list, boolean z7) {
                i.f(list, "responseHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onRequest(int i6, List<Header> list) {
                i.f(list, "requestHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public void onReset(int i6, ErrorCode errorCode) {
                i.f(errorCode, "errorCode");
            }
        }

        private Companion() {
        }
    }

    boolean onData(int i6, BufferedSource bufferedSource, int i10, boolean z7) throws IOException;

    boolean onHeaders(int i6, List<Header> list, boolean z7);

    boolean onRequest(int i6, List<Header> list);

    void onReset(int i6, ErrorCode errorCode);
}
