package b5;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v f3276a;

    public /* synthetic */ u(v vVar) {
        this.f3276a = vVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i6 = message.what;
        if (i6 == 0) {
            synchronized (this.f3276a.f3280a) {
                try {
                    s sVar = (s) message.obj;
                    t tVar = (t) this.f3276a.f3280a.get(sVar);
                    if (tVar != null && tVar.f3271a.isEmpty()) {
                        if (tVar.f3273c) {
                            tVar.f3275g.f3282c.removeMessages(1, tVar.f3274e);
                            v vVar = tVar.f3275g;
                            vVar.d.a(vVar.f3281b, tVar);
                            tVar.f3273c = false;
                            tVar.f3272b = 2;
                        }
                        this.f3276a.f3280a.remove(sVar);
                    }
                } finally {
                }
            }
            return true;
        }
        if (i6 != 1) {
            return false;
        }
        synchronized (this.f3276a.f3280a) {
            try {
                s sVar2 = (s) message.obj;
                t tVar2 = (t) this.f3276a.f3280a.get(sVar2);
                if (tVar2 != null && tVar2.f3272b == 3) {
                    Log.e("GmsClientSupervisor", "Timeout waiting for ServiceConnection callback ".concat(String.valueOf(sVar2)), new Exception());
                    ComponentName componentName = tVar2.f;
                    if (componentName == null) {
                        sVar2.getClass();
                        componentName = null;
                    }
                    if (componentName == null) {
                        String str = sVar2.f3269b;
                        l.e(str);
                        componentName = new ComponentName(str, "unknown");
                    }
                    tVar2.onServiceDisconnected(componentName);
                }
            } finally {
            }
        }
        return true;
    }
}
