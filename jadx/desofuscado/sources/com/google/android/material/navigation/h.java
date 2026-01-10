package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.MenuItem;
import androidx.transition.AutoTransition;
import com.google.android.material.badge.BadgeState$State;
import com.google.android.material.internal.ParcelableSparseArray;
import k.e0;
import k.y;
import y1.b0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements y {

    /* renamed from: a, reason: collision with root package name */
    public f f5153a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5154b;

    /* renamed from: c, reason: collision with root package name */
    public int f5155c;

    @Override // k.y
    public final boolean d(k.n nVar) {
        return false;
    }

    @Override // k.y
    public final boolean e(e0 e0Var) {
        return false;
    }

    @Override // k.y
    public final boolean f(k.n nVar) {
        return false;
    }

    @Override // k.y
    public final void g(Parcelable parcelable) {
        SparseArray sparseArray;
        if (parcelable instanceof NavigationBarPresenter$SavedState) {
            f fVar = this.f5153a;
            NavigationBarPresenter$SavedState navigationBarPresenter$SavedState = (NavigationBarPresenter$SavedState) parcelable;
            int i6 = navigationBarPresenter$SavedState.f5085a;
            int size = fVar.B.f.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    break;
                }
                MenuItem item = fVar.B.getItem(i10);
                if (i6 == item.getItemId()) {
                    fVar.f5133g = i6;
                    fVar.f5134h = i10;
                    item.setChecked(true);
                    break;
                }
                i10++;
            }
            Context context = this.f5153a.getContext();
            ParcelableSparseArray parcelableSparseArray = navigationBarPresenter$SavedState.f5086b;
            SparseArray sparseArray2 = new SparseArray(parcelableSparseArray.size());
            for (int i11 = 0; i11 < parcelableSparseArray.size(); i11++) {
                int iKeyAt = parcelableSparseArray.keyAt(i11);
                BadgeState$State badgeState$State = (BadgeState$State) parcelableSparseArray.valueAt(i11);
                if (badgeState$State == null) {
                    throw new IllegalArgumentException("BadgeDrawable's savedState cannot be null");
                }
                sparseArray2.put(iKeyAt, new z5.a(context, badgeState$State));
            }
            f fVar2 = this.f5153a;
            fVar2.getClass();
            int i12 = 0;
            while (true) {
                int size2 = sparseArray2.size();
                sparseArray = fVar2.f5143q;
                if (i12 >= size2) {
                    break;
                }
                int iKeyAt2 = sparseArray2.keyAt(i12);
                if (sparseArray.indexOfKey(iKeyAt2) < 0) {
                    sparseArray.append(iKeyAt2, sparseArray2.get(iKeyAt2));
                }
                i12++;
            }
            d[] dVarArr = fVar2.f;
            if (dVarArr != null) {
                for (d dVar : dVarArr) {
                    dVar.setBadge((z5.a) sparseArray.get(dVar.getId()));
                }
            }
        }
    }

    @Override // k.y
    public final int getId() {
        return this.f5155c;
    }

    @Override // k.y
    public final void j(boolean z7) throws Resources.NotFoundException {
        AutoTransition autoTransition;
        if (this.f5154b) {
            return;
        }
        if (z7) {
            this.f5153a.a();
            return;
        }
        f fVar = this.f5153a;
        k.l lVar = fVar.B;
        if (lVar == null || fVar.f == null) {
            return;
        }
        int size = lVar.f.size();
        if (size != fVar.f.length) {
            fVar.a();
            return;
        }
        int i6 = fVar.f5133g;
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = fVar.B.getItem(i10);
            if (item.isChecked()) {
                fVar.f5133g = item.getItemId();
                fVar.f5134h = i10;
            }
        }
        if (i6 != fVar.f5133g && (autoTransition = fVar.f5129a) != null) {
            b0.a(fVar, autoTransition);
        }
        boolean zF = f.f(fVar.f5132e, fVar.B.l().size());
        for (int i11 = 0; i11 < size; i11++) {
            fVar.A.f5154b = true;
            fVar.f[i11].setLabelVisibilityMode(fVar.f5132e);
            fVar.f[i11].setShifting(zF);
            fVar.f[i11].c((k.n) fVar.B.getItem(i11));
            fVar.A.f5154b = false;
        }
    }

    @Override // k.y
    public final void k(Context context, k.l lVar) {
        this.f5153a.B = lVar;
    }

    @Override // k.y
    public final boolean l() {
        return false;
    }

    @Override // k.y
    public final Parcelable m() {
        NavigationBarPresenter$SavedState navigationBarPresenter$SavedState = new NavigationBarPresenter$SavedState();
        navigationBarPresenter$SavedState.f5085a = this.f5153a.getSelectedItemId();
        SparseArray<z5.a> badgeDrawables = this.f5153a.getBadgeDrawables();
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i6 = 0; i6 < badgeDrawables.size(); i6++) {
            int iKeyAt = badgeDrawables.keyAt(i6);
            z5.a aVarValueAt = badgeDrawables.valueAt(i6);
            if (aVarValueAt == null) {
                throw new IllegalArgumentException("badgeDrawable cannot be null");
            }
            parcelableSparseArray.put(iKeyAt, aVarValueAt.f11657e.f11665a);
        }
        navigationBarPresenter$SavedState.f5086b = parcelableSparseArray;
        return navigationBarPresenter$SavedState;
    }

    @Override // k.y
    public final void b(k.l lVar, boolean z7) {
    }
}
