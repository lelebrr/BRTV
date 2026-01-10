package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.exoplayer.MediaSourceList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class r0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2351a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MediaSourceList.ForwardingEventListener f2352b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Pair f2353c;

    public /* synthetic */ r0(MediaSourceList.ForwardingEventListener forwardingEventListener, Pair pair, int i6) {
        this.f2351a = i6;
        this.f2352b = forwardingEventListener;
        this.f2353c = pair;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2351a) {
            case 0:
                this.f2352b.lambda$onDrmKeysRemoved$10(this.f2353c);
                break;
            case 1:
                this.f2352b.lambda$onDrmKeysRestored$9(this.f2353c);
                break;
            case 2:
                this.f2352b.lambda$onDrmSessionReleased$11(this.f2353c);
                break;
            default:
                this.f2352b.lambda$onDrmKeysLoaded$7(this.f2353c);
                break;
        }
    }
}
