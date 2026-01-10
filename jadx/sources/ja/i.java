package ja;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i extends h {

    /* renamed from: n, reason: collision with root package name */
    public static final SparseIntArray f7502n;

    /* renamed from: m, reason: collision with root package name */
    public long f7503m;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f7502n = sparseIntArray;
        sparseIntArray.put(R.id.bg, 1);
        sparseIntArray.put(R.id.content_container, 2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public i(View view) {
        Object[] objArrR = w0.e.R(view, 3, f7502n);
        super(view, (FrameLayout) objArrR[2]);
        this.f7503m = -1L;
        ((ConstraintLayout) objArrR[0]).setTag(null);
        T(view);
        synchronized (this) {
            this.f7503m = 1L;
        }
        S();
    }

    @Override // w0.e
    public final void O() {
        synchronized (this) {
            this.f7503m = 0L;
        }
    }

    @Override // w0.e
    public final boolean P() {
        synchronized (this) {
            try {
                return this.f7503m != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
