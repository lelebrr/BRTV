package androidx.recyclerview.widget;

import android.database.Observable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l0 extends Observable {
    public final boolean a() {
        return !((Observable) this).mObservers.isEmpty();
    }

    public final void b() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((m0) ((Observable) this).mObservers.get(size)).onChanged();
        }
    }

    public final void c(int i6, int i10) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((m0) ((Observable) this).mObservers.get(size)).onItemRangeMoved(i6, i10, 1);
        }
    }

    public final void d(int i6, int i10, Object obj) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((m0) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i6, i10, obj);
        }
    }

    public final void e(int i6, int i10) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((m0) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i6, i10);
        }
    }

    public final void f(int i6, int i10) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((m0) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i6, i10);
        }
    }

    public final void g() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((m0) ((Observable) this).mObservers.get(size)).onStateRestorationPolicyChanged();
        }
    }
}
