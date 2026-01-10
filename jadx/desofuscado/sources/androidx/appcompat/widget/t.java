package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.PopupWindow;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityChooserView f835a;

    public t(ActivityChooserView activityChooserView) {
        this.f835a = activityChooserView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ActivityChooserView activityChooserView = this.f835a;
        FrameLayout frameLayout = activityChooserView.f;
        s sVar = activityChooserView.f482a;
        if (view == frameLayout) {
            activityChooserView.a();
            sVar.getClass();
            throw null;
        }
        if (view != activityChooserView.d) {
            throw new IllegalArgumentException();
        }
        sVar.getClass();
        throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        k kVar;
        k.l lVar;
        ActivityChooserView activityChooserView = this.f835a;
        PopupWindow.OnDismissListener onDismissListener = activityChooserView.f489j;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
        n0.c cVar = activityChooserView.f486g;
        if (cVar == null || (kVar = cVar.f8300a) == null || (lVar = kVar.f7545c) == null) {
            return;
        }
        lVar.c(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i6, long j10) {
        ((s) adapterView.getAdapter()).getClass();
        ActivityChooserView activityChooserView = this.f835a;
        activityChooserView.a();
        activityChooserView.f482a.getClass();
        throw null;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        ActivityChooserView activityChooserView = this.f835a;
        if (view != activityChooserView.f) {
            throw new IllegalArgumentException();
        }
        activityChooserView.f482a.getClass();
        throw null;
    }
}
