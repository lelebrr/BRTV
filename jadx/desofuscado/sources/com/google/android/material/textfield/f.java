package com.google.android.material.textfield;

import android.graphics.drawable.Drawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends n {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f5318e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ f(TextInputLayout textInputLayout, int i6, int i10) {
        super(textInputLayout, i6);
        this.f5318e = i10;
    }

    @Override // com.google.android.material.textfield.n
    public final void a() {
        switch (this.f5318e) {
            case 0:
                int i6 = this.d;
                TextInputLayout textInputLayout = this.f5343a;
                textInputLayout.setEndIconDrawable(i6);
                textInputLayout.setEndIconOnClickListener(null);
                textInputLayout.setEndIconOnLongClickListener(null);
                break;
            default:
                TextInputLayout textInputLayout2 = this.f5343a;
                textInputLayout2.setEndIconOnClickListener(null);
                textInputLayout2.setEndIconDrawable((Drawable) null);
                textInputLayout2.setEndIconContentDescription((CharSequence) null);
                break;
        }
    }
}
