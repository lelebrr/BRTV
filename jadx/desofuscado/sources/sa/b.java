package sa;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.l1;
import androidx.recyclerview.widget.t0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends t0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f9842a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9843b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9844c;
    public final int d;

    public b(int i6, int i10, int i11, int i12) {
        this.f9842a = i6;
        this.f9843b = i10;
        this.f9844c = i11;
        this.d = i12;
    }

    @Override // androidx.recyclerview.widget.t0
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, l1 l1Var) {
        j9.i.f(rect, a2.a.s("viXS2pkuEw==\n", "0VCmiPxNZ0Q=\n"));
        j9.i.f(view, a2.a.s("rg8GHA==\n", "2GZjaxM3zuc=\n"));
        j9.i.f(recyclerView, a2.a.s("U/KQInSs\n", "I5PiRxrYdGw=\n"));
        j9.i.f(l1Var, a2.a.s("ZOLu/LQ=\n", "F5aPiNG0Yec=\n"));
        super.getItemOffsets(rect, view, recyclerView, l1Var);
        rect.set(this.f9842a, this.f9843b, this.f9844c, this.d);
    }
}
