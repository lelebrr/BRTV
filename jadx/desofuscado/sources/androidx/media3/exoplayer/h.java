package androidx.media3.exoplayer;

import android.content.Context;
import androidx.media3.exoplayer.DefaultSuitableOutputChecker;
import androidx.media3.exoplayer.ExoPlayerImplInternal;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2274a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2275b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2276c;

    public /* synthetic */ h(Object obj, int i6, Object obj2) {
        this.f2274a = i6;
        this.f2276c = obj;
        this.f2275b = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2274a) {
            case 0:
                ((DefaultSuitableOutputChecker.ImplApi23) this.f2276c).lambda$enable$1((Context) this.f2275b);
                break;
            case 1:
                ((DefaultSuitableOutputChecker.ImplApi35) this.f2276c).lambda$enable$1((Context) this.f2275b);
                break;
            case 2:
                ((ExoPlayerImpl) this.f2276c).lambda$new$1((ExoPlayerImplInternal.PlaybackInfoUpdate) this.f2275b);
                break;
            default:
                ((ExoPlayerImplInternal) this.f2276c).lambda$sendMessageToTargetThread$2((PlayerMessage) this.f2275b);
                break;
        }
    }
}
