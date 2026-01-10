package fa;

import android.view.View;
import com.tencent.mars.xlog.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6913a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ androidx.recyclerview.widget.k0 f6914b;

    public /* synthetic */ m(androidx.recyclerview.widget.k0 k0Var, int i6) {
        this.f6913a = i6;
        this.f6914b = k0Var;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        androidx.recyclerview.widget.k0 k0Var = this.f6914b;
        switch (this.f6913a) {
            case 0:
                o oVar = (o) k0Var;
                if (oVar.f6928e.findViewHolderForAdapterPosition(oVar.f6926b) != null && oVar.f6928e.findViewHolderForAdapterPosition(oVar.f6926b).itemView != null) {
                    oVar.f6928e.findViewHolderForAdapterPosition(oVar.f6926b).itemView.performLongClick();
                }
                String str = o.f6924i;
                String strS = a2.a.s("qeoFHitNtYap6gUSJ0Go1PqbV01xM+TS97wC\n", "lNc4IxZwiLs=\n");
                boolean z7 = org.bitspark.android.utils.m.f8784b;
                Log.i(str, strS);
                return true;
            case 1:
                u uVar = (u) k0Var;
                if (uVar.d.findViewHolderForAdapterPosition(uVar.f6958b) != null && uVar.d.findViewHolderForAdapterPosition(uVar.f6958b).itemView != null) {
                    uVar.d.findViewHolderForAdapterPosition(uVar.f6958b).itemView.performLongClick();
                }
                String str2 = u.f6956e;
                String strS2 = a2.a.s("igDfke2tagyKAN+d4aF3XtlxjcK30ztY1FbY\n", "tz3irNCQVzE=\n");
                boolean z10 = org.bitspark.android.utils.m.f8784b;
                Log.i(str2, strS2);
                return true;
            default:
                g0 g0Var = (g0) k0Var;
                g0Var.f6859h = true;
                g0Var.f.getClass();
                return false;
        }
    }

    public m(g0 g0Var, int i6) {
        this.f6913a = 2;
        this.f6914b = g0Var;
    }
}
