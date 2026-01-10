package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
import com.tencent.mars.xlog.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w1 implements AdapterView.OnItemSelectedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f878a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f879b;

    public /* synthetic */ w1(int i6, Object obj) {
        this.f878a = i6;
        this.f879b = obj;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i6, long j10) {
        s1 s1Var;
        Object obj = this.f879b;
        switch (this.f878a) {
            case 0:
                if (i6 != -1 && (s1Var = ((ListPopupWindow) obj).f563c) != null) {
                    s1Var.setListSelectionHidden(false);
                    break;
                }
                break;
            case 1:
                ((SearchView) obj).q(i6);
                break;
            default:
                if (view != null) {
                    ka.r rVar = (ka.r) obj;
                    rVar.f7856h0 = view;
                    String strS = a2.a.s("7kkksNBc\n", "rBpp1b4pCzo=\n");
                    String str = a2.a.s("FSP+NqV0zQ4WKNQ2pX2+Bxs+wwSveusYPz3QFKl86VFa\n", "ek23QsAZnms=\n") + view + a2.a.s("X7UBF2CQ3vRftQEX\n", "Yog8Kl2t48k=\n") + rVar.h().getCurrentFocus();
                    boolean z7 = org.bitspark.android.utils.m.f8784b;
                    Log.i(strS, str);
                    break;
                }
                break;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i6 = this.f878a;
    }

    private final void a(AdapterView adapterView) {
    }

    private final void b(AdapterView adapterView) {
    }

    private final void c(AdapterView adapterView) {
    }
}
