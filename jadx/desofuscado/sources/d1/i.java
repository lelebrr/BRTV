package d1;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i implements TransformationMethod {

    /* renamed from: a, reason: collision with root package name */
    public final TransformationMethod f6014a;

    public i(TransformationMethod transformationMethod) {
        this.f6014a = transformationMethod;
    }

    @Override // android.text.method.TransformationMethod
    public final CharSequence getTransformation(CharSequence charSequence, View view) {
        if (view.isInEditMode()) {
            return charSequence;
        }
        TransformationMethod transformationMethod = this.f6014a;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, view);
        }
        if (charSequence == null || b1.i.a().b() != 1) {
            return charSequence;
        }
        b1.i iVarA = b1.i.a();
        iVarA.getClass();
        return iVarA.e(charSequence, 0, charSequence.length());
    }

    @Override // android.text.method.TransformationMethod
    public final void onFocusChanged(View view, CharSequence charSequence, boolean z7, int i6, Rect rect) {
        TransformationMethod transformationMethod = this.f6014a;
        if (transformationMethod != null) {
            transformationMethod.onFocusChanged(view, charSequence, z7, i6, rect);
        }
    }
}
