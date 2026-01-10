package fa;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import org.bitspark.android.beans.Menu;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x extends i0 {

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f6971c;
    public ea.k d;

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return this.f6971c.size();
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(androidx.recyclerview.widget.p1 p1Var, int i6) {
        w wVar = (w) p1Var;
        wVar.itemView.setOnFocusChangeListener(new h0(this));
        Menu menu = (Menu) this.f6971c.get(i6);
        String name = menu.getName();
        TextView textView = wVar.f6966a;
        textView.setText(name);
        wVar.itemView.setSelected(menu.isSelected());
        if (menu.isSelected()) {
            textView.setTypeface(null, 1);
        } else {
            textView.setTypeface(null, 0);
        }
        wVar.itemView.setOnClickListener(new androidx.mediarouter.app.z(this, 2, wVar));
        wVar.itemView.setOnKeyListener(new v(0));
    }

    @Override // androidx.recyclerview.widget.k0
    public final androidx.recyclerview.widget.p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        View viewI = a.e.i(viewGroup, R.layout.item_live_source, viewGroup, false);
        w wVar = new w(viewI);
        wVar.f6966a = (TextView) viewI.findViewById(R.id.tv);
        return wVar;
    }
}
