package fa;

import android.view.KeyEvent;
import android.view.View;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6843a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6844b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6845c;

    public /* synthetic */ f(int i6, int i10, Object obj) {
        this.f6843a = i10;
        this.f6845c = obj;
        this.f6844b = i6;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        switch (this.f6843a) {
            case 0:
                int i10 = this.f6844b;
                if (i10 == 0 && i6 == 19) {
                    return true;
                }
                k kVar = (k) this.f6845c;
                return (i10 == kVar.getGroupCount() - 1 && i6 == 20) ? kVar.f6898l.get(Integer.valueOf(i10)) == null || !((Boolean) kVar.f6898l.get(Integer.valueOf(i10))).booleanValue() : kVar.f6897k.onKey(view, i6, keyEvent);
            case 1:
                int i11 = this.f6844b;
                if (i11 == 0 && i6 == 19) {
                    return true;
                }
                d0 d0Var = (d0) this.f6845c;
                if (i11 == d0Var.d.size() - 1 && i6 == 20) {
                    return true;
                }
                return d0Var.f.f7841b.onKey(view, i6, keyEvent);
            case 2:
                g0 g0Var = (g0) this.f6845c;
                if (this.f6844b == g0Var.d.size() - 1 && i6 == 20) {
                    return true;
                }
                return g0Var.f.f7841b.onKey(view, i6, keyEvent);
            default:
                if (this.f6844b % 7 == 0 && keyEvent.getAction() == 0 && i6 == 21) {
                    Spark.X1.sendEmptyMessage(105);
                    ka.m0.F0 = ea.d.f6633e;
                    return true;
                }
                if (keyEvent.getAction() != 0 || i6 != 4) {
                    return false;
                }
                n0 n0Var = ((ma.a) this.f6845c).f8288m;
                if (n0Var == null) {
                    return true;
                }
                n0Var.j();
                return true;
        }
    }

    public f(ma.a aVar, t3.d dVar) {
        this.f6843a = 3;
        this.f6845c = aVar;
        int layoutPosition = dVar.getLayoutPosition();
        aVar.getClass();
        this.f6844b = layoutPosition;
    }
}
