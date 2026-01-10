package a;

import android.window.OnBackInvokedCallback;
import androidx.appcompat.app.g0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class m implements OnBackInvokedCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f21b;

    public /* synthetic */ m(int i6, Object obj) {
        this.f20a = i6;
        this.f21b = obj;
    }

    @Override // android.window.OnBackInvokedCallback
    public final void onBackInvoked() {
        switch (this.f20a) {
            case 0:
                ((Runnable) this.f21b).run();
                break;
            default:
                ((g0) this.f21b).E();
                break;
        }
    }
}
