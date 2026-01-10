package androidx.viewpager2.adapter;

import a7.f;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment$SavedState;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.a;
import androidx.fragment.app.g0;
import androidx.fragment.app.j0;
import androidx.fragment.app.p0;
import androidx.fragment.app.s;
import androidx.fragment.app.z;
import androidx.lifecycle.n;
import androidx.lifecycle.o;
import androidx.lifecycle.p;
import androidx.lifecycle.u;
import androidx.lifecycle.w;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.k0;
import androidx.recyclerview.widget.m0;
import androidx.viewpager2.widget.ViewPager2;
import ea.q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import n0.s0;
import p.i;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class FragmentStateAdapter extends k0 implements StatefulAdapter {
    private static final long GRACE_WINDOW_TIME_MS = 10000;
    private static final String KEY_PREFIX_FRAGMENT = "f#";
    private static final String KEY_PREFIX_STATE = "s#";
    FragmentEventDispatcher mFragmentEventDispatcher;
    final j0 mFragmentManager;
    private FragmentMaxLifecycleEnforcer mFragmentMaxLifecycleEnforcer;
    final i mFragments;
    private boolean mHasStaleFragments;
    boolean mIsInGracePeriod;
    private final i mItemIdToViewHolder;
    final p mLifecycle;
    private final i mSavedStates;

    /* compiled from: MyApplication */
    public static abstract class DataSetChangeObserver extends m0 {
        @Override // androidx.recyclerview.widget.m0
        public abstract void onChanged();

        @Override // androidx.recyclerview.widget.m0
        public final void onItemRangeChanged(int i6, int i10) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.m0
        public final void onItemRangeInserted(int i6, int i10) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.m0
        public final void onItemRangeMoved(int i6, int i10, int i11) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.m0
        public final void onItemRangeRemoved(int i6, int i10) {
            onChanged();
        }

        private DataSetChangeObserver() {
        }

        @Override // androidx.recyclerview.widget.m0
        public final void onItemRangeChanged(int i6, int i10, Object obj) {
            onChanged();
        }
    }

    /* compiled from: MyApplication */
    public @interface ExperimentalFragmentStateAdapterApi {
    }

    /* compiled from: MyApplication */
    public static class FragmentEventDispatcher {
        private List<FragmentTransactionCallback> mCallbacks = new CopyOnWriteArrayList();

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchMaxLifecyclePreUpdated(s sVar, o oVar) {
            ArrayList arrayList = new ArrayList();
            Iterator<FragmentTransactionCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().onFragmentMaxLifecyclePreUpdated(sVar, oVar));
            }
            return arrayList;
        }

        public void dispatchPostEvents(List<FragmentTransactionCallback.OnPostEventListener> list) {
            Iterator<FragmentTransactionCallback.OnPostEventListener> it = list.iterator();
            while (it.hasNext()) {
                it.next().onPost();
            }
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchPreAdded(s sVar) {
            ArrayList arrayList = new ArrayList();
            Iterator<FragmentTransactionCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().onFragmentPreAdded(sVar));
            }
            return arrayList;
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchPreRemoved(s sVar) {
            ArrayList arrayList = new ArrayList();
            Iterator<FragmentTransactionCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().onFragmentPreRemoved(sVar));
            }
            return arrayList;
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchPreSavedInstanceState(s sVar) {
            ArrayList arrayList = new ArrayList();
            Iterator<FragmentTransactionCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().onFragmentPreSavedInstanceState(sVar));
            }
            return arrayList;
        }

        public void registerCallback(FragmentTransactionCallback fragmentTransactionCallback) {
            this.mCallbacks.add(fragmentTransactionCallback);
        }

        public void unregisterCallback(FragmentTransactionCallback fragmentTransactionCallback) {
            this.mCallbacks.remove(fragmentTransactionCallback);
        }
    }

    /* compiled from: MyApplication */
    public class FragmentMaxLifecycleEnforcer {
        private m0 mDataObserver;
        private u mLifecycleObserver;
        private ViewPager2.OnPageChangeCallback mPageChangeCallback;
        private long mPrimaryItemId = -1;
        private ViewPager2 mViewPager;

        public FragmentMaxLifecycleEnforcer() {
        }

        private ViewPager2 inferViewPager(RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof ViewPager2) {
                return (ViewPager2) parent;
            }
            throw new IllegalStateException("Expected ViewPager2 instance. Got: " + parent);
        }

        public void register(RecyclerView recyclerView) {
            this.mViewPager = inferViewPager(recyclerView);
            ViewPager2.OnPageChangeCallback onPageChangeCallback = new ViewPager2.OnPageChangeCallback() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.1
                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageScrollStateChanged(int i6) {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(false);
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageSelected(int i6) {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(false);
                }
            };
            this.mPageChangeCallback = onPageChangeCallback;
            this.mViewPager.registerOnPageChangeCallback(onPageChangeCallback);
            DataSetChangeObserver dataSetChangeObserver = new DataSetChangeObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.2
                @Override // androidx.viewpager2.adapter.FragmentStateAdapter.DataSetChangeObserver, androidx.recyclerview.widget.m0
                public void onChanged() {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(true);
                }
            };
            this.mDataObserver = dataSetChangeObserver;
            FragmentStateAdapter.this.registerAdapterDataObserver(dataSetChangeObserver);
            u uVar = new u() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.3
                @Override // androidx.lifecycle.u
                public void onStateChanged(w wVar, n nVar) {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(false);
                }
            };
            this.mLifecycleObserver = uVar;
            FragmentStateAdapter.this.mLifecycle.a(uVar);
        }

        public void unregister(RecyclerView recyclerView) {
            inferViewPager(recyclerView).unregisterOnPageChangeCallback(this.mPageChangeCallback);
            FragmentStateAdapter.this.unregisterAdapterDataObserver(this.mDataObserver);
            FragmentStateAdapter.this.mLifecycle.c(this.mLifecycleObserver);
            this.mViewPager = null;
        }

        public void updateFragmentMaxLifecycle(boolean z7) {
            int currentItem;
            s sVar;
            if (FragmentStateAdapter.this.shouldDelayFragmentTransactions() || this.mViewPager.getScrollState() != 0 || FragmentStateAdapter.this.mFragments.j() == 0 || FragmentStateAdapter.this.getItemCount() == 0 || (currentItem = this.mViewPager.getCurrentItem()) >= FragmentStateAdapter.this.getItemCount()) {
                return;
            }
            long itemId = FragmentStateAdapter.this.getItemId(currentItem);
            if ((itemId != this.mPrimaryItemId || z7) && (sVar = (s) FragmentStateAdapter.this.mFragments.d(itemId)) != null && sVar.o()) {
                this.mPrimaryItemId = itemId;
                j0 j0Var = FragmentStateAdapter.this.mFragmentManager;
                j0Var.getClass();
                a aVar = new a(j0Var);
                ArrayList arrayList = new ArrayList();
                s sVar2 = null;
                for (int i6 = 0; i6 < FragmentStateAdapter.this.mFragments.j(); i6++) {
                    long jG = FragmentStateAdapter.this.mFragments.g(i6);
                    s sVar3 = (s) FragmentStateAdapter.this.mFragments.k(i6);
                    if (sVar3.o()) {
                        if (jG != this.mPrimaryItemId) {
                            o oVar = o.d;
                            aVar.j(sVar3, oVar);
                            arrayList.add(FragmentStateAdapter.this.mFragmentEventDispatcher.dispatchMaxLifecyclePreUpdated(sVar3, oVar));
                        } else {
                            sVar2 = sVar3;
                        }
                        boolean z10 = jG == this.mPrimaryItemId;
                        if (sVar3.C != z10) {
                            sVar3.C = z10;
                        }
                    }
                }
                if (sVar2 != null) {
                    o oVar2 = o.f1983e;
                    aVar.j(sVar2, oVar2);
                    arrayList.add(FragmentStateAdapter.this.mFragmentEventDispatcher.dispatchMaxLifecyclePreUpdated(sVar2, oVar2));
                }
                if (aVar.f1410a.isEmpty()) {
                    return;
                }
                if (aVar.f1414g) {
                    throw new IllegalStateException("This transaction is already being added to the back stack");
                }
                aVar.f1415h = false;
                aVar.f1424q.v(aVar, false);
                Collections.reverse(arrayList);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    FragmentStateAdapter.this.mFragmentEventDispatcher.dispatchPostEvents((List) it.next());
                }
            }
        }
    }

    /* compiled from: MyApplication */
    public static abstract class FragmentTransactionCallback {
        private static final OnPostEventListener NO_OP = new OnPostEventListener() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentTransactionCallback.1
            @Override // androidx.viewpager2.adapter.FragmentStateAdapter.FragmentTransactionCallback.OnPostEventListener
            public void onPost() {
            }
        };

        /* compiled from: MyApplication */
        public interface OnPostEventListener {
            void onPost();
        }

        public OnPostEventListener onFragmentMaxLifecyclePreUpdated(s sVar, o oVar) {
            return NO_OP;
        }

        public OnPostEventListener onFragmentPreAdded(s sVar) {
            return NO_OP;
        }

        public OnPostEventListener onFragmentPreRemoved(s sVar) {
            return NO_OP;
        }

        @ExperimentalFragmentStateAdapterApi
        public OnPostEventListener onFragmentPreSavedInstanceState(s sVar) {
            return NO_OP;
        }
    }

    public FragmentStateAdapter(FragmentActivity fragmentActivity) {
        this(fragmentActivity.k(), fragmentActivity.d);
    }

    private static String createKey(String str, long j10) {
        return str + j10;
    }

    private void ensureFragment(int i6) {
        Bundle bundle;
        long itemId = getItemId(i6);
        if (this.mFragments.f(itemId) >= 0) {
            return;
        }
        s sVarCreateFragment = createFragment(i6);
        Fragment$SavedState fragment$SavedState = (Fragment$SavedState) this.mSavedStates.d(itemId);
        if (sVarCreateFragment.f1536s != null) {
            throw new IllegalStateException("Fragment already added");
        }
        if (fragment$SavedState == null || (bundle = fragment$SavedState.f1378a) == null) {
            bundle = null;
        }
        sVarCreateFragment.f1521b = bundle;
        this.mFragments.h(itemId, sVarCreateFragment);
    }

    private boolean isFragmentViewBound(long j10) {
        View view;
        if (this.mItemIdToViewHolder.f(j10) >= 0) {
            return true;
        }
        s sVar = (s) this.mFragments.d(j10);
        return (sVar == null || (view = sVar.F) == null || view.getParent() == null) ? false : true;
    }

    private static boolean isValidKey(String str, String str2) {
        return str.startsWith(str2) && str.length() > str2.length();
    }

    private Long itemForViewHolder(int i6) {
        Long lValueOf = null;
        for (int i10 = 0; i10 < this.mItemIdToViewHolder.j(); i10++) {
            if (((Integer) this.mItemIdToViewHolder.k(i10)).intValue() == i6) {
                if (lValueOf != null) {
                    throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                }
                lValueOf = Long.valueOf(this.mItemIdToViewHolder.g(i10));
            }
        }
        return lValueOf;
    }

    private static long parseIdFromKey(String str, String str2) {
        return Long.parseLong(str.substring(str2.length()));
    }

    private void removeFragment(long j10) {
        Bundle bundleO;
        ViewParent parent;
        s sVar = (s) this.mFragments.d(j10);
        if (sVar == null) {
            return;
        }
        View view = sVar.F;
        if (view != null && (parent = view.getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        if (!containsItem(j10)) {
            this.mSavedStates.i(j10);
        }
        if (!sVar.o()) {
            this.mFragments.i(j10);
            return;
        }
        if (shouldDelayFragmentTransactions()) {
            this.mHasStaleFragments = true;
            return;
        }
        if (sVar.o() && containsItem(j10)) {
            List<FragmentTransactionCallback.OnPostEventListener> listDispatchPreSavedInstanceState = this.mFragmentEventDispatcher.dispatchPreSavedInstanceState(sVar);
            j0 j0Var = this.mFragmentManager;
            j0Var.getClass();
            p0 p0Var = (p0) ((HashMap) j0Var.f1459c.f48c).get(sVar.f);
            Fragment$SavedState fragment$SavedState = null;
            if (p0Var != null) {
                s sVar2 = p0Var.f1511c;
                if (sVar2.equals(sVar)) {
                    if (sVar2.f1520a > -1 && (bundleO = p0Var.o()) != null) {
                        fragment$SavedState = new Fragment$SavedState(bundleO);
                    }
                    this.mFragmentEventDispatcher.dispatchPostEvents(listDispatchPreSavedInstanceState);
                    this.mSavedStates.h(j10, fragment$SavedState);
                }
            }
            j0Var.Y(new IllegalStateException("Fragment " + sVar + " is not currently in the FragmentManager"));
            throw null;
        }
        List<FragmentTransactionCallback.OnPostEventListener> listDispatchPreRemoved = this.mFragmentEventDispatcher.dispatchPreRemoved(sVar);
        try {
            j0 j0Var2 = this.mFragmentManager;
            j0Var2.getClass();
            a aVar = new a(j0Var2);
            aVar.h(sVar);
            if (aVar.f1414g) {
                throw new IllegalStateException("This transaction is already being added to the back stack");
            }
            aVar.f1415h = false;
            aVar.f1424q.v(aVar, false);
            this.mFragments.i(j10);
        } finally {
            this.mFragmentEventDispatcher.dispatchPostEvents(listDispatchPreRemoved);
        }
    }

    private void scheduleGracePeriodEnd() {
        final Handler handler = new Handler(Looper.getMainLooper());
        final Runnable runnable = new Runnable() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                FragmentStateAdapter fragmentStateAdapter = FragmentStateAdapter.this;
                fragmentStateAdapter.mIsInGracePeriod = false;
                fragmentStateAdapter.gcFragments();
            }
        };
        this.mLifecycle.a(new u() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.4
            @Override // androidx.lifecycle.u
            public void onStateChanged(w wVar, n nVar) {
                if (nVar == n.ON_DESTROY) {
                    handler.removeCallbacks(runnable);
                    wVar.f().c(this);
                }
            }
        });
        handler.postDelayed(runnable, 10000L);
    }

    private void scheduleViewAttach(final s sVar, final FrameLayout frameLayout) {
        ((CopyOnWriteArrayList) this.mFragmentManager.f1465k.f169b).add(new z(new g0() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.2
            @Override // androidx.fragment.app.g0
            public void onFragmentViewCreated(j0 j0Var, s sVar2, View view, Bundle bundle) {
                if (sVar2 == sVar) {
                    f fVar = j0Var.f1465k;
                    synchronized (((CopyOnWriteArrayList) fVar.f169b)) {
                        try {
                            int size = ((CopyOnWriteArrayList) fVar.f169b).size();
                            int i6 = 0;
                            while (true) {
                                if (i6 >= size) {
                                    break;
                                }
                                if (((z) ((CopyOnWriteArrayList) fVar.f169b).get(i6)).f1572a == this) {
                                    ((CopyOnWriteArrayList) fVar.f169b).remove(i6);
                                    break;
                                }
                                i6++;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    FragmentStateAdapter.this.addViewToContainer(view, frameLayout);
                }
            }
        }, false));
    }

    public void addViewToContainer(View view, FrameLayout frameLayout) {
        if (frameLayout.getChildCount() > 1) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (view.getParent() == frameLayout) {
            return;
        }
        if (frameLayout.getChildCount() > 0) {
            frameLayout.removeAllViews();
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        frameLayout.addView(view);
    }

    public boolean containsItem(long j10) {
        return j10 >= 0 && j10 < ((long) getItemCount());
    }

    public abstract s createFragment(int i6);

    public void gcFragments() {
        if (!this.mHasStaleFragments || shouldDelayFragmentTransactions()) {
            return;
        }
        p.f fVar = new p.f(0);
        for (int i6 = 0; i6 < this.mFragments.j(); i6++) {
            long jG = this.mFragments.g(i6);
            if (!containsItem(jG)) {
                fVar.add(Long.valueOf(jG));
                this.mItemIdToViewHolder.i(jG);
            }
        }
        if (!this.mIsInGracePeriod) {
            this.mHasStaleFragments = false;
            for (int i10 = 0; i10 < this.mFragments.j(); i10++) {
                long jG2 = this.mFragments.g(i10);
                if (!isFragmentViewBound(jG2)) {
                    fVar.add(Long.valueOf(jG2));
                }
            }
        }
        p.a aVar = new p.a(fVar);
        while (aVar.hasNext()) {
            removeFragment(((Long) aVar.next()).longValue());
        }
    }

    @Override // androidx.recyclerview.widget.k0
    public long getItemId(int i6) {
        return i6;
    }

    @Override // androidx.recyclerview.widget.k0
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        if (this.mFragmentMaxLifecycleEnforcer != null) {
            throw new IllegalArgumentException();
        }
        FragmentMaxLifecycleEnforcer fragmentMaxLifecycleEnforcer = new FragmentMaxLifecycleEnforcer();
        this.mFragmentMaxLifecycleEnforcer = fragmentMaxLifecycleEnforcer;
        fragmentMaxLifecycleEnforcer.register(recyclerView);
    }

    @Override // androidx.recyclerview.widget.k0
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.mFragmentMaxLifecycleEnforcer.unregister(recyclerView);
        this.mFragmentMaxLifecycleEnforcer = null;
    }

    @Override // androidx.recyclerview.widget.k0
    public final boolean onFailedToRecycleView(FragmentViewHolder fragmentViewHolder) {
        return true;
    }

    public void placeFragmentInViewHolder(final FragmentViewHolder fragmentViewHolder) {
        s sVar = (s) this.mFragments.d(fragmentViewHolder.getItemId());
        if (sVar == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        FrameLayout container = fragmentViewHolder.getContainer();
        View view = sVar.F;
        if (!sVar.o() && view != null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (sVar.o() && view == null) {
            scheduleViewAttach(sVar, container);
            return;
        }
        if (sVar.o() && view.getParent() != null) {
            if (view.getParent() != container) {
                addViewToContainer(view, container);
                return;
            }
            return;
        }
        if (sVar.o()) {
            addViewToContainer(view, container);
            return;
        }
        if (shouldDelayFragmentTransactions()) {
            if (this.mFragmentManager.A) {
                return;
            }
            this.mLifecycle.a(new u() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.1
                @Override // androidx.lifecycle.u
                public void onStateChanged(w wVar, n nVar) {
                    if (FragmentStateAdapter.this.shouldDelayFragmentTransactions()) {
                        return;
                    }
                    wVar.f().c(this);
                    FrameLayout container2 = fragmentViewHolder.getContainer();
                    WeakHashMap weakHashMap = s0.f8353a;
                    if (container2.isAttachedToWindow()) {
                        FragmentStateAdapter.this.placeFragmentInViewHolder(fragmentViewHolder);
                    }
                }
            });
            return;
        }
        scheduleViewAttach(sVar, container);
        List<FragmentTransactionCallback.OnPostEventListener> listDispatchPreAdded = this.mFragmentEventDispatcher.dispatchPreAdded(sVar);
        try {
            if (sVar.C) {
                sVar.C = false;
            }
            j0 j0Var = this.mFragmentManager;
            j0Var.getClass();
            a aVar = new a(j0Var);
            aVar.f(0, sVar, "f" + fragmentViewHolder.getItemId(), 1);
            aVar.j(sVar, o.d);
            if (aVar.f1414g) {
                throw new IllegalStateException("This transaction is already being added to the back stack");
            }
            aVar.f1415h = false;
            aVar.f1424q.v(aVar, false);
            this.mFragmentMaxLifecycleEnforcer.updateFragmentMaxLifecycle(false);
        } finally {
            this.mFragmentEventDispatcher.dispatchPostEvents(listDispatchPreAdded);
        }
    }

    public void registerFragmentTransactionCallback(FragmentTransactionCallback fragmentTransactionCallback) {
        this.mFragmentEventDispatcher.registerCallback(fragmentTransactionCallback);
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    public final void restoreState(Parcelable parcelable) {
        if (this.mSavedStates.j() != 0 || this.mFragments.j() != 0) {
            throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
        }
        Bundle bundle = (Bundle) parcelable;
        if (bundle.getClassLoader() == null) {
            bundle.setClassLoader(getClass().getClassLoader());
        }
        for (String str : bundle.keySet()) {
            if (isValidKey(str, KEY_PREFIX_FRAGMENT)) {
                long idFromKey = parseIdFromKey(str, KEY_PREFIX_FRAGMENT);
                j0 j0Var = this.mFragmentManager;
                j0Var.getClass();
                String string = bundle.getString(str);
                s sVar = null;
                if (string != null) {
                    s sVarL = j0Var.f1459c.l(string);
                    if (sVarL == null) {
                        j0Var.Y(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
                        throw null;
                    }
                    sVar = sVarL;
                }
                this.mFragments.h(idFromKey, sVar);
            } else {
                if (!isValidKey(str, KEY_PREFIX_STATE)) {
                    throw new IllegalArgumentException(q.p("Unexpected key in savedState: ", str));
                }
                long idFromKey2 = parseIdFromKey(str, KEY_PREFIX_STATE);
                Fragment$SavedState fragment$SavedState = (Fragment$SavedState) bundle.getParcelable(str);
                if (containsItem(idFromKey2)) {
                    this.mSavedStates.h(idFromKey2, fragment$SavedState);
                }
            }
        }
        if (this.mFragments.j() == 0) {
            return;
        }
        this.mHasStaleFragments = true;
        this.mIsInGracePeriod = true;
        gcFragments();
        scheduleGracePeriodEnd();
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    public final Parcelable saveState() {
        Bundle bundle = new Bundle(this.mSavedStates.j() + this.mFragments.j());
        for (int i6 = 0; i6 < this.mFragments.j(); i6++) {
            long jG = this.mFragments.g(i6);
            s sVar = (s) this.mFragments.d(jG);
            if (sVar != null && sVar.o()) {
                String strCreateKey = createKey(KEY_PREFIX_FRAGMENT, jG);
                j0 j0Var = this.mFragmentManager;
                j0Var.getClass();
                if (sVar.f1536s != j0Var) {
                    j0Var.Y(new IllegalStateException("Fragment " + sVar + " is not currently in the FragmentManager"));
                    throw null;
                }
                bundle.putString(strCreateKey, sVar.f);
            }
        }
        for (int i10 = 0; i10 < this.mSavedStates.j(); i10++) {
            long jG2 = this.mSavedStates.g(i10);
            if (containsItem(jG2)) {
                bundle.putParcelable(createKey(KEY_PREFIX_STATE, jG2), (Parcelable) this.mSavedStates.d(jG2));
            }
        }
        return bundle;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void setHasStableIds(boolean z7) {
        throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
    }

    public boolean shouldDelayFragmentTransactions() {
        return this.mFragmentManager.I();
    }

    public void unregisterFragmentTransactionCallback(FragmentTransactionCallback fragmentTransactionCallback) {
        this.mFragmentEventDispatcher.unregisterCallback(fragmentTransactionCallback);
    }

    public FragmentStateAdapter(s sVar) {
        this(sVar.i(), sVar.M);
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(FragmentViewHolder fragmentViewHolder, int i6) {
        long itemId = fragmentViewHolder.getItemId();
        int id = fragmentViewHolder.getContainer().getId();
        Long lItemForViewHolder = itemForViewHolder(id);
        if (lItemForViewHolder != null && lItemForViewHolder.longValue() != itemId) {
            removeFragment(lItemForViewHolder.longValue());
            this.mItemIdToViewHolder.i(lItemForViewHolder.longValue());
        }
        this.mItemIdToViewHolder.h(itemId, Integer.valueOf(id));
        ensureFragment(i6);
        FrameLayout container = fragmentViewHolder.getContainer();
        WeakHashMap weakHashMap = s0.f8353a;
        if (container.isAttachedToWindow()) {
            placeFragmentInViewHolder(fragmentViewHolder);
        }
        gcFragments();
    }

    @Override // androidx.recyclerview.widget.k0
    public final FragmentViewHolder onCreateViewHolder(ViewGroup viewGroup, int i6) {
        return FragmentViewHolder.create(viewGroup);
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onViewAttachedToWindow(FragmentViewHolder fragmentViewHolder) {
        placeFragmentInViewHolder(fragmentViewHolder);
        gcFragments();
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onViewRecycled(FragmentViewHolder fragmentViewHolder) {
        Long lItemForViewHolder = itemForViewHolder(fragmentViewHolder.getContainer().getId());
        if (lItemForViewHolder != null) {
            removeFragment(lItemForViewHolder.longValue());
            this.mItemIdToViewHolder.i(lItemForViewHolder.longValue());
        }
    }

    public FragmentStateAdapter(j0 j0Var, p pVar) {
        this.mFragments = new i();
        this.mSavedStates = new i();
        this.mItemIdToViewHolder = new i();
        this.mFragmentEventDispatcher = new FragmentEventDispatcher();
        this.mIsInGracePeriod = false;
        this.mHasStaleFragments = false;
        this.mFragmentManager = j0Var;
        this.mLifecycle = pVar;
        super.setHasStableIds(true);
    }
}
