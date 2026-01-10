package com.google.android.material.textfield;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import androidx.appcompat.widget.p2;
import androidx.appcompat.widget.r2;
import com.p2elite.brtv2.R;
import java.util.LinkedHashSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends n {

    /* renamed from: e, reason: collision with root package name */
    public final p2 f5313e;
    public final r2 f;

    /* renamed from: g, reason: collision with root package name */
    public final a f5314g;

    /* renamed from: h, reason: collision with root package name */
    public final b f5315h;

    /* renamed from: i, reason: collision with root package name */
    public AnimatorSet f5316i;

    /* renamed from: j, reason: collision with root package name */
    public ValueAnimator f5317j;

    public e(TextInputLayout textInputLayout, int i6) {
        super(textInputLayout, i6);
        this.f5313e = new p2(1, this);
        this.f = new r2(1, this);
        this.f5314g = new a(this, 0);
        this.f5315h = new b(this, 0);
    }

    public static boolean d(e eVar) {
        EditText editText = eVar.f5343a.getEditText();
        return editText != null && (editText.hasFocus() || eVar.f5345c.hasFocus()) && editText.getText().length() > 0;
    }

    @Override // com.google.android.material.textfield.n
    public final void a() {
        int i6 = 1;
        int i10 = 0;
        int i11 = this.d;
        if (i11 == 0) {
            i11 = R.drawable.mtrl_ic_cancel;
        }
        TextInputLayout textInputLayout = this.f5343a;
        textInputLayout.setEndIconDrawable(i11);
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.clear_text_end_icon_content_description));
        textInputLayout.setEndIconCheckable(false);
        textInputLayout.setEndIconOnClickListener(new androidx.appcompat.app.a(6, this));
        LinkedHashSet linkedHashSet = textInputLayout.f5259c0;
        a aVar = this.f5314g;
        linkedHashSet.add(aVar);
        if (textInputLayout.f5261e != null) {
            aVar.a(textInputLayout);
        }
        textInputLayout.f5265g0.add(this.f5315h);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(y5.a.d);
        valueAnimatorOfFloat.setDuration(150L);
        valueAnimatorOfFloat.addUpdateListener(new d(this, 1));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        LinearInterpolator linearInterpolator = y5.a.f11406a;
        valueAnimatorOfFloat2.setInterpolator(linearInterpolator);
        valueAnimatorOfFloat2.setDuration(100L);
        valueAnimatorOfFloat2.addUpdateListener(new d(this, 0));
        AnimatorSet animatorSet = new AnimatorSet();
        this.f5316i = animatorSet;
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        this.f5316i.addListener(new c(this, i10));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat3.setInterpolator(linearInterpolator);
        valueAnimatorOfFloat3.setDuration(100L);
        valueAnimatorOfFloat3.addUpdateListener(new d(this, 0));
        this.f5317j = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.addListener(new c(this, i6));
    }

    @Override // com.google.android.material.textfield.n
    public final void c(boolean z7) {
        if (this.f5343a.getSuffixText() == null) {
            return;
        }
        e(z7);
    }

    public final void e(boolean z7) {
        boolean z10 = this.f5343a.g() == z7;
        if (z7 && !this.f5316i.isRunning()) {
            this.f5317j.cancel();
            this.f5316i.start();
            if (z10) {
                this.f5316i.end();
                return;
            }
            return;
        }
        if (z7) {
            return;
        }
        this.f5316i.cancel();
        this.f5317j.start();
        if (z10) {
            this.f5317j.end();
        }
    }
}
