package androidx.media3.common.text;

import android.text.Spannable;
import android.text.style.RelativeSizeSpan;
import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class SpanUtil {
    private SpanUtil() {
    }

    public static void addInheritedRelativeSizeSpan(Spannable spannable, float f, int i6, int i10, int i11) {
        for (RelativeSizeSpan relativeSizeSpan : (RelativeSizeSpan[]) spannable.getSpans(i6, i10, RelativeSizeSpan.class)) {
            if (spannable.getSpanStart(relativeSizeSpan) <= i6 && spannable.getSpanEnd(relativeSizeSpan) >= i10) {
                f = relativeSizeSpan.getSizeChange() * f;
            }
            removeIfStartEndAndFlagsMatch(spannable, relativeSizeSpan, i6, i10, i11);
        }
        spannable.setSpan(new RelativeSizeSpan(f), i6, i10, i11);
    }

    public static void addOrReplaceSpan(Spannable spannable, Object obj, int i6, int i10, int i11) {
        for (Object obj2 : spannable.getSpans(i6, i10, obj.getClass())) {
            removeIfStartEndAndFlagsMatch(spannable, obj2, i6, i10, i11);
        }
        spannable.setSpan(obj, i6, i10, i11);
    }

    private static void removeIfStartEndAndFlagsMatch(Spannable spannable, Object obj, int i6, int i10, int i11) {
        if (spannable.getSpanStart(obj) == i6 && spannable.getSpanEnd(obj) == i10 && spannable.getSpanFlags(obj) == i11) {
            spannable.removeSpan(obj);
        }
    }
}
