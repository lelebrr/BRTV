package androidx.media3.extractor.mkv;

import android.net.Uri;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.c;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import androidx.media3.extractor.mp4.Mp4Extractor;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.ts.TsExtractor;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements ExtractorsFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2482a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SubtitleParser.Factory f2483b;

    public /* synthetic */ a(SubtitleParser.Factory factory, int i6) {
        this.f2482a = i6;
        this.f2483b = factory;
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        switch (this.f2482a) {
            case 0:
                return MatroskaExtractor.lambda$newFactory$0(this.f2483b);
            case 1:
                return FragmentedMp4Extractor.lambda$newFactory$0(this.f2483b);
            case 2:
                return Mp4Extractor.lambda$newFactory$0(this.f2483b);
            default:
                return TsExtractor.lambda$newFactory$0(this.f2483b);
        }
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public final /* synthetic */ ExtractorsFactory experimentalSetCodecsToParseWithinGopSampleDependencies(int i6) {
        int i10 = this.f2482a;
        return c.b(this, i6);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public final /* synthetic */ ExtractorsFactory experimentalSetTextTrackTranscodingEnabled(boolean z7) {
        int i6 = this.f2482a;
        return c.c(this, z7);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public final /* synthetic */ ExtractorsFactory setSubtitleParserFactory(SubtitleParser.Factory factory) {
        int i6 = this.f2482a;
        return c.d(this, factory);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public final /* synthetic */ Extractor[] createExtractors(Uri uri, Map map) {
        int i6 = this.f2482a;
        return c.a(this, uri, map);
    }
}
