package fa;

import android.view.View;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y0 implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a1 f6983a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ChannelBean.SourcesBean f6984b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6985c;
    public final /* synthetic */ b1 d;

    public y0(b1 b1Var, a1 a1Var, ChannelBean.SourcesBean sourcesBean, int i6) {
        this.d = b1Var;
        this.f6983a = a1Var;
        this.f6984b = sourcesBean;
        this.f6985c = i6;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        if (z7) {
            ea.k kVar = this.d.f6816c;
            View view2 = this.f6983a.itemView;
            kVar.b(this.f6985c, this.f6984b);
        }
    }
}
