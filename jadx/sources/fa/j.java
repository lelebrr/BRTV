package fa;

import android.view.MotionEvent;
import android.view.View;
import android.widget.ExpandableListView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6876a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6877b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k f6878c;

    public j(k kVar, int i6, int i10) {
        this.f6878c = kVar;
        this.f6876a = i6;
        this.f6877b = i10;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            k kVar = this.f6878c;
            ka.n nVar = kVar.f6899m;
            ExpandableListView expandableListView = kVar.f6890b;
            ka.r.S(nVar.f7841b, view, this.f6876a, this.f6877b, 0);
        }
        return false;
    }
}
