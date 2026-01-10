package fa;

import android.view.View;
import org.bitspark.android.beans.Menu;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k1 implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6903a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6904b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Menu f6905c;
    public final /* synthetic */ androidx.recyclerview.widget.p1 d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ c f6906e;

    public /* synthetic */ k1(c cVar, int i6, androidx.recyclerview.widget.p1 p1Var, Menu menu, int i10) {
        this.f6903a = i10;
        this.f6906e = cVar;
        this.f6904b = i6;
        this.d = p1Var;
        this.f6905c = menu;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        switch (this.f6903a) {
            case 0:
                if (z7) {
                    m1 m1Var = (m1) this.f6906e;
                    int i6 = m1Var.f6919i;
                    int i10 = this.f6904b;
                    if (i10 != i6) {
                        ea.k kVar = m1Var.f6816c;
                        View view2 = ((l1) this.d).itemView;
                        kVar.b(i10, this.f6905c);
                        m1Var.f6919i = i10;
                        break;
                    }
                }
                break;
            default:
                if (z7) {
                    o1 o1Var = (o1) this.f6906e;
                    int i11 = o1Var.f6817e;
                    int i12 = this.f6904b;
                    if (i11 != i12) {
                        o1Var.f6817e = i12;
                        View view3 = ((n1) this.d).itemView;
                        View view4 = o1Var.f;
                        if (view4 != null) {
                            view4.setSelected(false);
                        }
                        view3.setSelected(true);
                        o1Var.f = view3;
                        o1Var.f6816c.b(i12, this.f6905c);
                        break;
                    }
                }
                break;
        }
    }
}
