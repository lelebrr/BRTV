package fa;

import android.widget.ExpandableListView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements ExpandableListView.OnGroupCollapseListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f6836a;

    public e(k kVar) {
        this.f6836a = kVar;
    }

    @Override // android.widget.ExpandableListView.OnGroupCollapseListener
    public final void onGroupCollapse(int i6) {
        this.f6836a.f6898l.put(Integer.valueOf(i6), Boolean.FALSE);
    }
}
