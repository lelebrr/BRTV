package a7;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.transformation.ExpandableBehavior;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f155a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f156b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k6.a f157c;
    public final /* synthetic */ ExpandableBehavior d;

    public a(ExpandableBehavior expandableBehavior, View view, int i6, k6.a aVar) {
        this.d = expandableBehavior;
        this.f155a = view;
        this.f156b = i6;
        this.f157c = aVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        View view = this.f155a;
        view.getViewTreeObserver().removeOnPreDrawListener(this);
        ExpandableBehavior expandableBehavior = this.d;
        if (expandableBehavior.f5413a == this.f156b) {
            Object obj = this.f157c;
            expandableBehavior.s((View) obj, view, ((FloatingActionButton) obj).f4933o.f659a, false);
        }
        return false;
    }
}
