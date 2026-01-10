package androidx.core.widget;

import android.icu.text.DecimalFormatSymbols;
import android.text.PrecomputedText;
import android.widget.TextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class p {
    public static String[] b(DecimalFormatSymbols decimalFormatSymbols) {
        return decimalFormatSymbols.getDigitStrings();
    }

    public static PrecomputedText.Params c(TextView textView) {
        return textView.getTextMetricsParams();
    }

    public static void d(TextView textView, int i6) {
        textView.setFirstBaselineToTopHeight(i6);
    }

    public static CharSequence a(PrecomputedText precomputedText) {
        return precomputedText;
    }
}
