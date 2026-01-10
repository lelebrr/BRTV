package ja;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.leanback.widget.VerticalGridView;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k extends j {

    /* renamed from: q, reason: collision with root package name */
    public static final SparseIntArray f7508q;

    /* renamed from: p, reason: collision with root package name */
    public long f7509p;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f7508q = sparseIntArray;
        sparseIntArray.put(R.id.iv_top, 1);
        sparseIntArray.put(R.id.tv_top, 2);
        sparseIntArray.put(R.id.divider, 3);
        sparseIntArray.put(R.id.vg, 4);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public k(View view) {
        Object[] objArrR = w0.e.R(view, 5, f7508q);
        View view2 = (View) objArrR[3];
        super(view, view2, (TextView) objArrR[2], (VerticalGridView) objArrR[4]);
        this.f7509p = -1L;
        ((ConstraintLayout) objArrR[0]).setTag(null);
        T(view);
        synchronized (this) {
            this.f7509p = 1L;
        }
        S();
    }

    @Override // w0.e
    public final void O() {
        synchronized (this) {
            this.f7509p = 0L;
        }
    }

    @Override // w0.e
    public final boolean P() {
        synchronized (this) {
            try {
                return this.f7509p != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
