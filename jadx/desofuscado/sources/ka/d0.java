package ka;

import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.tencent.mars.xlog.Log;
import fa.z0;
import java.util.ArrayList;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d0 extends FragmentStateAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ChannelBean f7766a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPager2 f7767b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7768c;
    public final /* synthetic */ i0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(i0 i0Var, FragmentActivity fragmentActivity, ChannelBean channelBean, ViewPager2 viewPager2, int i6) {
        super(fragmentActivity);
        this.d = i0Var;
        this.f7766a = channelBean;
        this.f7767b = viewPager2;
        this.f7768c = i6;
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public final androidx.fragment.app.s createFragment(int i6) {
        try {
            ChannelBean channelBean = this.f7766a;
            fa.m0 m0Var = new fa.m0();
            m0Var.f6917c = 7;
            ArrayList arrayList = new ArrayList();
            m0Var.d = arrayList;
            m0Var.f6918e = channelBean;
            int i10 = i6 + 1;
            arrayList.addAll(channelBean.getSeasonSources(i10));
            m0Var.f6916b = new z0(4, this);
            m0Var.f6915a = new c0(this, m0Var);
            sa.l lVar = new sa.l();
            Bundle bundle = new Bundle();
            bundle.putInt(sa.l.X, i10);
            lVar.O(bundle);
            lVar.T = m0Var;
            return lVar;
        } catch (Exception e5) {
            String strS = a2.a.s("nfYbCT9Us/Kn3w0sPU239b8=\n", "y5l/TVog0ps=\n");
            String string = e5.toString();
            boolean z7 = org.bitspark.android.utils.m.f8784b;
            Log.i(strS, string);
            return null;
        }
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return this.f7768c;
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.k0
    public final long getItemId(int i6) {
        return i6;
    }
}
