package t3;

import android.util.SparseIntArray;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a extends c {
    public SparseIntArray d;

    public final void c(int i6, int i10) {
        if (this.d == null) {
            this.d = new SparseIntArray();
        }
        this.d.put(i6, i10);
    }
}
