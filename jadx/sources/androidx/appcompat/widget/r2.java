package androidx.appcompat.widget;

import android.view.View;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import java.util.ArrayList;
import org.bitspark.android.R$drawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r2 implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f820a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f821b;

    public /* synthetic */ r2(int i6, Object obj) {
        this.f820a = i6;
        this.f821b = obj;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        Object obj = this.f821b;
        switch (this.f820a) {
            case 0:
                SearchView searchView = (SearchView) obj;
                View.OnFocusChangeListener onFocusChangeListener = searchView.K;
                if (onFocusChangeListener != null) {
                    onFocusChangeListener.onFocusChange(searchView, z7);
                    break;
                }
                break;
            case 1:
                com.google.android.material.textfield.e eVar = (com.google.android.material.textfield.e) obj;
                eVar.e(com.google.android.material.textfield.e.d(eVar));
                break;
            case 2:
                com.google.android.material.textfield.m mVar = (com.google.android.material.textfield.m) obj;
                mVar.f5343a.setEndIconActivated(z7);
                if (!z7) {
                    mVar.i(false);
                    mVar.f5335l = false;
                    break;
                }
                break;
            case 3:
                fa.p pVar = (fa.p) obj;
                if (z7) {
                    pVar.f6933b = 0;
                } else {
                    pVar.f6933b = -1;
                }
                pVar.notifyItemChanged(pVar.f6932a);
                break;
            case 4:
                fa.u uVar = (fa.u) obj;
                if (z7) {
                    uVar.f6959c = 0;
                }
                String str = fa.u.f6956e;
                String str2 = a2.a.s("f05zT6z/y8N/TnMN75SJjScQHQrgvIGLcg==\n", "UmNeYoHS5u4=\n") + z7 + a2.a.s("B9u8EAPDHlZC0qYBCstd\n", "J7bvdW+mfSI=\n") + uVar.f6958b;
                boolean z10 = org.bitspark.android.utils.m.f8784b;
                Log.i(str, str2);
                uVar.notifyItemChanged(uVar.f6958b);
                break;
            case 5:
                view.setSelected(z7);
                if (z7) {
                    ((fa.m0) obj).getClass();
                    break;
                }
                break;
            case 6:
                ka.r rVar = (ka.r) obj;
                if (!z7) {
                    rVar.f7853e0.setBackgroundResource(R.color.transparency);
                    break;
                } else {
                    rVar.f7859l0 = true;
                    rVar.f7853e0.setBackgroundResource(R$drawable.kb_menu_item_bg_focused);
                    if (!rVar.f7852d0.getText().toString().isEmpty()) {
                        ka.r.Q(rVar, rVar.f7852d0.getText().toString());
                        break;
                    } else {
                        ka.r.f7846t0.removeMessages(2);
                        rVar.f7860m0 = -1000;
                        rVar.d0(new ArrayList());
                        break;
                    }
                }
            default:
                ka.y yVar = (ka.y) obj;
                if (!z7) {
                    yVar.f7903o0.setVisibility(4);
                    yVar.f7905p0.setVisibility(4);
                    break;
                } else {
                    yVar.f7903o0.setVisibility(0);
                    yVar.f7905p0.setVisibility(0);
                    break;
                }
        }
    }
}
