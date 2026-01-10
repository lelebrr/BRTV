package androidx.media3.extractor.text.ttml;

import android.text.TextUtils;
import b7.b;
import d7.i5;
import d7.k2;
import d7.m2;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.regex.Pattern;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class TextEmphasis {
    public static final int MARK_SHAPE_AUTO = -1;
    public static final int POSITION_OUTSIDE = -2;
    public final int markFill;
    public final int markShape;
    public final int position;
    private static final Pattern WHITESPACE_PATTERN = Pattern.compile("\\s+");
    private static final k2 SINGLE_STYLE_VALUES = k2.k(new Object[]{TtmlNode.TEXT_EMPHASIS_AUTO, "none"}, 2);
    private static final k2 MARK_SHAPE_VALUES = k2.k(new Object[]{TtmlNode.TEXT_EMPHASIS_MARK_DOT, TtmlNode.TEXT_EMPHASIS_MARK_SESAME, TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE}, 3);
    private static final k2 MARK_FILL_VALUES = k2.k(new Object[]{TtmlNode.TEXT_EMPHASIS_MARK_FILLED, TtmlNode.TEXT_EMPHASIS_MARK_OPEN}, 2);
    private static final k2 POSITION_VALUES = k2.k(new Object[]{TtmlNode.ANNOTATION_POSITION_AFTER, TtmlNode.ANNOTATION_POSITION_BEFORE, TtmlNode.ANNOTATION_POSITION_OUTSIDE}, 3);

    /* compiled from: MyApplication */
    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Position {
    }

    private TextEmphasis(int i6, int i10, int i11) {
        this.markShape = i6;
        this.markFill = i10;
        this.position = i11;
    }

    public static TextEmphasis parse(String str) {
        k2 m2Var;
        if (str == null) {
            return null;
        }
        String strV = b.v(str.trim());
        if (strV.isEmpty()) {
            return null;
        }
        String[] strArrSplit = TextUtils.split(strV, WHITESPACE_PATTERN);
        int length = strArrSplit.length;
        if (length == 0) {
            m2Var = i5.f6179j;
        } else if (length != 1) {
            m2Var = k2.k((Object[]) strArrSplit.clone(), strArrSplit.length);
        } else {
            m2Var = new m2(strArrSplit[0]);
        }
        return parseWords(m2Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x012d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static androidx.media3.extractor.text.ttml.TextEmphasis parseWords(d7.k2 r9) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.text.ttml.TextEmphasis.parseWords(d7.k2):androidx.media3.extractor.text.ttml.TextEmphasis");
    }
}
