package androidx.appcompat.widget;

import android.content.Context;
import android.view.View;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends k.w {

    /* renamed from: l, reason: collision with root package name */
    public final /* synthetic */ int f689l = 0;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ k f690m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(k kVar, Context context, k.l lVar, View view) {
        super(R.attr.actionOverflowMenuStyle, context, view, lVar, true);
        this.f690m = kVar;
        this.f = 8388613;
        a0.b bVar = kVar.f761x;
        this.f7673h = bVar;
        k.t tVar = this.f7674i;
        if (tVar != null) {
            tVar.i(bVar);
        }
    }

    @Override // k.w
    public final void c() {
        switch (this.f689l) {
            case 0:
                k kVar = this.f690m;
                kVar.f758u = null;
                kVar.f762y = 0;
                super.c();
                break;
            default:
                k kVar2 = this.f690m;
                k.l lVar = kVar2.f7545c;
                if (lVar != null) {
                    lVar.c(true);
                }
                kVar2.f757t = null;
                super.c();
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(k kVar, Context context, k.e0 e0Var, View view) {
        super(R.attr.actionOverflowMenuStyle, context, view, e0Var, false);
        this.f690m = kVar;
        if (!e0Var.A.f()) {
            View view2 = kVar.f747j;
            this.f7671e = view2 == null ? (View) kVar.f7548h : view2;
        }
        a0.b bVar = kVar.f761x;
        this.f7673h = bVar;
        k.t tVar = this.f7674i;
        if (tVar != null) {
            tVar.i(bVar);
        }
    }
}
