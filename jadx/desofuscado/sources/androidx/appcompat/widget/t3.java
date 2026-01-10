package androidx.appcompat.widget;

import android.content.Context;
import android.view.View;
import android.view.Window;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t3 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final k.a f837a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v3 f838b;

    public t3(v3 v3Var) {
        this.f838b = v3Var;
        Context context = v3Var.f862a.getContext();
        CharSequence charSequence = v3Var.f867h;
        k.a aVar = new k.a();
        aVar.f7531e = 4096;
        aVar.f7532g = 4096;
        aVar.f7537l = null;
        aVar.f7538m = null;
        aVar.f7539n = false;
        aVar.f7540o = false;
        aVar.f7541p = 16;
        aVar.f7534i = context;
        aVar.f7528a = charSequence;
        this.f837a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        v3 v3Var = this.f838b;
        Window.Callback callback = v3Var.f870k;
        if (callback == null || !v3Var.f871l) {
            return;
        }
        callback.onMenuItemSelected(0, this.f837a);
    }
}
