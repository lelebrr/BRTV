package fa;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends o {

    /* renamed from: k, reason: collision with root package name */
    public static final String f6812k = a2.a.s("73/zjv49i9r6avE=\n", "jg+D/b9Z6qo=\n");

    /* renamed from: j, reason: collision with root package name */
    public Context f6813j;

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return 0;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(androidx.recyclerview.widget.p1 p1Var, int i6) {
        a aVar = (a) p1Var;
        String str = a2.a.s("za55cY5rplWH4Q==\n", "vcEKGPoCyTs=\n") + i6 + a2.a.s("eNFpr8xPb7E863imxBY7\n", "WKIMw6ksG9Q=\n") + this.f6926b + a2.a.s("4HusaGaklOGldr1ZZpKct+A=\n", "wBXJEBL38Y0=\n") + this.d;
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(f6812k, str);
        boolean z10 = i6 == this.f6926b;
        if (z10) {
            int i10 = this.d;
        }
        aVar.itemView.setSelected(z10);
        throw null;
    }

    @Override // androidx.recyclerview.widget.k0
    public final androidx.recyclerview.widget.p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        View viewI = a.e.i(viewGroup, R.layout.app_item, viewGroup, false);
        a aVar = new a(viewI);
        aVar.f6806a = (ImageView) viewI.findViewById(R.id.app_icon);
        aVar.f6807b = (TextView) viewI.findViewById(R.id.app_name);
        return aVar;
    }
}
