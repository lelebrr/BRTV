package androidx.appcompat.app;

import android.os.Bundle;
import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.q3;
import com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity;
import com.google.android.material.internal.NavigationMenuItemView;
import com.google.android.material.textfield.TextInputLayout;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import fa.h1;
import fa.j1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f221a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f222b;

    public /* synthetic */ a(int i6, Object obj) {
        this.f221a = i6;
        this.f222b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        r4.f fVarP;
        int i6 = 0;
        int i10 = 1;
        Object obj = this.f222b;
        switch (this.f221a) {
            case 0:
                h hVar = (h) obj;
                Button button = hVar.f295h;
                hVar.f311x.obtainMessage(1, hVar.f291b).sendToTarget();
                break;
            case 1:
                ((j.a) obj).a();
                break;
            case 2:
                q3 q3Var = ((Toolbar) obj).M;
                k.n nVar = q3Var != null ? q3Var.f814b : null;
                if (nVar != null) {
                    nVar.collapseActionView();
                    break;
                }
                break;
            case 3:
                com.google.android.material.datepicker.r rVar = (com.google.android.material.datepicker.r) obj;
                int i11 = rVar.Y;
                if (i11 != 2) {
                    if (i11 == 1) {
                        rVar.S(2);
                        break;
                    }
                } else {
                    rVar.S(1);
                    break;
                }
                break;
            case 4:
                NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) view;
                com.google.android.material.internal.r rVar2 = (com.google.android.material.internal.r) obj;
                com.google.android.material.internal.j jVar = rVar2.f5044e;
                if (jVar != null) {
                    jVar.f5036c = true;
                }
                k.n itemData = navigationMenuItemView.getItemData();
                boolean zQ = rVar2.f5043c.q(itemData, rVar2, 0);
                if (itemData != null && itemData.isCheckable() && zQ) {
                    rVar2.f5044e.b(itemData);
                } else {
                    i10 = 0;
                }
                com.google.android.material.internal.j jVar2 = rVar2.f5044e;
                if (jVar2 != null) {
                    jVar2.f5036c = false;
                }
                if (i10 != 0) {
                    rVar2.j(false);
                    break;
                }
                break;
            case 5:
                k.n itemData2 = ((com.google.android.material.navigation.d) view).getItemData();
                com.google.android.material.navigation.f fVar = (com.google.android.material.navigation.f) obj;
                if (!fVar.B.q(itemData2, fVar.A, 0)) {
                    itemData2.setChecked(true);
                    break;
                }
                break;
            case 6:
                com.google.android.material.textfield.e eVar = (com.google.android.material.textfield.e) obj;
                Editable text = eVar.f5343a.getEditText().getText();
                if (text != null) {
                    text.clear();
                }
                TextInputLayout textInputLayout = eVar.f5343a;
                u7.d.x(textInputLayout, textInputLayout.f5263f0, textInputLayout.f5267h0);
                break;
            case 7:
                com.google.android.material.textfield.m mVar = (com.google.android.material.textfield.m) obj;
                com.google.android.material.textfield.m.d(mVar, (AutoCompleteTextView) mVar.f5343a.getEditText());
                break;
            case 8:
                com.google.android.material.textfield.r rVar3 = (com.google.android.material.textfield.r) obj;
                EditText editText = rVar3.f5343a.getEditText();
                if (editText != null) {
                    int selectionEnd = editText.getSelectionEnd();
                    if (com.google.android.material.textfield.r.d(rVar3)) {
                        editText.setTransformationMethod(null);
                    } else {
                        editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    }
                    if (selectionEnd >= 0) {
                        editText.setSelection(selectionEnd);
                    }
                    TextInputLayout textInputLayout2 = rVar3.f5343a;
                    u7.d.x(textInputLayout2, textInputLayout2.f5263f0, textInputLayout2.f5267h0);
                    break;
                }
                break;
            case 9:
                fa.b bVar = (fa.b) obj;
                bVar.notifyItemChanged(bVar.f6926b);
                bVar.d = bVar.f6928e.getChildLayoutPosition(view);
                bVar.f6926b = bVar.f6928e.getChildLayoutPosition(view);
                bVar.notifyItemChanged(bVar.f6926b);
                break;
            case 10:
                String str = fa.o.f6924i;
                String strS = a2.a.s("tcaPdoXG4R21xo95isn8T+a43iLbkA==\n", "iPuyS7j73CA=\n");
                boolean z7 = org.bitspark.android.utils.m.f8784b;
                Log.i(str, strS);
                fa.o oVar = (fa.o) obj;
                if (oVar.f6928e.findViewHolderForAdapterPosition(oVar.f6926b) != null && oVar.f6928e.findViewHolderForAdapterPosition(oVar.f6926b).itemView != null) {
                    oVar.f6928e.findViewHolderForAdapterPosition(oVar.f6926b).itemView.performClick();
                    break;
                }
                break;
            case 11:
                String str2 = fa.u.f6956e;
                String strS2 = a2.a.s("l0TFocIUz9+XRMWuzRvSjcQ6lPWcQg==\n", "qnn4nP8p8uI=\n");
                boolean z10 = org.bitspark.android.utils.m.f8784b;
                Log.i(str2, strS2);
                fa.u uVar = (fa.u) obj;
                if (uVar.d.findViewHolderForAdapterPosition(uVar.f6958b) != null && uVar.d.findViewHolderForAdapterPosition(uVar.f6958b).itemView != null) {
                    uVar.d.findViewHolderForAdapterPosition(uVar.f6958b).itemView.performClick();
                    fa.u.f = 1;
                    break;
                }
                break;
            case 12:
                h1 h1Var = (h1) obj;
                h1Var.notifyItemChanged(h1Var.f6932a);
                h1Var.f6933b = h1Var.f6934c.getChildLayoutPosition(view);
                h1Var.f6932a = h1Var.f6934c.getChildLayoutPosition(view);
                h1Var.notifyItemChanged(h1Var.f6932a);
                break;
            case 13:
                j1 j1Var = (j1) obj;
                j1Var.notifyItemChanged(j1Var.f6932a);
                j1Var.f6933b = j1Var.f6934c.getChildLayoutPosition(view);
                j1Var.f6932a = j1Var.f6934c.getChildLayoutPosition(view);
                j1Var.notifyItemChanged(j1Var.f6932a);
                break;
            case 14:
                ka.j jVar3 = ((ka.i) obj).f7794a;
                jVar3.R(jVar3.W);
                break;
            case 15:
                ka.y yVar = (ka.y) obj;
                yVar.f7910r1 = null;
                androidx.fragment.app.s sVarZ = yVar.h().k().z(a2.a.s("st91n7UYmoGPyFictw==\n", "5qk089Bq7sU=\n"));
                if (sVarZ != null) {
                    ((androidx.fragment.app.m) sVarZ).Q(true, false);
                    androidx.fragment.app.k0 k0VarK = yVar.h().k();
                    k0VarK.getClass();
                    androidx.fragment.app.a aVar = new androidx.fragment.app.a(k0VarK);
                    aVar.h(sVarZ);
                    aVar.e(true);
                    androidx.fragment.app.k0 k0VarK2 = yVar.h().k();
                    k0VarK2.u(true);
                    k0VarK2.A();
                }
                ka.w wVar = new ka.w(yVar, i6);
                ka.w wVar2 = new ka.w(yVar, i10);
                String strN = yVar.f7908q1 ? yVar.n(R.string.network_status_not_good) : yVar.n(R.string.network_status_good);
                sa.p pVar = new sa.p();
                pVar.f9882k0 = wVar;
                pVar.f9883l0 = wVar2;
                Bundle bundle = new Bundle();
                bundle.putString(sa.p.f9881s0, strN);
                pVar.O(bundle);
                yVar.f7910r1 = pVar;
                pVar.f9889r0 = new x4.e(19);
                pVar.S(yVar.h().k(), a2.a.s("ZJ9uQeCzhv9ZiENC4g==\n", "MOkvLYXB8rs=\n"));
                break;
            case 16:
                la.d dVar = (la.d) obj;
                dVar.f8091k0 = null;
                androidx.fragment.app.s sVarZ2 = dVar.h().k().z(a2.a.s("qWQzaeQNS/iUcx5q5g==\n", "/RJyBYF/P7w=\n"));
                if (sVarZ2 != null) {
                    ((androidx.fragment.app.m) sVarZ2).Q(true, false);
                    androidx.fragment.app.k0 k0VarK3 = dVar.h().k();
                    k0VarK3.getClass();
                    androidx.fragment.app.a aVar2 = new androidx.fragment.app.a(k0VarK3);
                    aVar2.h(sVarZ2);
                    aVar2.e(true);
                    androidx.fragment.app.k0 k0VarK4 = dVar.h().k();
                    k0VarK4.u(true);
                    k0VarK4.A();
                }
                la.b bVar2 = new la.b(dVar, i6);
                la.b bVar3 = new la.b(dVar, i10);
                String strN2 = dVar.f8092l0 ? dVar.n(R.string.network_status_not_good) : dVar.n(R.string.network_status_good);
                sa.p pVar2 = new sa.p();
                pVar2.f9882k0 = bVar2;
                pVar2.f9883l0 = bVar3;
                Bundle bundle2 = new Bundle();
                bundle2.putString(sa.p.f9881s0, strN2);
                pVar2.O(bundle2);
                dVar.f8091k0 = pVar2;
                pVar2.f9889r0 = new la.a(dVar);
                pVar2.S(dVar.h().k(), a2.a.s("k2bzA/WpQequcd4A9w==\n", "xxCyb5DbNa4=\n"));
                dVar.X.setVisibility(4);
                break;
            case 17:
                ((sa.g) obj).dismiss();
                break;
            case 18:
                ((sa.e) obj).dismiss();
                break;
            case 19:
                ((sa.e) obj).dismiss();
                break;
            case 20:
                ((t3.c) obj).f10131a.getClass();
                break;
            default:
                ExpandedControllerActivity expandedControllerActivity = (ExpandedControllerActivity) obj;
                if (expandedControllerActivity.f3871d0.isClickable() && (fVarP = expandedControllerActivity.p()) != null) {
                    b5.l.b("Must be called from the main thread.");
                    if (!fVarP.F()) {
                        r4.f.x();
                        break;
                    } else {
                        r4.f.G(new r4.h(fVarP, 5));
                        break;
                    }
                }
                break;
        }
    }

    public a(fa.b bVar, ha.a aVar) {
        this.f221a = 9;
        this.f222b = bVar;
    }
}
