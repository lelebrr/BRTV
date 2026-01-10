package ka;

import android.view.View;
import android.widget.ExpandableListView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o implements ExpandableListView.OnGroupClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f7842a;

    public o(r rVar) {
        this.f7842a = rVar;
    }

    @Override // android.widget.ExpandableListView.OnGroupClickListener
    public final boolean onGroupClick(ExpandableListView expandableListView, View view, int i6, long j10) {
        r.R(this.f7842a, expandableListView, i6);
        return true;
    }
}
