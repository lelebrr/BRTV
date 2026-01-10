package ka;

import android.view.View;
import com.p2elite.brtv2.R;
import fa.o0;
import fa.x0;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k0 implements o0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7809a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7810b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ m0 f7811c;

    public /* synthetic */ k0(m0 m0Var, int i6, int i10) {
        this.f7809a = i10;
        this.f7811c = m0Var;
        this.f7810b = i6;
    }

    @Override // fa.o0
    public final void a(int i6, View view) {
        switch (this.f7809a) {
            case 0:
                this.f7811c.f7838y0.setVisibility(4);
                this.f7811c.x0.setVisibility(0);
                if (this.f7810b != -5) {
                    this.f7811c.f7836v0.f10266v = true;
                }
                if (i6 < this.f7811c.f7819d0.f6972j.size()) {
                    ChannelBean channelBean = (ChannelBean) this.f7811c.f7819d0.f6972j.get(i6);
                    org.bitspark.android.utils.o oVar = org.bitspark.android.utils.o.f;
                    m0 m0Var = this.f7811c;
                    oVar.c(channelBean, m0Var.W(m0Var.f7835u0));
                    m0 m0Var2 = this.f7811c;
                    m0Var2.getClass();
                    i0 i0VarA = org.bitspark.android.utils.o.f.a(m0Var2, m0Var2.x0, m0.C0, m0Var2.f7838y0);
                    androidx.fragment.app.j0 j0VarI = this.f7811c.i();
                    j0VarI.getClass();
                    androidx.fragment.app.a aVar = new androidx.fragment.app.a(j0VarI);
                    aVar.i(R.id.vod_detail_container, i0VarA);
                    aVar.c();
                    aVar.e(false);
                    break;
                }
                break;
            default:
                x0 x0Var = this.f7811c.f7819d0;
                if (x0Var != null || i6 <= x0Var.f6972j.size() - 1) {
                    if (this.f7810b != -5) {
                        this.f7811c.f7836v0.f10266v = true;
                    }
                    ChannelBean channelBean2 = (ChannelBean) this.f7811c.f7819d0.f6972j.get(i6);
                    this.f7811c.f7838y0.setVisibility(4);
                    this.f7811c.x0.setVisibility(0);
                    org.bitspark.android.utils.o oVar2 = org.bitspark.android.utils.o.f;
                    m0 m0Var3 = this.f7811c;
                    oVar2.c(channelBean2, m0Var3.W(m0Var3.f7835u0));
                    m0 m0Var4 = this.f7811c;
                    m0Var4.getClass();
                    i0 i0VarA2 = org.bitspark.android.utils.o.f.a(m0Var4, m0Var4.x0, m0.C0, m0Var4.f7838y0);
                    androidx.fragment.app.j0 j0VarI2 = this.f7811c.i();
                    j0VarI2.getClass();
                    androidx.fragment.app.a aVar2 = new androidx.fragment.app.a(j0VarI2);
                    aVar2.i(R.id.vod_detail_container, i0VarA2);
                    aVar2.c();
                    aVar2.e(false);
                    break;
                }
                break;
        }
    }
}
