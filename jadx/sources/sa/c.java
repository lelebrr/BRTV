package sa;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9845a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f9846b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f9847c;

    public /* synthetic */ c(d dVar, e eVar, int i6) {
        this.f9845a = i6;
        this.f9847c = dVar;
        this.f9846b = eVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f9845a) {
            case 0:
                this.f9847c.f.onClick(this.f9846b, -1);
                break;
            default:
                this.f9847c.f9852g.onClick(this.f9846b, -2);
                break;
        }
    }
}
