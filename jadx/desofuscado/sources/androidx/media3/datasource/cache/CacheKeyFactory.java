package androidx.media3.datasource.cache;

import a4.s;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSpec;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface CacheKeyFactory {
    public static final CacheKeyFactory DEFAULT = new s(3);

    String buildCacheKey(DataSpec dataSpec);
}
