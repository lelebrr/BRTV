package androidx.appcompat.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z0 extends a0.b {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppCompatTextView f909c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z0(AppCompatTextView appCompatTextView) {
        super(6, appCompatTextView);
        this.f909c = appCompatTextView;
    }

    @Override // a0.b, androidx.appcompat.widget.y0
    public final void a(int i6) {
        super/*android.widget.TextView*/.setLastBaselineToBottomHeight(i6);
    }

    @Override // a0.b, androidx.appcompat.widget.y0
    public final void k(int i6) {
        super/*android.widget.TextView*/.setFirstBaselineToTopHeight(i6);
    }
}
