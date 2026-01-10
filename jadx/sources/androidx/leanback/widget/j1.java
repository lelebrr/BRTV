package androidx.leanback.widget;

import android.view.View;
import n0.r1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j1 implements n0.s {

    /* renamed from: a, reason: collision with root package name */
    public int f1845a;

    /* renamed from: b, reason: collision with root package name */
    public int f1846b;

    /* renamed from: c, reason: collision with root package name */
    public Object f1847c;

    public void a() {
        int i6;
        int i10 = this.f1845a;
        if (i10 != 2) {
            if (i10 != 3 && i10 != 1) {
                this.f1847c = null;
                return;
            }
            p.k kVar = (p.k) this.f1847c;
            if (kVar == null || kVar.c() != Integer.MAX_VALUE) {
                this.f1847c = new p.k(Integer.MAX_VALUE);
                return;
            }
            return;
        }
        if (this.f1846b <= 0) {
            throw new IllegalArgumentException();
        }
        p.k kVar2 = (p.k) this.f1847c;
        if (kVar2 != null) {
            synchronized (kVar2.f8854c) {
                i6 = kVar2.f8852a;
            }
            if (i6 == this.f1846b) {
                return;
            }
        }
        this.f1847c = new p.k(this.f1846b);
    }

    @Override // n0.s
    public r1 onApplyWindowInsets(View view, r1 r1Var) {
        int i6 = r1Var.f8352a.g(7).f6755b;
        View view2 = (View) this.f1847c;
        int i10 = this.f1845a;
        if (i10 >= 0) {
            view2.getLayoutParams().height = i10 + i6;
            view2.setLayoutParams(view2.getLayoutParams());
        }
        view2.setPadding(view2.getPaddingLeft(), this.f1846b + i6, view2.getPaddingRight(), view2.getPaddingBottom());
        return r1Var;
    }
}
