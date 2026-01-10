package k;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p extends FrameLayout implements j.b {

    /* renamed from: a, reason: collision with root package name */
    public final CollapsibleActionView f7660a;

    /* JADX WARN: Multi-variable type inference failed */
    public p(View view) {
        super(view.getContext());
        this.f7660a = (CollapsibleActionView) view;
        addView(view);
    }

    @Override // j.b
    public final void b() {
        this.f7660a.onActionViewExpanded();
    }

    @Override // j.b
    public final void e() {
        this.f7660a.onActionViewCollapsed();
    }
}
