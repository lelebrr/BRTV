package androidx.recyclerview.widget;

import android.os.Trace;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class k0 {
    private final l0 mObservable = new l0();
    private boolean mHasStableIds = false;
    private j0 mStateRestorationPolicy = j0.f2868a;

    public final void bindViewHolder(p1 p1Var, int i6) {
        boolean z7 = p1Var.mBindingAdapter == null;
        if (z7) {
            p1Var.mPosition = i6;
            if (hasStableIds()) {
                p1Var.mItemId = getItemId(i6);
            }
            p1Var.setFlags(1, 519);
            if (j0.n.a()) {
                Trace.beginSection(String.format("RV onBindViewHolder type=0x%X", Integer.valueOf(p1Var.mItemViewType)));
            }
        }
        p1Var.mBindingAdapter = this;
        if (RecyclerView.sDebugAssertionsEnabled) {
            if (p1Var.itemView.getParent() == null && p1Var.itemView.isAttachedToWindow() != p1Var.isTmpDetached()) {
                throw new IllegalStateException("Temp-detached state out of sync with reality. holder.isTmpDetached(): " + p1Var.isTmpDetached() + ", attached to window: " + p1Var.itemView.isAttachedToWindow() + ", holder: " + p1Var);
            }
            if (p1Var.itemView.getParent() == null && p1Var.itemView.isAttachedToWindow()) {
                throw new IllegalStateException("Attempting to bind attached holder with no parent (AKA temp detached): " + p1Var);
            }
        }
        onBindViewHolder(p1Var, i6, p1Var.getUnmodifiedPayloads());
        if (z7) {
            p1Var.clearPayload();
            ViewGroup.LayoutParams layoutParams = p1Var.itemView.getLayoutParams();
            if (layoutParams instanceof RecyclerView.LayoutParams) {
                ((RecyclerView.LayoutParams) layoutParams).f2762c = true;
            }
            Trace.endSection();
        }
    }

    public boolean canRestoreState() {
        int iOrdinal = this.mStateRestorationPolicy.ordinal();
        return iOrdinal != 1 ? iOrdinal != 2 : getItemCount() > 0;
    }

    public final p1 createViewHolder(ViewGroup viewGroup, int i6) {
        try {
            if (j0.n.a()) {
                Trace.beginSection(String.format("RV onCreateViewHolder type=0x%X", Integer.valueOf(i6)));
            }
            p1 p1VarOnCreateViewHolder = onCreateViewHolder(viewGroup, i6);
            if (p1VarOnCreateViewHolder.itemView.getParent() != null) {
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            }
            p1VarOnCreateViewHolder.mItemViewType = i6;
            Trace.endSection();
            return p1VarOnCreateViewHolder;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    public int findRelativeAdapterPositionIn(k0 k0Var, p1 p1Var, int i6) {
        if (k0Var == this) {
            return i6;
        }
        return -1;
    }

    public abstract int getItemCount();

    public long getItemId(int i6) {
        return -1L;
    }

    public int getItemViewType(int i6) {
        return 0;
    }

    public final j0 getStateRestorationPolicy() {
        return this.mStateRestorationPolicy;
    }

    public final boolean hasObservers() {
        return this.mObservable.a();
    }

    public final boolean hasStableIds() {
        return this.mHasStableIds;
    }

    public final void notifyDataSetChanged() {
        this.mObservable.b();
    }

    public final void notifyItemChanged(int i6) {
        this.mObservable.d(i6, 1, null);
    }

    public final void notifyItemInserted(int i6) {
        this.mObservable.e(i6, 1);
    }

    public final void notifyItemMoved(int i6, int i10) {
        this.mObservable.c(i6, i10);
    }

    public final void notifyItemRangeChanged(int i6, int i10) {
        this.mObservable.d(i6, i10, null);
    }

    public final void notifyItemRangeInserted(int i6, int i10) {
        this.mObservable.e(i6, i10);
    }

    public final void notifyItemRangeRemoved(int i6, int i10) {
        this.mObservable.f(i6, i10);
    }

    public final void notifyItemRemoved(int i6) {
        this.mObservable.f(i6, 1);
    }

    public abstract void onBindViewHolder(p1 p1Var, int i6);

    public void onBindViewHolder(p1 p1Var, int i6, List<Object> list) {
        onBindViewHolder(p1Var, i6);
    }

    public abstract p1 onCreateViewHolder(ViewGroup viewGroup, int i6);

    public boolean onFailedToRecycleView(p1 p1Var) {
        return false;
    }

    public void registerAdapterDataObserver(m0 m0Var) {
        this.mObservable.registerObserver(m0Var);
    }

    public void setHasStableIds(boolean z7) {
        if (hasObservers()) {
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }
        this.mHasStableIds = z7;
    }

    public void setStateRestorationPolicy(j0 j0Var) {
        this.mStateRestorationPolicy = j0Var;
        this.mObservable.g();
    }

    public void unregisterAdapterDataObserver(m0 m0Var) {
        this.mObservable.unregisterObserver(m0Var);
    }

    public final void notifyItemChanged(int i6, Object obj) {
        this.mObservable.d(i6, 1, obj);
    }

    public final void notifyItemRangeChanged(int i6, int i10, Object obj) {
        this.mObservable.d(i6, i10, obj);
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
    }

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
    }

    public void onViewAttachedToWindow(p1 p1Var) {
    }

    public void onViewDetachedFromWindow(p1 p1Var) {
    }

    public void onViewRecycled(p1 p1Var) {
    }
}
