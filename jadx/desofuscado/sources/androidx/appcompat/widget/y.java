package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.TextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f894a;

    /* renamed from: b, reason: collision with root package name */
    public final a0.b f895b;

    public y(TextView textView) {
        this.f894a = textView;
        this.f895b = new a0.b(textView);
    }

    public final InputFilter[] a(InputFilter[] inputFilterArr) {
        return ((com.bumptech.glide.d) this.f895b.f32b).o(inputFilterArr);
    }

    public final void b(AttributeSet attributeSet, int i6) {
        TypedArray typedArrayObtainStyledAttributes = this.f894a.getContext().obtainStyledAttributes(attributeSet, e.a.f6354j, i6, 0);
        try {
            boolean z7 = typedArrayObtainStyledAttributes.hasValue(14) ? typedArrayObtainStyledAttributes.getBoolean(14, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            d(z7);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void c(boolean z7) {
        ((com.bumptech.glide.d) this.f895b.f32b).E(z7);
    }

    public final void d(boolean z7) {
        ((com.bumptech.glide.d) this.f895b.f32b).F(z7);
    }
}
