package com.google.common.util.concurrent;

import com.google.common.util.concurrent.AggregateFuture;
import d7.d0;
import d7.q1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
abstract class CollectionFuture<V, C> extends AggregateFuture<V, C> {
    private List<Present<V>> values;

    /* compiled from: MyApplication */
    public static final class ListFuture<V> extends CollectionFuture<V, List<V>> {
        public ListFuture(q1 q1Var, boolean z7) {
            super(q1Var, z7);
            init();
        }

        @Override // com.google.common.util.concurrent.CollectionFuture
        public List<V> combine(List<Present<V>> list) {
            ArrayList arrayListT = d0.t(list.size());
            Iterator<Present<V>> it = list.iterator();
            while (it.hasNext()) {
                Present<V> next = it.next();
                arrayListT.add(next != null ? next.value : null);
            }
            return Collections.unmodifiableList(arrayListT);
        }
    }

    /* compiled from: MyApplication */
    public static final class Present<V> {

        @ParametricNullness
        final V value;

        public Present(@ParametricNullness V v10) {
            this.value = v10;
        }
    }

    public CollectionFuture(q1 q1Var, boolean z7) {
        super(q1Var, z7, true);
        List<Present<V>> listEmptyList = q1Var.isEmpty() ? Collections.emptyList() : d0.t(q1Var.size());
        for (int i6 = 0; i6 < q1Var.size(); i6++) {
            listEmptyList.add(null);
        }
        this.values = listEmptyList;
    }

    @Override // com.google.common.util.concurrent.AggregateFuture
    public final void collectOneValue(int i6, @ParametricNullness V v10) {
        List<Present<V>> list = this.values;
        if (list != null) {
            list.set(i6, new Present<>(v10));
        }
    }

    public abstract C combine(List<Present<V>> list);

    @Override // com.google.common.util.concurrent.AggregateFuture
    public final void handleAllCompleted() {
        List<Present<V>> list = this.values;
        if (list != null) {
            set(combine(list));
        }
    }

    @Override // com.google.common.util.concurrent.AggregateFuture
    public void releaseResources(AggregateFuture.ReleaseResourcesReason releaseResourcesReason) {
        super.releaseResources(releaseResourcesReason);
        this.values = null;
    }
}
