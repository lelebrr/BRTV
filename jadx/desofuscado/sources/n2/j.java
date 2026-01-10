package n2;

import android.view.ViewTreeObserver;
import i9.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j extends j9.j implements l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f8387a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserver f8388b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k f8389c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(f fVar, ViewTreeObserver viewTreeObserver, k kVar) {
        super(1);
        this.f8387a = fVar;
        this.f8388b = viewTreeObserver;
        this.f8389c = kVar;
    }

    @Override // i9.l
    public final Object invoke(Object obj) {
        k kVar = this.f8389c;
        ViewTreeObserver viewTreeObserver = this.f8388b;
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(kVar);
        } else {
            this.f8387a.f8379a.getViewTreeObserver().removeOnPreDrawListener(kVar);
        }
        return w8.l.f10832a;
    }
}
