package fa;

import android.view.KeyEvent;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6963a;

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        switch (this.f6963a) {
            case 0:
                return false;
            default:
                if (i6 == 19) {
                    return true;
                }
                if (i6 != 4) {
                    return false;
                }
                if (keyEvent.getAction() != 0) {
                    return true;
                }
                org.bitspark.android.utils.m.k();
                return true;
        }
    }
}
