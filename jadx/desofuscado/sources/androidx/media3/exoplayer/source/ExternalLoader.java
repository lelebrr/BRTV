package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.util.UnstableApi;
import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface ExternalLoader {

    /* compiled from: MyApplication */
    public static final class LoadRequest {
        public final Uri uri;

        public LoadRequest(Uri uri) {
            this.uri = uri;
        }
    }

    ListenableFuture<?> load(LoadRequest loadRequest);
}
