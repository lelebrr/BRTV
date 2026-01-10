package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import com.google.android.material.internal.z;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends z {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ChipTextInputComboView f5406a;

    public a(ChipTextInputComboView chipTextInputComboView) {
        this.f5406a = chipTextInputComboView;
    }

    @Override // com.google.android.material.internal.z, android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        boolean zIsEmpty = TextUtils.isEmpty(editable);
        ChipTextInputComboView chipTextInputComboView = this.f5406a;
        if (zIsEmpty) {
            chipTextInputComboView.f5381a.setText(String.format(chipTextInputComboView.getResources().getConfiguration().locale, "%02d", Integer.valueOf(Integer.parseInt("00"))));
        } else {
            chipTextInputComboView.f5381a.setText(String.format(chipTextInputComboView.getResources().getConfiguration().locale, "%02d", Integer.valueOf(Integer.parseInt(String.valueOf(editable)))));
        }
    }
}
