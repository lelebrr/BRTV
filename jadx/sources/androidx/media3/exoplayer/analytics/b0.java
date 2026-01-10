package androidx.media3.exoplayer.analytics;

import android.content.ClipData;
import android.media.AudioProfile;
import android.media.MediaDrm;
import android.view.ContentInfo;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class b0 {
    public static /* bridge */ /* synthetic */ AudioProfile f(Object obj) {
        return (AudioProfile) obj;
    }

    public static /* bridge */ /* synthetic */ MediaDrm.PlaybackComponent h(Object obj) {
        return (MediaDrm.PlaybackComponent) obj;
    }

    public static /* synthetic */ ContentInfo.Builder k(ClipData clipData, int i6) {
        return new ContentInfo.Builder(clipData, i6);
    }

    public static /* bridge */ /* synthetic */ ContentInfo m(Object obj) {
        return (ContentInfo) obj;
    }
}
