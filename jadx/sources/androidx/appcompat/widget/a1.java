package androidx.appcompat.widget;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.widget.TextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a1 {
    public static StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i6, TextView textView, TextPaint textPaint) {
        return new StaticLayout(charSequence, textPaint, i6, alignment, textView.getLineSpacingMultiplier(), textView.getLineSpacingExtra(), textView.getIncludeFontPadding());
    }

    public static int b(TextView textView) {
        return textView.getMaxLines();
    }
}
