package fa;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class c extends i0 {

    /* renamed from: c, reason: collision with root package name */
    public ea.k f6816c;
    public View.OnKeyListener d;

    /* renamed from: e, reason: collision with root package name */
    public int f6817e = 0;
    public View f = null;

    /* renamed from: g, reason: collision with root package name */
    public o0 f6818g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f6819h;

    public c(List list) {
        ArrayList arrayList = new ArrayList();
        this.f6819h = arrayList;
        arrayList.addAll(list);
    }

    public void a(List list) {
        ArrayList arrayList = this.f6819h;
        arrayList.clear();
        arrayList.addAll(list);
    }

    @Override // androidx.recyclerview.widget.k0
    public int getItemCount() {
        return this.f6819h.size();
    }
}
