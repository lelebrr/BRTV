package k;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final l f7604a;

    /* renamed from: b, reason: collision with root package name */
    public int f7605b = -1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7606c;
    public final boolean d;

    /* renamed from: e, reason: collision with root package name */
    public final LayoutInflater f7607e;
    public final int f;

    public i(l lVar, LayoutInflater layoutInflater, boolean z7, int i6) {
        this.d = z7;
        this.f7607e = layoutInflater;
        this.f7604a = lVar;
        this.f = i6;
        a();
    }

    public final void a() {
        l lVar = this.f7604a;
        n nVar = lVar.f7628v;
        if (nVar != null) {
            lVar.i();
            ArrayList arrayList = lVar.f7616j;
            int size = arrayList.size();
            for (int i6 = 0; i6 < size; i6++) {
                if (((n) arrayList.get(i6)) == nVar) {
                    this.f7605b = i6;
                    return;
                }
            }
        }
        this.f7605b = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final n getItem(int i6) {
        ArrayList arrayListL;
        l lVar = this.f7604a;
        if (this.d) {
            lVar.i();
            arrayListL = lVar.f7616j;
        } else {
            arrayListL = lVar.l();
        }
        int i10 = this.f7605b;
        if (i10 >= 0 && i6 >= i10) {
            i6++;
        }
        return (n) arrayListL.get(i6);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList arrayListL;
        l lVar = this.f7604a;
        if (this.d) {
            lVar.i();
            arrayListL = lVar.f7616j;
        } else {
            arrayListL = lVar.l();
        }
        return this.f7605b < 0 ? arrayListL.size() : arrayListL.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i6) {
        return i6;
    }

    @Override // android.widget.Adapter
    public final View getView(int i6, View view, ViewGroup viewGroup) {
        boolean z7 = false;
        if (view == null) {
            view = this.f7607e.inflate(this.f, viewGroup, false);
        }
        int i10 = getItem(i6).f7635b;
        int i11 = i6 - 1;
        int i12 = i11 >= 0 ? getItem(i11).f7635b : i10;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.f7604a.m() && i10 != i12) {
            z7 = true;
        }
        listMenuItemView.setGroupDividerEnabled(z7);
        z zVar = (z) view;
        if (this.f7606c) {
            listMenuItemView.setForceShowIcon(true);
        }
        zVar.c(getItem(i6));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
