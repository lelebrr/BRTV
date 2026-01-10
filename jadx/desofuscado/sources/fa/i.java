package fa;

import android.view.KeyEvent;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6870a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f6871b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k f6872c;

    public i(k kVar, int i6, boolean z7) {
        this.f6872c = kVar;
        this.f6870a = i6;
        this.f6871b = z7;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        k kVar = this.f6872c;
        if (this.f6870a == kVar.getGroupCount() - 1 && this.f6871b && i6 == 20) {
            return true;
        }
        return kVar.f6897k.onKey(view, i6, keyEvent);
    }
}
