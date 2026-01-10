package androidx.leanback.widget;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.p1;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d0 extends androidx.recyclerview.widget.k0 {

    /* renamed from: a, reason: collision with root package name */
    public final a1.b f1821a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1822b = new ArrayList();

    public d0(a1.b bVar) {
        b0 b0Var = new b0(this);
        a1.b bVar2 = this.f1821a;
        if (bVar == bVar2) {
            return;
        }
        if (bVar2 != null) {
            ((e0) bVar2.f47b).unregisterObserver(b0Var);
        }
        this.f1821a = bVar;
        ((e0) bVar.f47b).registerObserver(b0Var);
        boolean zHasStableIds = hasStableIds();
        this.f1821a.getClass();
        if (zHasStableIds) {
            this.f1821a.getClass();
            setHasStableIds(false);
        }
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        a1.b bVar = this.f1821a;
        if (bVar != null) {
            return ((ArrayList) bVar.d).size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.k0
    public final long getItemId(int i6) {
        this.f1821a.getClass();
        return -1L;
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemViewType(int i6) {
        a1.b bVar = this.f1821a;
        qa.m mVarA = ((l0) bVar.f48c).a(((ArrayList) bVar.d).get(i6));
        ArrayList arrayList = this.f1822b;
        int iIndexOf = arrayList.indexOf(mVarA);
        if (iIndexOf >= 0) {
            return iIndexOf;
        }
        arrayList.add(mVarA);
        return arrayList.indexOf(mVarA);
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(p1 p1Var, int i6) {
        c0 c0Var = (c0) p1Var;
        Object obj = ((ArrayList) this.f1821a.d).get(i6);
        c0Var.f1819c = obj;
        qa.m mVar = c0Var.f1817a;
        mVar.getClass();
        String strS = a2.a.s("Y7nbjKezLqVwog==\n", "FdC+++/cQsE=\n");
        ia.b bVar = c0Var.f1818b;
        j9.i.f(bVar, strS);
        mVar.e(bVar, obj);
    }

    @Override // androidx.recyclerview.widget.k0
    public final p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        int i10;
        qa.m mVar = (qa.m) this.f1822b.get(i6);
        mVar.getClass();
        j9.i.f(viewGroup, a2.a.s("jIt/Mx2C\n", "/OoNVnP2S30=\n"));
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
        switch (mVar.f9427c) {
            case 0:
            case 3:
                i10 = R.layout.item_live_setting_subtitle_location;
                break;
            case 1:
                i10 = R.layout.item_live_setting;
                break;
            case 2:
                i10 = R.layout.item_live_setting_select;
                break;
            case 4:
                i10 = R.layout.item_live_setting_subtitle;
                break;
            default:
                i10 = R.layout.item_live_setting_subtitle_title;
                break;
        }
        w0.e eVarA = w0.c.a(layoutInflaterFrom, i10, viewGroup);
        j9.i.c(eVarA);
        ia.b bVar = new ia.b(eVarA);
        c0 c0Var = new c0(mVar, bVar.f7363a, bVar);
        c0Var.f1818b.f7363a.getOnFocusChangeListener();
        return c0Var;
    }

    @Override // androidx.recyclerview.widget.k0
    public final boolean onFailedToRecycleView(p1 p1Var) {
        onViewRecycled(p1Var);
        return false;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onViewAttachedToWindow(p1 p1Var) {
        ((c0) p1Var).f1817a.getClass();
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onViewDetachedFromWindow(p1 p1Var) {
        c0 c0Var = (c0) p1Var;
        c0Var.f1817a.getClass();
        qa.m.d(c0Var.f1818b.f7363a);
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onViewRecycled(p1 p1Var) {
        String str;
        String str2;
        c0 c0Var = (c0) p1Var;
        qa.m mVar = c0Var.f1817a;
        mVar.getClass();
        String strS = a2.a.s("4EO6rEBuQhPzWA==\n", "lirf2wgBLnc=\n");
        ia.b bVar = c0Var.f1818b;
        j9.i.f(bVar, strS);
        switch (mVar.f9427c) {
            case 0:
                str = "sAS+4Xpht36jHw==\n";
                str2 = "xm3bljIO2xo=\n";
                break;
            case 1:
                str = "BpHbw3/hHt0Vig==\n";
                str2 = "cPi+tDeOcrk=\n";
                break;
            case 2:
                str = "2Fv0CxBpqJjLQA==\n";
                str2 = "rjKRfFgGxPw=\n";
                break;
            case 3:
                str = "4uUpebxrcUTx/g==\n";
                str2 = "lIxMDvQEHSA=\n";
                break;
            case 4:
                str = "JwZ7cH/f9VQ0HQ==\n";
                str2 = "UW8eBzewmTA=\n";
                break;
            default:
                str = "S6NK10MZpR5YuA==\n";
                str2 = "PcovoAt2yXo=\n";
                break;
        }
        j9.i.f(bVar, a2.a.s(str, str2));
        c0Var.f1819c = null;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(p1 p1Var, int i6, List list) {
        c0 c0Var = (c0) p1Var;
        Object obj = ((ArrayList) this.f1821a.d).get(i6);
        c0Var.f1819c = obj;
        qa.m mVar = c0Var.f1817a;
        mVar.getClass();
        String strS = a2.a.s("Y7nbjKezLqVwog==\n", "FdC+++/cQsE=\n");
        ia.b bVar = c0Var.f1818b;
        j9.i.f(bVar, strS);
        mVar.e(bVar, obj);
    }
}
