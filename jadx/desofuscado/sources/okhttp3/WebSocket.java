package okhttp3;

import okio.ByteString;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface WebSocket {

    /* compiled from: MyApplication */
    public interface Factory {
        WebSocket newWebSocket(Request request, WebSocketListener webSocketListener);
    }

    void cancel();

    boolean close(int i6, String str);

    long queueSize();

    Request request();

    boolean send(String str);

    boolean send(ByteString byteString);
}
