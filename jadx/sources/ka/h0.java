package ka;

import android.view.View;
import com.p2elite.brtv2.R;
import fa.o0;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h0 implements o0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fa.m0 f7791a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ChannelBean f7792b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i0 f7793c;

    public h0(i0 i0Var, fa.m0 m0Var, ChannelBean channelBean) {
        this.f7793c = i0Var;
        this.f7791a = m0Var;
        this.f7792b = channelBean;
    }

    @Override // fa.o0
    public final void a(int i6, View view) {
        i0 i0Var = this.f7793c;
        ta.a aVar = i0Var.U;
        if (!aVar.f10266v) {
            ba.d.a(i0Var.j(), 0, i0Var.m().getString(R.string.advise_delete_outdated_programs)).show();
            return;
        }
        fa.m0 m0Var = this.f7791a;
        aVar.f10262r = (ChannelBean.SourcesBean) m0Var.d.get(i6);
        i0Var.U.i(i6, this.f7792b, m0Var.d);
    }
}
