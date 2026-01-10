package a4;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Base64;
import android.view.SurfaceView;
import androidx.media3.common.DebugViewProvider;
import androidx.media3.common.FlagSet;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.cache.CacheKeyFactory;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.image.BitmapFactoryImageDecoder;
import androidx.media3.extractor.DefaultExtractorsFactory;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.amr.AmrExtractor;
import androidx.media3.extractor.flac.FlacExtractor;
import androidx.media3.extractor.flv.FlvExtractor;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import androidx.media3.extractor.mkv.MatroskaExtractor;
import androidx.media3.extractor.mp3.Mp3Extractor;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import androidx.media3.extractor.mp4.Mp4Extractor;
import androidx.media3.extractor.ogg.OggExtractor;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.ts.Ac3Extractor;
import androidx.media3.extractor.ts.Ac4Extractor;
import androidx.media3.extractor.ts.AdtsExtractor;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.extractor.wav.WavExtractor;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class s implements DebugViewProvider, ListenerSet.Event, CacheKeyFactory, ListenerSet.IterationFinishedEvent, BitmapFactoryImageDecoder.BitmapDecoder, DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier, ExtractorsFactory, Id3Decoder.FramePredicate, i4.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f146a;

    public /* synthetic */ s(int i6) {
        this.f146a = i6;
    }

    @Override // i4.e
    public Object apply(Object obj) {
        Cursor cursorRawQuery = ((SQLiteDatabase) obj).rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]);
        try {
            ArrayList arrayList = new ArrayList();
            while (cursorRawQuery.moveToNext()) {
                a1.b bVarA = j.a();
                bVarA.G(cursorRawQuery.getString(1));
                bVarA.d = l4.a.b(cursorRawQuery.getInt(2));
                String string = cursorRawQuery.getString(3);
                bVarA.f48c = string == null ? null : Base64.decode(string, 0);
                arrayList.add(bVarA.h());
            }
            return arrayList;
        } finally {
            cursorRawQuery.close();
        }
    }

    @Override // androidx.media3.datasource.cache.CacheKeyFactory
    public String buildCacheKey(DataSpec dataSpec) {
        return androidx.media3.datasource.cache.a.a(dataSpec);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public Extractor[] createExtractors() {
        switch (this.f146a) {
            case 8:
                return androidx.media3.extractor.c.e();
            case 9:
                return AmrExtractor.lambda$static$0();
            case 10:
                return FlacExtractor.lambda$static$0();
            case 11:
                return FlvExtractor.lambda$static$0();
            case 12:
            case 15:
            default:
                return WavExtractor.lambda$static$0();
            case 13:
                return MatroskaExtractor.lambda$static$1();
            case 14:
                return Mp3Extractor.lambda$static$0();
            case 16:
                return FragmentedMp4Extractor.lambda$static$1();
            case 17:
                return Mp4Extractor.lambda$static$1();
            case 18:
                return OggExtractor.lambda$static$0();
            case 19:
                return Ac3Extractor.lambda$static$0();
            case 20:
                return Ac4Extractor.lambda$static$0();
            case 21:
                return AdtsExtractor.lambda$static$0();
            case 22:
                return PsExtractor.lambda$static$0();
            case 23:
                return TsExtractor.lambda$static$1();
        }
    }

    @Override // androidx.media3.exoplayer.image.BitmapFactoryImageDecoder.BitmapDecoder
    public Bitmap decode(byte[] bArr, int i6) {
        return BitmapFactoryImageDecoder.access$100(bArr, i6);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Decoder.FramePredicate
    public boolean evaluate(int i6, int i10, int i11, int i12, int i13) {
        switch (this.f146a) {
            case 12:
                return Id3Decoder.lambda$static$0(i6, i10, i11, i12, i13);
            default:
                return Mp3Extractor.lambda$static$1(i6, i10, i11, i12, i13);
        }
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public /* synthetic */ ExtractorsFactory experimentalSetCodecsToParseWithinGopSampleDependencies(int i6) {
        int i10 = this.f146a;
        return androidx.media3.extractor.c.b(this, i6);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public /* synthetic */ ExtractorsFactory experimentalSetTextTrackTranscodingEnabled(boolean z7) {
        int i6 = this.f146a;
        return androidx.media3.extractor.c.c(this, z7);
    }

    @Override // androidx.media3.extractor.DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier
    public Constructor getConstructor() {
        switch (this.f146a) {
            case 6:
                return DefaultExtractorsFactory.getFlacExtractorConstructor();
            default:
                return DefaultExtractorsFactory.getMidiExtractorConstructor();
        }
    }

    @Override // androidx.media3.common.DebugViewProvider
    public SurfaceView getDebugPreviewSurfaceView(int i6, int i10) {
        return androidx.media3.common.e.a(i6, i10);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((Player.Listener) obj).onRenderedFirstFrame();
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public /* synthetic */ ExtractorsFactory setSubtitleParserFactory(SubtitleParser.Factory factory) {
        int i6 = this.f146a;
        return androidx.media3.extractor.c.d(this, factory);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public /* synthetic */ Extractor[] createExtractors(Uri uri, Map map) {
        int i6 = this.f146a;
        return androidx.media3.extractor.c.a(this, uri, map);
    }

    @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
    public void invoke(Object obj, FlagSet flagSet) {
        DefaultAnalyticsCollector.lambda$new$0((AnalyticsListener) obj, flagSet);
    }
}
