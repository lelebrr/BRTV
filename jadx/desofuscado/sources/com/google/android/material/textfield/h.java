package com.google.android.material.textfield;

import android.widget.AutoCompleteTextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements AutoCompleteTextView.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f5320a;

    public h(m mVar) {
        this.f5320a = mVar;
    }

    @Override // android.widget.AutoCompleteTextView.OnDismissListener
    public final void onDismiss() {
        m mVar = this.f5320a;
        mVar.f5335l = true;
        mVar.f5337n = System.currentTimeMillis();
        mVar.i(false);
    }
}
