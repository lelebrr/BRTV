package ka;

import android.view.View;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7779a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i0 f7780b;

    public /* synthetic */ e0(i0 i0Var, int i6) {
        this.f7779a = i6;
        this.f7780b = i0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f7779a) {
            case 0:
                this.f7780b.U.f();
                break;
            default:
                i0 i0Var = this.f7780b;
                ba.d.a(i0Var.j(), 0, i0Var.m().getString(R.string.no_source)).show();
                break;
        }
    }
}
