package okhttp3;

import java.net.Socket;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface Connection {
    Handshake handshake();

    Protocol protocol();

    Route route();

    Socket socket();
}
