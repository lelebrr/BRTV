package fa;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6854a;

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f6854a) {
            case 0:
            case 1:
                break;
            default:
                view.requestFocus();
                break;
        }
    }

    private final void a(View view) {
    }

    private final void b(View view) {
    }
}
