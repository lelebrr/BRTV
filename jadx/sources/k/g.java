package k;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.p2elite.brtv2.R;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    public int f7598a = -1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f7599b;

    public g(h hVar) {
        this.f7599b = hVar;
        a();
    }

    public final void a() {
        l lVar = this.f7599b.f7602c;
        n nVar = lVar.f7628v;
        if (nVar != null) {
            lVar.i();
            ArrayList arrayList = lVar.f7616j;
            int size = arrayList.size();
            for (int i6 = 0; i6 < size; i6++) {
                if (((n) arrayList.get(i6)) == nVar) {
                    this.f7598a = i6;
                    return;
                }
            }
        }
        this.f7598a = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final n getItem(int i6) {
        h hVar = this.f7599b;
        l lVar = hVar.f7602c;
        lVar.i();
        ArrayList arrayList = lVar.f7616j;
        hVar.getClass();
        int i10 = this.f7598a;
        if (i10 >= 0 && i6 >= i10) {
            i6++;
        }
        return (n) arrayList.get(i6);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        h hVar = this.f7599b;
        l lVar = hVar.f7602c;
        lVar.i();
        int size = lVar.f7616j.size();
        hVar.getClass();
        return this.f7598a < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i6) {
        return i6;
    }

    @Override // android.widget.Adapter
    public final View getView(int i6, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f7599b.f7601b.inflate(R.layout.abc_list_menu_item_layout, viewGroup, false);
        }
        ((z) view).c(getItem(i6));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
