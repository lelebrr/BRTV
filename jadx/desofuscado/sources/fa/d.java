package fa;

import android.widget.ExpandableListView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements ExpandableListView.OnGroupExpandListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f6827a;

    public d(k kVar) {
        this.f6827a = kVar;
    }

    @Override // android.widget.ExpandableListView.OnGroupExpandListener
    public final void onGroupExpand(int i6) {
        this.f6827a.f6898l.put(Integer.valueOf(i6), Boolean.TRUE);
    }
}
