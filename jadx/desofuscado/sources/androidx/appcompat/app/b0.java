package androidx.appcompat.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import q1.n1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b0 extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f227a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f228b;

    public /* synthetic */ b0(int i6, Object obj) {
        this.f227a = i6;
        this.f228b = obj;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        switch (this.f227a) {
            case 0:
                ((c0) this.f228b).l();
                break;
            case 1:
                if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                    ((androidx.mediarouter.app.f) this.f228b).dismiss();
                    break;
                }
                break;
            case 2:
                k3.s sVar = (k3.s) this.f228b;
                sVar.getClass();
                k3.s.f7727g.execute(new k3.r(sVar, 2));
                break;
            default:
                ((n1) this.f228b).a();
                break;
        }
    }
}
