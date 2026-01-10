package fa;

import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.R$drawable;
import org.bitspark.android.view.LeanbackTabLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6920a = 1;

    /* renamed from: b, reason: collision with root package name */
    public ViewGroup f6921b;

    /* renamed from: c, reason: collision with root package name */
    public Object f6922c;

    public /* synthetic */ n() {
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        ViewPager2 viewPager2;
        switch (this.f6920a) {
            case 0:
                o oVar = (o) this.f6922c;
                if (z7) {
                    if (oVar.d <= 0) {
                        oVar.d = 0;
                    }
                }
                String str = o.f6924i;
                String str2 = a2.a.s("ZPF/MXD9K3Jk8X9zM5ZpPDyvEXQ8vmE6aQ==\n", "SdxSHF3QBl8=\n") + z7 + a2.a.s("WYhtAl3kGr0cgXcTVOxZ\n", "eeU+ZzGBeck=\n") + oVar.f6926b;
                boolean z10 = org.bitspark.android.utils.m.f8784b;
                Log.i(str, str2);
                if (oVar.f6926b < ((RecyclerView) this.f6921b).getAdapter().getItemCount()) {
                    int i6 = oVar.f6926b;
                    oVar.f6926b = i6;
                    oVar.notifyItemChanged(i6);
                    break;
                } else {
                    oVar.f6926b = 0;
                    oVar.notifyItemChanged(0);
                    break;
                }
                break;
            default:
                View viewFindViewById = view.findViewById(R.id.tab_underline);
                if (viewFindViewById != null) {
                    if (z7) {
                        viewFindViewById.setBackgroundResource(R$drawable.shape_color_fff);
                    } else {
                        viewFindViewById.setBackgroundResource(R$drawable.shape_color_73ffffff);
                    }
                }
                if (z7) {
                    LinearLayout linearLayout = (LinearLayout) ((LeanbackTabLayout) this.f6921b).getChildAt(0);
                    for (int i10 = 0; i10 < linearLayout.getChildCount(); i10++) {
                        if (view == linearLayout.getChildAt(i10) && (viewPager2 = (ViewPager2) this.f6922c) != null) {
                            viewPager2.setCurrentItem(i10, false);
                        }
                    }
                    break;
                }
                break;
        }
    }

    public n(o oVar, RecyclerView recyclerView) {
        this.f6922c = oVar;
        this.f6921b = recyclerView;
    }
}
