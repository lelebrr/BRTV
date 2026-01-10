package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2977a;

    /* renamed from: b, reason: collision with root package name */
    public int f2978b;

    /* renamed from: c, reason: collision with root package name */
    public int f2979c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f2980e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f2981g;

    /* renamed from: h, reason: collision with root package name */
    public int f2982h;

    /* renamed from: i, reason: collision with root package name */
    public int f2983i;

    /* renamed from: j, reason: collision with root package name */
    public int f2984j;

    /* renamed from: k, reason: collision with root package name */
    public List f2985k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f2986l;

    public final void a(View view) {
        int layoutPosition;
        int size = this.f2985k.size();
        View view2 = null;
        int i6 = Integer.MAX_VALUE;
        for (int i10 = 0; i10 < size; i10++) {
            View view3 = ((p1) this.f2985k.get(i10)).itemView;
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view3.getLayoutParams();
            if (view3 != view && !layoutParams.f2760a.isRemoved() && (layoutPosition = (layoutParams.f2760a.getLayoutPosition() - this.d) * this.f2980e) >= 0 && layoutPosition < i6) {
                view2 = view3;
                if (layoutPosition == 0) {
                    break;
                } else {
                    i6 = layoutPosition;
                }
            }
        }
        if (view2 == null) {
            this.d = -1;
        } else {
            this.d = ((RecyclerView.LayoutParams) view2.getLayoutParams()).f2760a.getLayoutPosition();
        }
    }

    public final View b(e1 e1Var) {
        List list = this.f2985k;
        if (list == null) {
            View view = e1Var.l(this.d, Long.MAX_VALUE).itemView;
            this.d += this.f2980e;
            return view;
        }
        int size = list.size();
        for (int i6 = 0; i6 < size; i6++) {
            View view2 = ((p1) this.f2985k.get(i6)).itemView;
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view2.getLayoutParams();
            if (!layoutParams.f2760a.isRemoved() && this.d == layoutParams.f2760a.getLayoutPosition()) {
                a(view2);
                return view2;
            }
        }
        return null;
    }
}
