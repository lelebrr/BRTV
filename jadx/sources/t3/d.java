package t3;

import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.p1;
import java.util.HashSet;
import java.util.LinkedHashSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends p1 {

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f10134a;

    /* renamed from: b, reason: collision with root package name */
    public final View f10135b;

    public d(View view) {
        super(view);
        this.f10134a = new SparseArray();
        new LinkedHashSet();
        new LinkedHashSet();
        new HashSet();
        this.f10135b = view;
    }

    public final View b(int i6) {
        SparseArray sparseArray = this.f10134a;
        View view = (View) sparseArray.get(i6);
        if (view != null) {
            return view;
        }
        View viewFindViewById = this.itemView.findViewById(i6);
        sparseArray.put(i6, viewFindViewById);
        return viewFindViewById;
    }

    public final void c(int i6, boolean z7) {
        b(i6).setVisibility(z7 ? 0 : 4);
    }
}
