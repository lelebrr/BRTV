package org.bitspark.android.utils;

import com.nmmedit.protect.NativeUtil;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;

/* loaded from: classes.dex */
public final class p extends WebSocketListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f8792a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q f8793b;

    static {
        NativeUtil.classesInit0(0);
    }

    public p(q qVar, String str) {
        this.f8793b = qVar;
        this.f8792a = str;
    }

    @Override // okhttp3.WebSocketListener
    public final native void onClosed(WebSocket webSocket, int i6, String str);

    @Override // okhttp3.WebSocketListener
    public final native void onClosing(WebSocket webSocket, int i6, String str);

    @Override // okhttp3.WebSocketListener
    public final native void onFailure(WebSocket webSocket, Throwable th, Response response);

    @Override // okhttp3.WebSocketListener
    public final native void onMessage(WebSocket webSocket, String str);

    @Override // okhttp3.WebSocketListener
    public final native void onOpen(WebSocket webSocket, Response response);
}
