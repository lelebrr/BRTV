package androidx.media3.extractor.text;

import androidx.media3.common.util.Consumer;
import androidx.media3.common.x;
import androidx.media3.extractor.text.SubtitleParser;
import d7.s1;
import d7.u1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static void a(SubtitleParser subtitleParser, byte[] bArr, SubtitleParser.OutputOptions outputOptions, Consumer consumer) {
        subtitleParser.parse(bArr, 0, bArr.length, outputOptions, consumer);
    }

    public static Subtitle b(SubtitleParser subtitleParser, byte[] bArr, int i6, int i10) {
        s1 s1VarK = u1.k();
        subtitleParser.parse(bArr, i6, i10, SubtitleParser.OutputOptions.ALL, new x(8, s1VarK));
        return new CuesWithTimingSubtitle(s1VarK.g());
    }

    public static void c(SubtitleParser subtitleParser) {
    }
}
