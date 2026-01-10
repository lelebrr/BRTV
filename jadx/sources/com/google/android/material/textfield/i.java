package com.google.android.material.textfield;

import android.text.Editable;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import com.google.android.material.internal.z;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i extends z {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5321a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n f5322b;

    public /* synthetic */ i(n nVar, int i6) {
        this.f5321a = i6;
        this.f5322b = nVar;
    }

    @Override // com.google.android.material.internal.z, android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        switch (this.f5321a) {
            case 0:
                m mVar = (m) this.f5322b;
                EditText editText = mVar.f5343a.getEditText();
                if (!(editText instanceof AutoCompleteTextView)) {
                    throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
                }
                AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
                if (mVar.f5340q.isTouchExplorationEnabled() && m.h(autoCompleteTextView) && !mVar.f5345c.hasFocus()) {
                    autoCompleteTextView.dismissDropDown();
                }
                autoCompleteTextView.post(new a3.c(this, 6, autoCompleteTextView));
                return;
            default:
                return;
        }
    }

    @Override // com.google.android.material.internal.z, android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i6, int i10, int i11) {
        switch (this.f5321a) {
            case 1:
                ((r) this.f5322b).f5345c.setChecked(!r.d(r1));
                break;
        }
    }
}
