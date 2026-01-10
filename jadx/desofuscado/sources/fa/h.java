package fa;

import android.view.MotionEvent;
import android.view.View;
import androidx.leanback.widget.VerticalGridView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6861a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6862b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6863c;

    public /* synthetic */ h(int i6, int i10, Object obj) {
        this.f6861a = i10;
        this.f6863c = obj;
        this.f6862b = i6;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        VerticalGridView verticalGridView;
        VerticalGridView verticalGridView2;
        switch (this.f6861a) {
            case 0:
                if (motionEvent.getAction() == 1) {
                    k kVar = (k) this.f6863c;
                    ka.r.R(kVar.f6899m.f7841b, kVar.f6890b, this.f6862b);
                    break;
                }
                break;
            case 1:
                d0 d0Var = (d0) this.f6863c;
                ka.n nVar = d0Var.f6874b;
                if (nVar != null && (verticalGridView = nVar.f7841b.W) != null) {
                    verticalGridView.setFocusScrollStrategy(1);
                }
                if (motionEvent.getAction() == 1) {
                    if (!d0Var.f6832h) {
                        d0Var.f.a(view, this.f6862b, Boolean.TRUE);
                        break;
                    } else {
                        d0Var.f6832h = false;
                        break;
                    }
                }
                break;
            default:
                g0 g0Var = (g0) this.f6863c;
                ka.n nVar2 = g0Var.f6874b;
                if (nVar2 != null && (verticalGridView2 = nVar2.f7841b.W) != null) {
                    verticalGridView2.setFocusScrollStrategy(1);
                }
                if (motionEvent.getAction() == 1) {
                    if (!g0Var.f6859h) {
                        g0Var.f.a(view, this.f6862b, Boolean.TRUE);
                        break;
                    } else {
                        g0Var.f6859h = false;
                        break;
                    }
                }
                break;
        }
        return false;
    }
}
