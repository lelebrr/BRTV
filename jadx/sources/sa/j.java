package sa;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9861a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f9862b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k f9863c;

    public /* synthetic */ j(k kVar, e eVar, int i6) {
        this.f9861a = i6;
        this.f9863c = kVar;
        this.f9862b = eVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f9861a) {
            case 0:
                this.f9863c.f9869h.onClick(this.f9862b, -1);
                break;
            case 1:
                this.f9863c.f9870i.onClick(this.f9862b, -2);
                break;
            default:
                this.f9863c.f9871j.onClick(this.f9862b, -2);
                break;
        }
    }
}
