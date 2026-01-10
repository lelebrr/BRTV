package androidx.media3.exoplayer;

import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class x implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2469a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f2470b;

    public /* synthetic */ x(boolean z7, int i6) {
        this.f2469a = i6;
        this.f2470b = z7;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.f2469a) {
            case 0:
                ((Player.Listener) obj).onSkipSilenceEnabledChanged(this.f2470b);
                break;
            case 1:
                ((Player.Listener) obj).onShuffleModeEnabledChanged(this.f2470b);
                break;
            default:
                ((Player.Listener) obj).onSkipSilenceEnabledChanged(this.f2470b);
                break;
        }
    }
}
