package i;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements TransformationMethod {

    /* renamed from: a, reason: collision with root package name */
    public Locale f7288a;

    @Override // android.text.method.TransformationMethod
    public final CharSequence getTransformation(CharSequence charSequence, View view) {
        if (charSequence != null) {
            return charSequence.toString().toUpperCase(this.f7288a);
        }
        return null;
    }

    @Override // android.text.method.TransformationMethod
    public final void onFocusChanged(View view, CharSequence charSequence, boolean z7, int i6, Rect rect) {
    }
}
