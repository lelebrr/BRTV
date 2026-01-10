package androidx.leanback.widget;

import android.database.Observable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e0 extends Observable {
    public final void a() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((b0) ((Observable) this).mObservers.get(size)).f1812a.notifyDataSetChanged();
        }
    }

    public final void b(int i6) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((b0) ((Observable) this).mObservers.get(size)).f1812a.notifyItemRangeChanged(i6, 1);
        }
    }

    public final void c(int i6, int i10) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((b0) ((Observable) this).mObservers.get(size)).f1812a.notifyItemRangeInserted(i6, i10);
        }
    }

    public final void d(int i6, int i10) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((b0) ((Observable) this).mObservers.get(size)).f1812a.notifyItemRangeRemoved(i6, i10);
        }
    }
}
