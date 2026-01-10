package com.google.android.material.internal;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.chip.ChipGroup;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f4976a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f4977b = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    public e6.e f4978c;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4979e;

    public final boolean a(g gVar) {
        int id = gVar.getId();
        HashSet hashSet = this.f4977b;
        if (hashSet.contains(Integer.valueOf(id))) {
            return false;
        }
        g gVar2 = (g) this.f4976a.get(Integer.valueOf(c()));
        if (gVar2 != null) {
            e(gVar2, false);
        }
        boolean zAdd = hashSet.add(Integer.valueOf(id));
        if (!gVar.isChecked()) {
            gVar.setChecked(true);
        }
        return zAdd;
    }

    public final ArrayList b(ViewGroup viewGroup) {
        HashSet hashSet = new HashSet(this.f4977b);
        ArrayList arrayList = new ArrayList();
        for (int i6 = 0; i6 < viewGroup.getChildCount(); i6++) {
            View childAt = viewGroup.getChildAt(i6);
            if ((childAt instanceof g) && hashSet.contains(Integer.valueOf(childAt.getId()))) {
                arrayList.add(Integer.valueOf(childAt.getId()));
            }
        }
        return arrayList;
    }

    public final int c() {
        if (this.d) {
            HashSet hashSet = this.f4977b;
            if (!hashSet.isEmpty()) {
                return ((Integer) hashSet.iterator().next()).intValue();
            }
        }
        return -1;
    }

    public final void d() {
        e6.e eVar = this.f4978c;
        if (eVar != null) {
            new HashSet(this.f4977b);
            ChipGroup chipGroup = eVar.f6596a;
            e6.g gVar = chipGroup.f4788g;
            if (gVar != null) {
                chipGroup.f4789h.b(chipGroup);
                ChipGroup chipGroup2 = ((e6.e) gVar).f6596a;
                if (chipGroup2.f4789h.d) {
                    chipGroup2.getCheckedChipId();
                    throw null;
                }
            }
        }
    }

    public final boolean e(g gVar, boolean z7) {
        int id = gVar.getId();
        HashSet hashSet = this.f4977b;
        if (!hashSet.contains(Integer.valueOf(id))) {
            return false;
        }
        if (z7 && hashSet.size() == 1 && hashSet.contains(Integer.valueOf(id))) {
            gVar.setChecked(true);
            return false;
        }
        boolean zRemove = hashSet.remove(Integer.valueOf(id));
        if (gVar.isChecked()) {
            gVar.setChecked(false);
        }
        return zRemove;
    }
}
