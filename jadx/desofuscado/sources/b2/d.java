package b2;

import android.text.method.SingleLineTransformationMethod;
import android.view.View;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends SingleLineTransformationMethod {

    /* renamed from: a, reason: collision with root package name */
    public Locale f3151a;

    @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
    public final CharSequence getTransformation(CharSequence charSequence, View view) {
        CharSequence transformation = super.getTransformation(charSequence, view);
        if (transformation != null) {
            return transformation.toString().toUpperCase(this.f3151a);
        }
        return null;
    }
}
