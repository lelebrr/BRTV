package com.google.android.material.textfield;

import android.content.res.Resources;
import android.text.method.PasswordTransformationMethod;
import android.widget.EditText;
import com.p2elite.brtv2.R;
import java.util.LinkedHashSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r extends n {

    /* renamed from: e, reason: collision with root package name */
    public final i f5371e;
    public final a f;

    /* renamed from: g, reason: collision with root package name */
    public final b f5372g;

    public r(TextInputLayout textInputLayout, int i6) {
        super(textInputLayout, i6);
        this.f5371e = new i(this, 1);
        this.f = new a(this, 2);
        this.f5372g = new b(this, 2);
    }

    public static boolean d(r rVar) {
        EditText editText = rVar.f5343a.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    @Override // com.google.android.material.textfield.n
    public final void a() throws Resources.NotFoundException {
        int i6 = this.d;
        if (i6 == 0) {
            i6 = R.drawable.design_password_eye;
        }
        TextInputLayout textInputLayout = this.f5343a;
        textInputLayout.setEndIconDrawable(i6);
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.password_toggle_content_description));
        textInputLayout.setEndIconVisible(true);
        textInputLayout.setEndIconCheckable(true);
        textInputLayout.setEndIconOnClickListener(new androidx.appcompat.app.a(8, this));
        LinkedHashSet linkedHashSet = textInputLayout.f5259c0;
        a aVar = this.f;
        linkedHashSet.add(aVar);
        if (textInputLayout.f5261e != null) {
            aVar.a(textInputLayout);
        }
        textInputLayout.f5265g0.add(this.f5372g);
        EditText editText = textInputLayout.getEditText();
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }
}
