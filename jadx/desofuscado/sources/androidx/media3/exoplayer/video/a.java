package androidx.media3.exoplayer.video;

import java.util.concurrent.Executor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2441a;

    public /* synthetic */ a(int i6) {
        this.f2441a = i6;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f2441a) {
            case 0:
                DefaultVideoSink.lambda$new$0(runnable);
                break;
            default:
                PlaybackVideoGraphWrapper.lambda$static$0(runnable);
                break;
        }
    }
}
