package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.text.SubtitleParser;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements ExtractorsFactory, Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f2382a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2383b;

    public /* synthetic */ c(Object obj, Object obj2) {
        this.f2382a = obj;
        this.f2383b = obj2;
    }

    @Override // androidx.media3.common.util.Consumer, l8.a
    public void accept(Object obj) {
        ((MediaSourceEventListener.EventDispatcher) this.f2382a).lambda$downstreamFormatChanged$5((MediaLoadData) this.f2383b, (MediaSourceEventListener) obj);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public Extractor[] createExtractors() {
        return ((DefaultMediaSourceFactory) this.f2382a).lambda$createMediaSource$0((Format) this.f2383b);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public /* synthetic */ ExtractorsFactory experimentalSetCodecsToParseWithinGopSampleDependencies(int i6) {
        return androidx.media3.extractor.c.b(this, i6);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public /* synthetic */ ExtractorsFactory experimentalSetTextTrackTranscodingEnabled(boolean z7) {
        return androidx.media3.extractor.c.c(this, z7);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public /* synthetic */ ExtractorsFactory setSubtitleParserFactory(SubtitleParser.Factory factory) {
        return androidx.media3.extractor.c.d(this, factory);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public /* synthetic */ Extractor[] createExtractors(Uri uri, Map map) {
        return androidx.media3.extractor.c.a(this, uri, map);
    }
}
