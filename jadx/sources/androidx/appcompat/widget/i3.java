package androidx.appcompat.widget;

import android.widget.EditText;
import java.lang.ref.WeakReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i3 extends b1.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f738a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f739b;

    public i3(EditText editText) {
        this.f739b = new WeakReference(editText);
    }

    @Override // b1.g
    public void a() {
        switch (this.f738a) {
            case 0:
                SwitchCompat switchCompat = (SwitchCompat) this.f739b.get();
                if (switchCompat != null) {
                    switchCompat.c();
                    break;
                }
                break;
        }
    }

    @Override // b1.g
    public final void b() {
        switch (this.f738a) {
            case 0:
                SwitchCompat switchCompat = (SwitchCompat) this.f739b.get();
                if (switchCompat != null) {
                    switchCompat.c();
                    break;
                }
                break;
            default:
                d1.h.a((EditText) this.f739b.get(), 1);
                break;
        }
    }

    public i3(SwitchCompat switchCompat) {
        this.f739b = new WeakReference(switchCompat);
    }
}
