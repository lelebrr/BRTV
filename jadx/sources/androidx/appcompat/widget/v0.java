package androidx.appcompat.widget;

import android.widget.TextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class v0 {
    public static int a(TextView textView) {
        return textView.getAutoSizeStepGranularity();
    }

    public static void b(TextView textView, int i6, int i10, int i11, int i12) {
        textView.setAutoSizeTextTypeUniformWithConfiguration(i6, i10, i11, i12);
    }

    public static void c(TextView textView, int[] iArr, int i6) {
        textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i6);
    }

    public static boolean d(TextView textView, String str) {
        return textView.setFontVariationSettings(str);
    }
}
