package androidx.media3.exoplayer.offline;

import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface DownloaderFactory {
    Downloader createDownloader(DownloadRequest downloadRequest);
}
