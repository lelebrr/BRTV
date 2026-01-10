package fa;

import android.view.View;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a0 implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6808a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d0 f6809b;

    public a0(d0 d0Var, int i6, ChannelBean channelBean) {
        this.f6809b = d0Var;
        this.f6808a = i6;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        view.getLocationInWindow(new int[2]);
        d0 d0Var = this.f6809b;
        if (d0Var.f6831g) {
            view.setSelected(z7);
            if (z7) {
                d0Var.b(view);
            }
            if (this.f6808a < d0Var.d.size()) {
                d0Var.f.b(view, z7);
            }
        }
    }
}
