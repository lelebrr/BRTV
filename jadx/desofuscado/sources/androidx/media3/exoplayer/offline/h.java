package androidx.media3.exoplayer.offline;

import androidx.media3.exoplayer.offline.DownloadHelper;
import androidx.media3.exoplayer.offline.DownloadService;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2334a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2335b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2336c;

    public /* synthetic */ h(Object obj, int i6, Object obj2) {
        this.f2334a = i6;
        this.f2335b = obj;
        this.f2336c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2334a) {
            case 0:
                ((DownloadService.DownloadManagerHelper) this.f2335b).lambda$attachService$0((DownloadService) this.f2336c);
                break;
            case 1:
                ((DownloadHelper) this.f2335b).lambda$onMediaPreparationFailed$3((IOException) this.f2336c);
                break;
            default:
                ((DownloadHelper) this.f2335b).lambda$prepare$1((DownloadHelper.Callback) this.f2336c);
                break;
        }
    }
}
