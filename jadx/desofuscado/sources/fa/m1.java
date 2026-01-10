package fa;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import java.util.List;
import org.bitspark.android.beans.Menu;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m1 extends c {

    /* renamed from: i, reason: collision with root package name */
    public int f6919i;

    @Override // fa.c
    public final void a(List list) {
        this.f6817e = -1;
        super.a(list);
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(androidx.recyclerview.widget.p1 p1Var, int i6) {
        l1 l1Var = (l1) p1Var;
        Menu menu = (Menu) this.f6819h.get(i6);
        l1Var.f6912a.setText(menu.getName());
        l1Var.itemView.setOnKeyListener(new z0(1, this));
        l1Var.itemView.setOnTouchListener(new j0(this, l1Var, i6, 2));
        if (this.f6816c != null) {
            l1Var.itemView.setOnFocusChangeListener(new k1(this, i6, l1Var, menu, 0));
        }
        l1Var.itemView.setOnClickListener(new g(2));
    }

    @Override // androidx.recyclerview.widget.k0
    public final androidx.recyclerview.widget.p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        View viewI = a.e.i(viewGroup, R.layout.item_vod_menu, viewGroup, false);
        l1 l1Var = new l1(viewI);
        l1Var.f6912a = (TextView) viewI.findViewById(R.id.item_tv_menu);
        return l1Var;
    }
}
