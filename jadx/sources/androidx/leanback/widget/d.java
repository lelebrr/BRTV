package androidx.leanback.widget;

import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.p1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements androidx.recyclerview.widget.f1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j f1820a;

    public d(j jVar) {
        this.f1820a = jVar;
    }

    public final void a(p1 p1Var) {
        GridLayoutManager gridLayoutManager = this.f1820a.f1841a;
        gridLayoutManager.getClass();
        int absoluteAdapterPosition = p1Var.getAbsoluteAdapterPosition();
        if (absoluteAdapterPosition != -1) {
            View view = p1Var.itemView;
            j1 j1Var = gridLayoutManager.N;
            int i6 = j1Var.f1845a;
            if (i6 == 1) {
                p.k kVar = (p.k) j1Var.f1847c;
                if (kVar == null || kVar.g() == 0) {
                    return;
                }
                ((p.k) j1Var.f1847c).e(Integer.toString(absoluteAdapterPosition));
                return;
            }
            if ((i6 == 2 || i6 == 3) && ((p.k) j1Var.f1847c) != null) {
                String string = Integer.toString(absoluteAdapterPosition);
                SparseArray<Parcelable> sparseArray = new SparseArray<>();
                view.saveHierarchyState(sparseArray);
                ((p.k) j1Var.f1847c).d(string, sparseArray);
            }
        }
    }
}
