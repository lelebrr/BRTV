package androidx.media3.ui;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class q implements b7.n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2513a;

    public /* synthetic */ q(int i6) {
        this.f2513a = i6;
    }

    @Override // b7.n
    public final boolean apply(Object obj) {
        switch (this.f2513a) {
            case 0:
                return SubtitleViewUtils.lambda$removeAllEmbeddedStyling$0(obj);
            default:
                return SubtitleViewUtils.lambda$removeEmbeddedFontSizes$1(obj);
        }
    }
}
