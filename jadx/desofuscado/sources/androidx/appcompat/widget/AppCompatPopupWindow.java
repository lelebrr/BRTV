package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.PopupWindow;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class AppCompatPopupWindow extends PopupWindow {
    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        a(context, attributeSet, i6);
    }

    public final void a(Context context, AttributeSet attributeSet, int i6) {
        a1.b bVarC = a1.b.C(context, attributeSet, e.a.f6364t, i6);
        TypedArray typedArray = (TypedArray) bVarC.f48c;
        if (typedArray.hasValue(2)) {
            l5.a.M(this, typedArray.getBoolean(2, false));
        }
        setBackgroundDrawable(bVarC.t(0));
        bVarC.F();
    }
}
