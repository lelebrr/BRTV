package ka;

import android.view.View;
import android.widget.ExpandableListView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p implements ExpandableListView.OnChildClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7843a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f7844b;

    public p(r rVar, int i6) {
        this.f7844b = rVar;
        this.f7843a = i6;
    }

    @Override // android.widget.ExpandableListView.OnChildClickListener
    public final boolean onChildClick(ExpandableListView expandableListView, View view, int i6, int i10, long j10) {
        return r.S(this.f7844b, view, i6, i10, this.f7843a);
    }
}
