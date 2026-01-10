package androidx.media3.exoplayer;

import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c0 implements ListenerSet.Event {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2229a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2230b;

    public /* synthetic */ c0(int i6, int i10) {
        this.f2229a = i10;
        this.f2230b = i6;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.f2229a) {
            case 0:
                ((Player.Listener) obj).onRepeatModeChanged(this.f2230b);
                break;
            default:
                ((Player.Listener) obj).onAudioSessionIdChanged(this.f2230b);
                break;
        }
    }
}
