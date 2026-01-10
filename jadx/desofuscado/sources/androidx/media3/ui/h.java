package androidx.media3.ui;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class h implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2505a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2506b;

    public /* synthetic */ h(int i6, Object obj) {
        this.f2505a = i6;
        this.f2506b = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i6, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        switch (this.f2505a) {
            case 0:
                ((PlayerControlViewLayoutManager) this.f2506b).onLayoutChange(view, i6, i10, i11, i12, i13, i14, i15, i16);
                break;
            default:
                ((PlayerControlView) this.f2506b).onLayoutChange(view, i6, i10, i11, i12, i13, i14, i15, i16);
                break;
        }
    }
}
