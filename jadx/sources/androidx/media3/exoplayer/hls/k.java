package androidx.media3.exoplayer.hls;

import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.text.SubtitleParser;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class k implements HlsExtractorFactory {
    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public final HlsMediaChunkExtractor createExtractor(Uri uri, Format format, List list, TimestampAdjuster timestampAdjuster, Map map, ExtractorInput extractorInput, PlayerId playerId) {
        return MediaParserHlsMediaChunkExtractor.lambda$static$0(uri, format, list, timestampAdjuster, map, extractorInput, playerId);
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public final /* synthetic */ HlsExtractorFactory experimentalParseSubtitlesDuringExtraction(boolean z7) {
        return a.a(this, z7);
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public final /* synthetic */ HlsExtractorFactory experimentalSetCodecsToParseWithinGopSampleDependencies(int i6) {
        return a.b(this, i6);
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public final /* synthetic */ Format getOutputTextFormat(Format format) {
        return a.c(this, format);
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public final /* synthetic */ HlsExtractorFactory setSubtitleParserFactory(SubtitleParser.Factory factory) {
        return a.d(this, factory);
    }
}
