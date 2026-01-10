package fa;

import androidx.appcompat.widget.r2;
import androidx.recyclerview.widget.RecyclerView;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class p extends androidx.recyclerview.widget.k0 {
    public static final String f = a2.a.s("4263Gjvl8mLZarscNcf6ZttItws=\n", "qzzSeUKGngc=\n");

    /* renamed from: c, reason: collision with root package name */
    public RecyclerView f6934c;
    public final int d;

    /* renamed from: a, reason: collision with root package name */
    public int f6932a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f6933b = -1;

    /* renamed from: e, reason: collision with root package name */
    public a7.f f6935e = null;

    public p(int i6) {
        this.d = i6;
    }

    public static boolean a(p pVar, int i6) {
        pVar.f6933b = pVar.f6932a + i6;
        String str = a2.a.s("It0MfBLBBPMrxx11GphQ\n", "T45pEHeicJY=\n") + pVar.f6932a + a2.a.s("dyqI6tdF5OgyJ5nb13Psvnc=\n", "V0TtkqMWgYQ=\n") + pVar.f6933b;
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(f, str);
        int i10 = pVar.f6933b;
        if (i10 >= 0 && i10 < pVar.getItemCount()) {
            pVar.notifyItemChanged(pVar.f6932a);
            int i11 = pVar.f6933b;
            pVar.f6932a = i11;
            pVar.notifyItemChanged(i11);
            pVar.f6934c.scrollToPosition(pVar.f6932a);
            return true;
        }
        if (pVar.f6933b == pVar.getItemCount()) {
            return true;
        }
        if (pVar.f6933b == -1) {
            ka.m0.F0 = ea.d.d;
            pVar.notifyItemChanged(0);
            if (pVar.d == 2) {
                Spark.X1.sendEmptyMessage(120);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.f6934c = recyclerView;
        recyclerView.setOnKeyListener(new l(this, 1, recyclerView));
        recyclerView.setOnFocusChangeListener(new r2(3, this));
    }
}
