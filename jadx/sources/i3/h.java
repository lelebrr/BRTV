package i3;

import android.os.Handler;
import android.os.Message;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7319a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7320b;

    public /* synthetic */ h(int i6, Object obj) {
        this.f7319a = i6;
        this.f7320b = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.f7319a) {
            case 0:
                int i6 = message.what;
                i iVar = (i) this.f7320b;
                if (i6 == 1) {
                    iVar.b((f) message.obj);
                    return true;
                }
                if (i6 == 2) {
                    iVar.d.l((f) message.obj);
                }
                return false;
            default:
                if (message.what != 0) {
                    return false;
                }
                ua.h hVar = (ua.h) this.f7320b;
                if (message.obj != null) {
                    throw new ClassCastException();
                }
                synchronized (hVar.f10491a) {
                    throw null;
                }
        }
    }
}
