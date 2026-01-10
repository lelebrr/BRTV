package androidx.media3.exoplayer.trackselection;

import android.os.Bundle;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import b7.i;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2426a;

    public /* synthetic */ e(int i6) {
        this.f2426a = i6;
    }

    @Override // b7.i
    public final Object apply(Object obj) {
        switch (this.f2426a) {
            case 0:
                return ((TrackGroupArray) obj).toBundle();
            case 1:
                return ((DefaultTrackSelector.SelectionOverride) obj).toBundle();
            case 2:
                return TrackGroupArray.fromBundle((Bundle) obj);
            default:
                return DefaultTrackSelector.SelectionOverride.fromBundle((Bundle) obj);
        }
    }
}
