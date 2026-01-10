package e1;

import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class i {
    public static void a(MediaMetadataRetriever mediaMetadataRetriever, MediaDataSource mediaDataSource) throws IllegalArgumentException {
        mediaMetadataRetriever.setDataSource(mediaDataSource);
    }
}
