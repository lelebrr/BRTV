package ea;

import android.view.View;
import android.widget.LinearLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6713a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LinearLayout f6714b;

    public /* synthetic */ n(LinearLayout linearLayout, int i6) {
        this.f6713a = i6;
        this.f6714b = linearLayout;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f6713a) {
            case 0:
                this.f6714b.requestFocus();
                break;
            default:
                this.f6714b.requestFocus();
                break;
        }
    }
}
