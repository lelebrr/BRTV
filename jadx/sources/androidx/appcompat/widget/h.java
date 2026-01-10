package androidx.appcompat.widget;

import android.view.View;
import androidx.appcompat.view.menu.ActionMenuItemView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends v1 {

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f729j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ View f730k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h(View view, View view2, int i6) {
        super(view2);
        this.f729j = i6;
        this.f730k = view;
    }

    @Override // androidx.appcompat.widget.v1
    public final k.c0 b() {
        e eVar;
        switch (this.f729j) {
            case 0:
                e eVar2 = ((i) this.f730k).d.f757t;
                if (eVar2 == null) {
                    return null;
                }
                return eVar2.a();
            case 1:
                return ((ActivityChooserView) this.f730k).getListPopupWindow();
            default:
                k.b bVar = ((ActionMenuItemView) this.f730k).f394m;
                if (bVar == null || (eVar = ((f) bVar).f697a.f758u) == null) {
                    return null;
                }
                return eVar.a();
        }
    }

    @Override // androidx.appcompat.widget.v1
    public final boolean c() {
        k.c0 c0VarB;
        switch (this.f729j) {
            case 0:
                ((i) this.f730k).d.n();
                return true;
            case 1:
                ActivityChooserView activityChooserView = (ActivityChooserView) this.f730k;
                if (activityChooserView.b() || !activityChooserView.f490k) {
                    return true;
                }
                activityChooserView.f482a.getClass();
                throw new IllegalStateException("No data model. Did you call #setDataModel?");
            default:
                ActionMenuItemView actionMenuItemView = (ActionMenuItemView) this.f730k;
                k.k kVar = actionMenuItemView.f392k;
                return kVar != null && kVar.a(actionMenuItemView.f389h) && (c0VarB = b()) != null && c0VarB.c();
        }
    }

    @Override // androidx.appcompat.widget.v1
    public boolean d() {
        switch (this.f729j) {
            case 0:
                k kVar = ((i) this.f730k).d;
                if (kVar.f759v != null) {
                    return false;
                }
                kVar.c();
                return true;
            case 1:
                ((ActivityChooserView) this.f730k).a();
                return true;
            default:
                return super.d();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.f729j = 2;
        this.f730k = actionMenuItemView;
    }
}
