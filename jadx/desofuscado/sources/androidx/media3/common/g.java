package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.Tracks;
import androidx.media3.common.text.Cue;
import androidx.media3.extractor.mp4.Mp4Extractor;
import androidx.media3.extractor.mp4.Track;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.CuesWithTimingSubtitle;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements b7.i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2052a;

    public /* synthetic */ g(int i6) {
        this.f2052a = i6;
    }

    @Override // b7.i
    public final Object apply(Object obj) {
        switch (this.f2052a) {
            case 0:
                return ((Label) obj).toBundle();
            case 1:
                return Label.fromBundle((Bundle) obj);
            case 2:
                return Format.lambda$toLogString$0((Label) obj);
            case 3:
                return ((StreamKey) obj).toBundle();
            case 4:
                return ((MediaItem.SubtitleConfiguration) obj).toBundle();
            case 5:
                return StreamKey.fromBundle((Bundle) obj);
            case 6:
                return MediaItem.SubtitleConfiguration.fromBundle((Bundle) obj);
            case 7:
                return Timeline.Window.fromBundle((Bundle) obj);
            case 8:
                return Timeline.Period.fromBundle((Bundle) obj);
            case 9:
                return Format.fromBundle((Bundle) obj);
            case 10:
                return ((TrackSelectionOverride) obj).toBundle();
            case 11:
                return TrackSelectionOverride.fromBundle((Bundle) obj);
            case 12:
                return ((Tracks.Group) obj).toBundle();
            case 13:
                return Tracks.Group.fromBundle((Bundle) obj);
            case 14:
                return Cue.fromBundle((Bundle) obj);
            case 15:
                return ((Cue) obj).toBinderBasedBundle();
            case 16:
                return Mp4Extractor.lambda$processMoovAtom$2((Track) obj);
            case 17:
                return ((Cue) obj).toSerializableBundle();
            default:
                return CuesWithTimingSubtitle.lambda$static$0((CuesWithTiming) obj);
        }
    }
}
