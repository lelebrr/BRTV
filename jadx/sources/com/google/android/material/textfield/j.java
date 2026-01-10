package com.google.android.material.textfield;

import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j extends u {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ m f5323e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(m mVar, TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f5323e = mVar;
    }

    @Override // com.google.android.material.textfield.u, n0.b
    public final void d(View view, o0.h hVar) {
        super.d(view, hVar);
        if (!m.h(this.f5323e.f5343a.getEditText())) {
            hVar.i(Spinner.class.getName());
        }
        if (Build.VERSION.SDK_INT >= 26 ? hVar.f8541a.isShowingHintText() : hVar.e(4)) {
            hVar.m(null);
        }
    }

    @Override // n0.b
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        super.e(view, accessibilityEvent);
        m mVar = this.f5323e;
        EditText editText = mVar.f5343a.getEditText();
        if (!(editText instanceof AutoCompleteTextView)) {
            throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
        }
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
        if (accessibilityEvent.getEventType() == 1 && mVar.f5340q.isEnabled() && !m.h(mVar.f5343a.getEditText())) {
            m.d(mVar, autoCompleteTextView);
            mVar.f5335l = true;
            mVar.f5337n = System.currentTimeMillis();
        }
    }
}
