package androidx.appcompat.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e0 extends v1 {

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ m0 f691j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ AppCompatSpinner f692k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e0(AppCompatSpinner appCompatSpinner, AppCompatSpinner appCompatSpinner2, m0 m0Var) {
        super(appCompatSpinner2);
        this.f692k = appCompatSpinner;
        this.f691j = m0Var;
    }

    @Override // androidx.appcompat.widget.v1
    public final k.c0 b() {
        return this.f691j;
    }

    @Override // androidx.appcompat.widget.v1
    public final boolean c() {
        AppCompatSpinner appCompatSpinner = this.f692k;
        if (appCompatSpinner.getInternalPopup().c()) {
            return true;
        }
        appCompatSpinner.f.n(g0.b(appCompatSpinner), g0.a(appCompatSpinner));
        return true;
    }
}
