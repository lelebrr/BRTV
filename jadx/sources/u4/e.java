package u4;

import com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class e implements r4.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ExpandedControllerActivity f10340a;

    public /* synthetic */ e(ExpandedControllerActivity expandedControllerActivity) {
        this.f10340a = expandedControllerActivity;
    }

    @Override // r4.d
    public final void b() {
        int i6 = ExpandedControllerActivity.f3868n0;
        this.f10340a.t();
    }

    @Override // r4.d
    public final void e() {
        int i6 = ExpandedControllerActivity.f3868n0;
        ExpandedControllerActivity expandedControllerActivity = this.f10340a;
        r4.f fVarP = expandedControllerActivity.p();
        if (fVarP == null || !fVarP.i()) {
            if (expandedControllerActivity.f3876j0) {
                return;
            }
            expandedControllerActivity.finish();
        } else {
            expandedControllerActivity.f3876j0 = false;
            expandedControllerActivity.s();
            expandedControllerActivity.u();
        }
    }

    @Override // r4.d
    public final void f() {
        ExpandedControllerActivity expandedControllerActivity = this.f10340a;
        expandedControllerActivity.R.setText(expandedControllerActivity.getResources().getString(R.string.cast_expanded_controller_loading));
    }

    @Override // r4.d
    public final void j() {
        int i6 = ExpandedControllerActivity.f3868n0;
        this.f10340a.u();
    }

    @Override // r4.d
    public final void c() {
    }

    @Override // r4.d
    public final void o() {
    }
}
