package androidx.media3.exoplayer.source.preload;

import androidx.media3.exoplayer.source.preload.DefaultPreloadManager;
import b7.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2409a;

    public /* synthetic */ e(int i6) {
        this.f2409a = i6;
    }

    @Override // b7.n
    public final boolean apply(Object obj) {
        DefaultPreloadManager.Status status = (DefaultPreloadManager.Status) obj;
        switch (this.f2409a) {
            case 0:
                return DefaultPreloadManager.SourcePreloadControl.lambda$onTracksSelected$1(status);
            default:
                return DefaultPreloadManager.SourcePreloadControl.lambda$onSourcePrepared$0(status);
        }
    }
}
