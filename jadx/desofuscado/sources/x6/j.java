package x6;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class j implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f11066a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f11067b;

    public j(k kVar, View view) {
        this.f11067b = kVar;
        this.f11066a = view;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i6, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        View view2 = this.f11066a;
        if (view2.getVisibility() == 0) {
            this.f11067b.c(view2);
        }
    }
}
