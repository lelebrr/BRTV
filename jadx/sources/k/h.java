package k;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import androidx.appcompat.view.menu.ExpandedMenuView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements y, AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public Context f7600a;

    /* renamed from: b, reason: collision with root package name */
    public LayoutInflater f7601b;

    /* renamed from: c, reason: collision with root package name */
    public l f7602c;
    public ExpandedMenuView d;

    /* renamed from: e, reason: collision with root package name */
    public x f7603e;
    public g f;

    public h(ContextWrapper contextWrapper) {
        this.f7600a = contextWrapper;
        this.f7601b = LayoutInflater.from(contextWrapper);
    }

    @Override // k.y
    public final void b(l lVar, boolean z7) {
        x xVar = this.f7603e;
        if (xVar != null) {
            xVar.b(lVar, z7);
        }
    }

    @Override // k.y
    public final boolean d(n nVar) {
        return false;
    }

    @Override // k.y
    public final boolean e(e0 e0Var) {
        if (!e0Var.hasVisibleItems()) {
            return false;
        }
        m mVar = new m();
        mVar.f7631a = e0Var;
        Context context = e0Var.f7609a;
        androidx.appcompat.app.i iVar = new androidx.appcompat.app.i(context);
        androidx.appcompat.app.e eVar = iVar.f314a;
        h hVar = new h(eVar.f237a);
        mVar.f7633c = hVar;
        hVar.f7603e = mVar;
        e0Var.b(hVar, context);
        h hVar2 = mVar.f7633c;
        if (hVar2.f == null) {
            hVar2.f = new g(hVar2);
        }
        eVar.f241g = hVar2.f;
        eVar.f242h = mVar;
        View view = e0Var.f7621o;
        if (view != null) {
            eVar.f240e = view;
        } else {
            eVar.f239c = e0Var.f7620n;
            eVar.d = e0Var.f7619m;
        }
        eVar.f = mVar;
        androidx.appcompat.app.j jVarA = iVar.a();
        mVar.f7632b = jVarA;
        jVarA.setOnDismissListener(mVar);
        WindowManager.LayoutParams attributes = mVar.f7632b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        mVar.f7632b.show();
        x xVar = this.f7603e;
        if (xVar == null) {
            return true;
        }
        xVar.f(e0Var);
        return true;
    }

    @Override // k.y
    public final boolean f(n nVar) {
        return false;
    }

    @Override // k.y
    public final void g(Parcelable parcelable) {
        SparseArray<Parcelable> sparseParcelableArray = ((Bundle) parcelable).getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // k.y
    public final int getId() {
        return 0;
    }

    @Override // k.y
    public final void i(x xVar) {
        throw null;
    }

    @Override // k.y
    public final void j(boolean z7) {
        g gVar = this.f;
        if (gVar != null) {
            gVar.notifyDataSetChanged();
        }
    }

    @Override // k.y
    public final void k(Context context, l lVar) {
        if (this.f7600a != null) {
            this.f7600a = context;
            if (this.f7601b == null) {
                this.f7601b = LayoutInflater.from(context);
            }
        }
        this.f7602c = lVar;
        g gVar = this.f;
        if (gVar != null) {
            gVar.notifyDataSetChanged();
        }
    }

    @Override // k.y
    public final boolean l() {
        return false;
    }

    @Override // k.y
    public final Parcelable m() {
        if (this.d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.d;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        return bundle;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i6, long j10) {
        this.f7602c.q(this.f.getItem(i6), this, 0);
    }
}
