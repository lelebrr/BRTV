package ka;

import android.view.View;
import com.p2elite.brtv2.R;
import fa.o0;
import java.util.ArrayList;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c0 implements o0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fa.m0 f7762a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d0 f7763b;

    public c0(d0 d0Var, fa.m0 m0Var) {
        this.f7763b = d0Var;
        this.f7762a = m0Var;
    }

    @Override // fa.o0
    public final void a(int i6, View view) {
        d0 d0Var = this.f7763b;
        i0 i0Var = d0Var.d;
        ta.a aVar = i0Var.U;
        boolean z7 = aVar.f10266v;
        i0 i0Var2 = d0Var.d;
        if (!z7) {
            ba.d.a(i0Var.j(), 0, i0Var2.m().getString(R.string.advise_delete_outdated_programs)).show();
            return;
        }
        aVar.f10263s = d0Var.f7767b.getCurrentItem();
        i0Var2.U.A.clear();
        ArrayList arrayList = i0Var2.U.A;
        fa.m0 m0Var = this.f7762a;
        arrayList.addAll(m0Var.d);
        i0Var2.U.f10262r = (ChannelBean.SourcesBean) m0Var.d.get(i6);
        i0Var2.U.i(i6, d0Var.f7766a, m0Var.d);
    }
}
