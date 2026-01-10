package fa;

import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import java.util.List;
import org.bitspark.android.beans.Menu;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o1 extends c {

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f6931i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o1(int i6, List list) {
        super(list);
        this.f6931i = i6;
    }

    @Override // fa.c, androidx.recyclerview.widget.k0
    public final int getItemCount() {
        switch (this.f6931i) {
        }
        return this.f6819h.size();
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(androidx.recyclerview.widget.p1 p1Var, int i6) {
        switch (this.f6931i) {
            case 0:
                n1 n1Var = (n1) p1Var;
                int i10 = this.f6817e;
                if (i10 == i6) {
                    this.f = n1Var.itemView;
                }
                n1Var.itemView.setSelected(i10 == i6);
                Menu menu = (Menu) this.f6819h.get(i6);
                n1Var.f6923a.setText(menu.getName());
                if (this.f6816c != null) {
                    n1Var.itemView.setOnFocusChangeListener(new k1(this, i6, n1Var, menu, 1));
                }
                if (this.d != null) {
                    n1Var.itemView.setOnKeyListener(new z0(2, this));
                }
                if (this.f6818g != null) {
                    n1Var.itemView.setOnClickListener(new q(this, i6, 5));
                    break;
                }
                break;
            default:
                p1 p1Var2 = (p1) p1Var;
                Menu menu2 = (Menu) this.f6819h.get(i6);
                p1Var2.f6937a.setText(menu2.getName());
                p1Var2.f6938b.setText(menu2.getName());
                boolean z7 = this.f6817e == i6;
                p1Var2.itemView.setSelected(z7);
                LinearLayout linearLayout = p1Var2.d;
                LinearLayout linearLayout2 = p1Var2.f6939c;
                if (z7) {
                    linearLayout2.setVisibility(0);
                    linearLayout.setVisibility(8);
                } else {
                    linearLayout2.setVisibility(8);
                    linearLayout.setVisibility(0);
                }
                p1Var2.itemView.setOnTouchListener(new j0(this, p1Var2, i6, 3));
                if (this.f6818g != null) {
                    p1Var2.itemView.setOnClickListener(new q(this, i6, 6));
                }
                if (this.d != null) {
                    p1Var2.itemView.setOnKeyListener(new z0(3, this));
                    break;
                }
                break;
        }
    }

    @Override // androidx.recyclerview.widget.k0
    public final androidx.recyclerview.widget.p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        switch (this.f6931i) {
            case 0:
                View viewI = a.e.i(viewGroup, R.layout.item_vod_season, viewGroup, false);
                n1 n1Var = new n1(viewI);
                n1Var.f6923a = (TextView) viewI.findViewById(R.id.item_tv);
                return n1Var;
            default:
                View viewI2 = a.e.i(viewGroup, R.layout.item_vod_audio, viewGroup, false);
                p1 p1Var = new p1(viewI2);
                p1Var.f6937a = (TextView) viewI2.findViewById(R.id.tv_selected);
                p1Var.f6938b = (TextView) viewI2.findViewById(R.id.tv_unselected);
                p1Var.f6939c = (LinearLayout) viewI2.findViewById(R.id.selected_layout);
                p1Var.d = (LinearLayout) viewI2.findViewById(R.id.unselected_layout);
                return p1Var;
        }
    }
}
