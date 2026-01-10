package androidx.media3.exoplayer.upstream;

import androidx.media3.common.util.NetworkTypeObserver;
import androidx.media3.exoplayer.upstream.experimental.ExperimentalBandwidthMeter;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements NetworkTypeObserver.Listener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2435a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2436b;

    public /* synthetic */ f(int i6, Object obj) {
        this.f2435a = i6;
        this.f2436b = obj;
    }

    @Override // androidx.media3.common.util.NetworkTypeObserver.Listener
    public final void onNetworkTypeChanged(int i6) {
        switch (this.f2435a) {
            case 0:
                ((DefaultBandwidthMeter) this.f2436b).onNetworkTypeChanged(i6);
                break;
            default:
                ((ExperimentalBandwidthMeter) this.f2436b).onNetworkTypeChanged(i6);
                break;
        }
    }
}
