package okhttp3;

import j9.i;
import okio.ByteString;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class WebSocketListener {
    public void onClosed(WebSocket webSocket, int i6, String str) {
        i.f(webSocket, "webSocket");
        i.f(str, "reason");
    }

    public void onClosing(WebSocket webSocket, int i6, String str) {
        i.f(webSocket, "webSocket");
        i.f(str, "reason");
    }

    public void onFailure(WebSocket webSocket, Throwable th, Response response) {
        i.f(webSocket, "webSocket");
        i.f(th, "t");
    }

    public void onMessage(WebSocket webSocket, String str) {
        i.f(webSocket, "webSocket");
        i.f(str, "text");
    }

    public void onOpen(WebSocket webSocket, Response response) {
        i.f(webSocket, "webSocket");
        i.f(response, "response");
    }

    public void onMessage(WebSocket webSocket, ByteString byteString) {
        i.f(webSocket, "webSocket");
        i.f(byteString, "bytes");
    }
}
