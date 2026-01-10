package androidx.recyclerview.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n extends b1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f2902a;

    public n(p pVar) {
        this.f2902a = pVar;
    }

    @Override // androidx.recyclerview.widget.b1
    public final void onScrolled(RecyclerView recyclerView, int i6, int i10) {
        int iComputeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
        int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        p pVar = this.f2902a;
        int iComputeVerticalScrollRange = pVar.f2925s.computeVerticalScrollRange();
        int i11 = pVar.f2924r;
        int i12 = iComputeVerticalScrollRange - i11;
        int i13 = pVar.f2909a;
        pVar.f2926t = i12 > 0 && i11 >= i13;
        int iComputeHorizontalScrollRange = pVar.f2925s.computeHorizontalScrollRange();
        int i14 = pVar.f2923q;
        boolean z7 = iComputeHorizontalScrollRange - i14 > 0 && i14 >= i13;
        pVar.f2927u = z7;
        boolean z10 = pVar.f2926t;
        if (!z10 && !z7) {
            if (pVar.f2928v != 0) {
                pVar.d(0);
                return;
            }
            return;
        }
        if (z10) {
            float f = i11;
            pVar.f2918l = (int) ((((f / 2.0f) + iComputeVerticalScrollOffset) * f) / iComputeVerticalScrollRange);
            pVar.f2917k = Math.min(i11, (i11 * i11) / iComputeVerticalScrollRange);
        }
        if (pVar.f2927u) {
            float f3 = iComputeHorizontalScrollOffset;
            float f4 = i14;
            pVar.f2921o = (int) ((((f4 / 2.0f) + f3) * f4) / iComputeHorizontalScrollRange);
            pVar.f2920n = Math.min(i14, (i14 * i14) / iComputeHorizontalScrollRange);
        }
        int i15 = pVar.f2928v;
        if (i15 == 0 || i15 == 1) {
            pVar.d(1);
        }
    }
}
