package o3;

import android.os.Handler;
import android.os.Message;
import x2.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8560a;

    public /* synthetic */ e(int i6) {
        this.f8560a = i6;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.f8560a) {
            case 0:
                if (message.what == 1) {
                    f fVar = (f) message.obj;
                    fVar.d.l(fVar);
                    break;
                }
                break;
            default:
                if (message.what == 1) {
                    ((x) message.obj).d();
                    break;
                }
                break;
        }
        return true;
    }
}
