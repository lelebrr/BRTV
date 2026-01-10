package ka;

import android.view.View;
import fa.o0;
import org.bitspark.android.beans.HistoryBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements o0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7764a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f7765b;

    public /* synthetic */ d(e eVar, int i6) {
        this.f7764a = i6;
        this.f7765b = eVar;
    }

    @Override // fa.o0
    public final void a(int i6, View view) {
        switch (this.f7764a) {
            case 0:
                fa.u.f = 1;
                e eVar = this.f7765b;
                fa.t tVar = eVar.Y;
                tVar.notifyItemChanged(tVar.f6958b);
                fa.t tVar2 = eVar.Y;
                tVar2.f6959c = tVar2.d.getChildLayoutPosition(view);
                fa.t tVar3 = eVar.Y;
                tVar3.f6958b = tVar3.d.getChildLayoutPosition(view);
                fa.t tVar4 = eVar.Y;
                tVar4.notifyItemChanged(tVar4.f6958b);
                eVar.R((HistoryBean) eVar.Y.f6949g.get(i6));
                break;
            default:
                fa.u.f = 1;
                e eVar2 = this.f7765b;
                fa.t tVar5 = eVar2.f7772b0;
                tVar5.notifyItemChanged(tVar5.f6958b);
                fa.t tVar6 = eVar2.f7772b0;
                tVar6.f6959c = tVar6.d.getChildLayoutPosition(view);
                fa.t tVar7 = eVar2.f7772b0;
                tVar7.f6958b = tVar7.d.getChildLayoutPosition(view);
                fa.t tVar8 = eVar2.f7772b0;
                tVar8.notifyItemChanged(tVar8.f6958b);
                eVar2.R((HistoryBean) eVar2.f7772b0.f6949g.get(i6));
                break;
        }
    }
}
