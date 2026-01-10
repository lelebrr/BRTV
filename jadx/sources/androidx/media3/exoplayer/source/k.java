package androidx.media3.exoplayer.source;

import android.os.Bundle;
import androidx.media3.common.TrackGroup;
import androidx.media3.extractor.Extractor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class k implements b7.i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2391a;

    public /* synthetic */ k(int i6) {
        this.f2391a = i6;
    }

    @Override // b7.i
    public final Object apply(Object obj) {
        switch (this.f2391a) {
            case 0:
                return MergingMediaPeriod.lambda$selectTracks$0((MediaPeriod) obj);
            case 1:
                return BundledExtractorsAdapter.lambda$init$0((Extractor) obj);
            case 2:
                return TrackGroupArray.lambda$getTrackTypes$0((TrackGroup) obj);
            case 3:
                return ((TrackGroup) obj).toBundle();
            default:
                return TrackGroup.fromBundle((Bundle) obj);
        }
    }
}
