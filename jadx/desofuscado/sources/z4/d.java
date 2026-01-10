package z4;

import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.internal.cast.x0;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class d extends x0 {
    @Override // com.google.android.gms.internal.cast.x0, android.os.Handler
    public final void handleMessage(Message message) {
        int i6 = message.what;
        if (i6 != 1) {
            if (i6 != 2) {
                Log.wtf("BasePendingResult", a.e.n(i6, "Don't know how to handle message: "), new Exception());
                return;
            } else {
                ((BasePendingResult) message.obj).d0(Status.f);
                return;
            }
        }
        Pair pair = (Pair) message.obj;
        try {
            ((r4.u) pair.first).a((y4.l) pair.second);
        } catch (RuntimeException e5) {
            int i10 = BasePendingResult.f3928q;
            throw e5;
        }
    }
}
