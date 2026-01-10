package androidx.media3.extractor;

import a4.s;
import android.net.Uri;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.text.SubtitleParser;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface ExtractorsFactory {
    public static final ExtractorsFactory EMPTY = new s(8);

    Extractor[] createExtractors();

    Extractor[] createExtractors(Uri uri, Map<String, List<String>> map);

    ExtractorsFactory experimentalSetCodecsToParseWithinGopSampleDependencies(int i6);

    @Deprecated
    ExtractorsFactory experimentalSetTextTrackTranscodingEnabled(boolean z7);

    ExtractorsFactory setSubtitleParserFactory(SubtitleParser.Factory factory);
}
