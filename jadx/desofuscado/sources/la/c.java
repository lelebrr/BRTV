package la;

import android.view.KeyEvent;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8080a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f8081b;

    public /* synthetic */ c(d dVar, int i6) {
        this.f8080a = i6;
        this.f8081b = dVar;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        switch (this.f8080a) {
            case 0:
                d dVar = this.f8081b;
                int selectionStart = dVar.Y.getSelectionStart();
                int length = dVar.Y.getText().length();
                if (!dVar.f8088g0 || i6 != 66) {
                    if ((selectionStart != length && length != 0) || i6 != 22) {
                        if (selectionStart != 0 || i6 != 21) {
                            if (i6 == 19 && keyEvent.getAction() == 0) {
                                dVar.f8089h0.requestFocus();
                                break;
                            }
                        }
                    }
                } else if (keyEvent.getAction() == 1) {
                    dVar.Z.requestFocus();
                    break;
                }
                break;
            default:
                if (this.f8081b.Z.getSelectionStart() != 0 || i6 != 21) {
                }
                break;
        }
        return true;
    }
}
