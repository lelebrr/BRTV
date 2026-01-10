package ka;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class a extends b implements View.OnKeyListener, View.OnFocusChangeListener {
    public static final String Y = a2.a.s("uIadOXEg\n", "+tXcSQFT5Mk=\n");
    public View U;
    public RecyclerView V;
    public fa.b W;
    public ta.a X;

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        view.getId();
    }

    @Override // ka.b, android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        view.getId();
        if (keyEvent.getRepeatCount() == 0) {
            keyEvent.getAction();
        }
        String strJ = ea.q.j("58a/vIpP\n", "iKjU2fNvkak=\n", new StringBuilder(), i6);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(Y, strJ);
        return super.onKey(view, i6, keyEvent);
    }

    @Override // androidx.fragment.app.s
    public final View t(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.U = layoutInflater.inflate(R.layout.fragment_apps, (ViewGroup) null);
        String strS = a2.a.s("I9lzzHU7mWpkmTQ=\n", "SrcauCNS/B0=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(Y, strS);
        ((RelativeLayout) this.U.findViewById(R.id.apps_menu)).setOnKeyListener(this);
        sa.b bVar = new sa.b(0, 0, 0, 0);
        this.V = (RecyclerView) this.U.findViewById(R.id.apps_rview);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(ea.h.f6692w);
        this.V.addItemDecoration(bVar);
        this.V.setLayoutManager(gridLayoutManager);
        this.V.setOnFocusChangeListener(this);
        this.V.setOnKeyListener(this);
        try {
            Context contextJ = j();
            fa.b bVar2 = new fa.b(contextJ, ea.d.f6634g);
            bVar2.f6813j = contextJ;
            this.W = bVar2;
            bVar2.f6930h = new j7.c(5, this);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        this.V.setAdapter(this.W);
        if (this.V.getVisibility() == 8) {
            this.V.setVisibility(0);
        }
        String str = ea.h.f6672a;
        h().setRequestedOrientation(0);
        this.X = (ta.a) new a1.b(h()).n(ta.a.class);
        return this.U;
    }
}
