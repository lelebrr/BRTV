package androidx.media3.datasource.cache;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.cache.Cache;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface CacheEvictor extends Cache.Listener {
    void onCacheInitialized();

    void onStartFile(Cache cache, String str, long j10, long j11);

    boolean requiresCacheSpanTouches();
}
