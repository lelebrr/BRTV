package androidx.recyclerview.widget;

import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b {
    public final i0 d;

    /* renamed from: a, reason: collision with root package name */
    public final m0.c f2801a = new m0.c(30);

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f2802b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f2803c = new ArrayList();
    public int f = 0;

    /* renamed from: e, reason: collision with root package name */
    public final i0 f2804e = new i0(this);

    public b(i0 i0Var) {
        this.d = i0Var;
    }

    public final boolean a(int i6) {
        ArrayList arrayList = this.f2803c;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            a aVar = (a) arrayList.get(i10);
            int i11 = aVar.f2798a;
            if (i11 == 8) {
                if (f(aVar.d, i10 + 1) == i6) {
                    return true;
                }
            } else if (i11 == 1) {
                int i12 = aVar.f2799b;
                int i13 = aVar.d + i12;
                while (i12 < i13) {
                    if (f(i12, i10 + 1) == i6) {
                        return true;
                    }
                    i12++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public final void b() {
        ArrayList arrayList = this.f2803c;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            this.d.a((a) arrayList.get(i6));
        }
        k(arrayList);
        this.f = 0;
    }

    public final void c() {
        b();
        ArrayList arrayList = this.f2802b;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            a aVar = (a) arrayList.get(i6);
            int i10 = aVar.f2798a;
            i0 i0Var = this.d;
            if (i10 == 1) {
                i0Var.a(aVar);
                int i11 = aVar.f2799b;
                int i12 = aVar.d;
                RecyclerView recyclerView = (RecyclerView) i0Var.f2858a;
                recyclerView.offsetPositionRecordsForInsert(i11, i12);
                recyclerView.mItemsAddedOrRemoved = true;
            } else if (i10 == 2) {
                i0Var.a(aVar);
                int i13 = aVar.f2799b;
                int i14 = aVar.d;
                RecyclerView recyclerView2 = (RecyclerView) i0Var.f2858a;
                recyclerView2.offsetPositionRecordsForRemove(i13, i14, true);
                recyclerView2.mItemsAddedOrRemoved = true;
                recyclerView2.mState.f2888c += i14;
            } else if (i10 == 4) {
                i0Var.a(aVar);
                int i15 = aVar.f2799b;
                int i16 = aVar.d;
                Object obj = aVar.f2800c;
                RecyclerView recyclerView3 = (RecyclerView) i0Var.f2858a;
                recyclerView3.viewRangeUpdate(i15, i16, obj);
                recyclerView3.mItemsChanged = true;
            } else if (i10 == 8) {
                i0Var.a(aVar);
                int i17 = aVar.f2799b;
                int i18 = aVar.d;
                RecyclerView recyclerView4 = (RecyclerView) i0Var.f2858a;
                recyclerView4.offsetPositionRecordsForMove(i17, i18);
                recyclerView4.mItemsAddedOrRemoved = true;
            }
        }
        k(arrayList);
        this.f = 0;
    }

    public final void d(a aVar) {
        int i6;
        int i10 = aVar.f2798a;
        if (i10 == 1 || i10 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iL = l(aVar.f2799b, i10);
        int i11 = aVar.f2799b;
        int i12 = aVar.f2798a;
        if (i12 == 2) {
            i6 = 0;
        } else {
            if (i12 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + aVar);
            }
            i6 = 1;
        }
        int i13 = 1;
        for (int i14 = 1; i14 < aVar.d; i14++) {
            int iL2 = l((i6 * i14) + aVar.f2799b, aVar.f2798a);
            int i15 = aVar.f2798a;
            if (i15 == 2 ? iL2 != iL : !(i15 == 4 && iL2 == iL + 1)) {
                a aVarH = h(i15, iL, i13, aVar.f2800c);
                e(aVarH, i11);
                aVarH.f2800c = null;
                this.f2801a.c(aVarH);
                if (aVar.f2798a == 4) {
                    i11 += i13;
                }
                iL = iL2;
                i13 = 1;
            } else {
                i13++;
            }
        }
        Object obj = aVar.f2800c;
        aVar.f2800c = null;
        this.f2801a.c(aVar);
        if (i13 > 0) {
            a aVarH2 = h(aVar.f2798a, iL, i13, obj);
            e(aVarH2, i11);
            aVarH2.f2800c = null;
            this.f2801a.c(aVarH2);
        }
    }

    public final void e(a aVar, int i6) {
        i0 i0Var = this.d;
        i0Var.a(aVar);
        int i10 = aVar.f2798a;
        RecyclerView recyclerView = (RecyclerView) i0Var.f2858a;
        if (i10 != 2) {
            if (i10 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            recyclerView.viewRangeUpdate(i6, aVar.d, aVar.f2800c);
            recyclerView.mItemsChanged = true;
            return;
        }
        int i11 = aVar.d;
        recyclerView.offsetPositionRecordsForRemove(i6, i11, true);
        recyclerView.mItemsAddedOrRemoved = true;
        recyclerView.mState.f2888c += i11;
    }

    public final int f(int i6, int i10) {
        ArrayList arrayList = this.f2803c;
        int size = arrayList.size();
        while (i10 < size) {
            a aVar = (a) arrayList.get(i10);
            int i11 = aVar.f2798a;
            if (i11 == 8) {
                int i12 = aVar.f2799b;
                if (i12 == i6) {
                    i6 = aVar.d;
                } else {
                    if (i12 < i6) {
                        i6--;
                    }
                    if (aVar.d <= i6) {
                        i6++;
                    }
                }
            } else {
                int i13 = aVar.f2799b;
                if (i13 > i6) {
                    continue;
                } else if (i11 == 2) {
                    int i14 = aVar.d;
                    if (i6 < i13 + i14) {
                        return -1;
                    }
                    i6 -= i14;
                } else if (i11 == 1) {
                    i6 += aVar.d;
                }
            }
            i10++;
        }
        return i6;
    }

    public final boolean g() {
        return this.f2802b.size() > 0;
    }

    public final a h(int i6, int i10, int i11, Object obj) {
        a aVar = (a) this.f2801a.a();
        if (aVar != null) {
            aVar.f2798a = i6;
            aVar.f2799b = i10;
            aVar.d = i11;
            aVar.f2800c = obj;
            return aVar;
        }
        a aVar2 = new a();
        aVar2.f2798a = i6;
        aVar2.f2799b = i10;
        aVar2.d = i11;
        aVar2.f2800c = obj;
        return aVar2;
    }

    public final void i(a aVar) {
        this.f2803c.add(aVar);
        int i6 = aVar.f2798a;
        i0 i0Var = this.d;
        if (i6 == 1) {
            int i10 = aVar.f2799b;
            int i11 = aVar.d;
            RecyclerView recyclerView = (RecyclerView) i0Var.f2858a;
            recyclerView.offsetPositionRecordsForInsert(i10, i11);
            recyclerView.mItemsAddedOrRemoved = true;
            return;
        }
        if (i6 == 2) {
            int i12 = aVar.f2799b;
            int i13 = aVar.d;
            RecyclerView recyclerView2 = (RecyclerView) i0Var.f2858a;
            recyclerView2.offsetPositionRecordsForRemove(i12, i13, false);
            recyclerView2.mItemsAddedOrRemoved = true;
            return;
        }
        if (i6 == 4) {
            int i14 = aVar.f2799b;
            int i15 = aVar.d;
            Object obj = aVar.f2800c;
            RecyclerView recyclerView3 = (RecyclerView) i0Var.f2858a;
            recyclerView3.viewRangeUpdate(i14, i15, obj);
            recyclerView3.mItemsChanged = true;
            return;
        }
        if (i6 != 8) {
            throw new IllegalArgumentException("Unknown update op type for " + aVar);
        }
        int i16 = aVar.f2799b;
        int i17 = aVar.d;
        RecyclerView recyclerView4 = (RecyclerView) i0Var.f2858a;
        recyclerView4.offsetPositionRecordsForMove(i16, i17);
        recyclerView4.mItemsAddedOrRemoved = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:185:0x00a4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x012b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0119 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void j() {
        /*
            Method dump skipped, instructions count: 675
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.b.j():void");
    }

    public final void k(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            a aVar = (a) arrayList.get(i6);
            aVar.f2800c = null;
            this.f2801a.c(aVar);
        }
        arrayList.clear();
    }

    public final int l(int i6, int i10) {
        int i11;
        int i12;
        ArrayList arrayList = this.f2803c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            a aVar = (a) arrayList.get(size);
            int i13 = aVar.f2798a;
            if (i13 == 8) {
                int i14 = aVar.f2799b;
                int i15 = aVar.d;
                if (i14 < i15) {
                    i12 = i14;
                    i11 = i15;
                } else {
                    i11 = i14;
                    i12 = i15;
                }
                if (i6 < i12 || i6 > i11) {
                    if (i6 < i14) {
                        if (i10 == 1) {
                            aVar.f2799b = i14 + 1;
                            aVar.d = i15 + 1;
                        } else if (i10 == 2) {
                            aVar.f2799b = i14 - 1;
                            aVar.d = i15 - 1;
                        }
                    }
                } else if (i12 == i14) {
                    if (i10 == 1) {
                        aVar.d = i15 + 1;
                    } else if (i10 == 2) {
                        aVar.d = i15 - 1;
                    }
                    i6++;
                } else {
                    if (i10 == 1) {
                        aVar.f2799b = i14 + 1;
                    } else if (i10 == 2) {
                        aVar.f2799b = i14 - 1;
                    }
                    i6--;
                }
            } else {
                int i16 = aVar.f2799b;
                if (i16 <= i6) {
                    if (i13 == 1) {
                        i6 -= aVar.d;
                    } else if (i13 == 2) {
                        i6 += aVar.d;
                    }
                } else if (i10 == 1) {
                    aVar.f2799b = i16 + 1;
                } else if (i10 == 2) {
                    aVar.f2799b = i16 - 1;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            a aVar2 = (a) arrayList.get(size2);
            if (aVar2.f2798a == 8) {
                int i17 = aVar2.d;
                if (i17 == aVar2.f2799b || i17 < 0) {
                    arrayList.remove(size2);
                    aVar2.f2800c = null;
                    this.f2801a.c(aVar2);
                }
            } else if (aVar2.d <= 0) {
                arrayList.remove(size2);
                aVar2.f2800c = null;
                this.f2801a.c(aVar2);
            }
        }
        return i6;
    }
}
