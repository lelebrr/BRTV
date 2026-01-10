package q1;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final v f9127a;

    /* renamed from: b, reason: collision with root package name */
    public final String f9128b;

    public s(v vVar, String str) {
        super(Looper.myLooper());
        this.f9127a = vVar;
        this.f9128b = str;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Messenger messenger = message.replyTo;
        int i6 = message.what;
        int i10 = message.arg1;
        Object obj = message.obj;
        Bundle data = message.getData();
        v vVar = this.f9127a;
        if (i6 == 7) {
            int i11 = data.getInt("volume", -1);
            String string = data.getString("routeId");
            if (i11 < 0 || string == null) {
                return;
            }
            c0 c0VarB = vVar.b(string);
            if (c0VarB == null) {
                Log.w("MR2ProviderService", "setRouteVolume: Couldn't find a controller for routeId=".concat(string));
                return;
            } else {
                c0VarB.g(i11);
                return;
            }
        }
        if (i6 == 8) {
            int i12 = data.getInt("volume", 0);
            String string2 = data.getString("routeId");
            if (i12 == 0 || string2 == null) {
                return;
            }
            c0 c0VarB2 = vVar.b(string2);
            if (c0VarB2 == null) {
                Log.w("MR2ProviderService", "updateRouteVolume: Couldn't find a controller for routeId=".concat(string2));
                return;
            } else {
                c0VarB2.j(i12);
                return;
            }
        }
        if (i6 == 9 && (obj instanceof Intent)) {
            Intent intent = (Intent) obj;
            vVar.getClass();
            String str = this.f9128b;
            if (vVar.getSessionInfo(str) == null) {
                Log.w("MR2ProviderService", "onCustomCommand: Couldn't find a session");
                return;
            }
            b0 b0VarC = vVar.c(str);
            if (b0VarC != null) {
                b0VarC.d(intent, new q(str, intent, messenger, i10));
            } else {
                Log.w("MR2ProviderService", "onControlRequest: Couldn't find a controller");
                vVar.notifyRequestFailed(i10, 3);
            }
        }
    }
}
