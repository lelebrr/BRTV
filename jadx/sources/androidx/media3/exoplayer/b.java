package androidx.media3.exoplayer;

import androidx.media3.exoplayer.AudioBecomingNoisyManager;
import androidx.media3.exoplayer.DefaultSuitableOutputChecker;
import androidx.media3.exoplayer.StreamVolumeManager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2223a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2224b;

    public /* synthetic */ b(int i6, Object obj) {
        this.f2223a = i6;
        this.f2224b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2223a) {
            case 0:
                ((AudioBecomingNoisyManager.AudioBecomingNoisyReceiver) this.f2224b).callListenerIfEnabled();
                break;
            case 1:
                ((DefaultSuitableOutputChecker.ImplApi23) this.f2224b).lambda$disable$2();
                break;
            case 2:
                ((DefaultSuitableOutputChecker.ImplApi35) this.f2224b).lambda$disable$2();
                break;
            case 3:
                ((ExoPlayerImpl) this.f2224b).lambda$new$3();
                break;
            default:
                ((StreamVolumeManager.VolumeChangeReceiver) this.f2224b).lambda$onReceive$0();
                break;
        }
    }
}
