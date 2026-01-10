package androidx.media3.exoplayer.offline;

import androidx.media3.datasource.cache.CacheWriter;
import androidx.media3.exoplayer.scheduler.RequirementsWatcher;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements RequirementsWatcher.Listener, CacheWriter.ProgressListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f2333a;

    public /* synthetic */ e(Object obj) {
        this.f2333a = obj;
    }

    @Override // androidx.media3.datasource.cache.CacheWriter.ProgressListener
    public void onProgress(long j10, long j11, long j12) {
        ((ProgressiveDownloader) this.f2333a).onProgress(j10, j11, j12);
    }

    @Override // androidx.media3.exoplayer.scheduler.RequirementsWatcher.Listener
    public void onRequirementsStateChanged(RequirementsWatcher requirementsWatcher, int i6) {
        ((DownloadManager) this.f2333a).onRequirementsStateChanged(requirementsWatcher, i6);
    }
}
