package com.google.android.material.datepicker;

import com.google.android.material.datepicker.CalendarConstraints;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements g {
    @Override // com.google.android.material.datepicker.g
    public final boolean a(ArrayList arrayList, long j10) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            CalendarConstraints.DateValidator dateValidator = (CalendarConstraints.DateValidator) it.next();
            if (dateValidator != null && dateValidator.d(j10)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.material.datepicker.g
    public final int getId() {
        return 1;
    }
}
