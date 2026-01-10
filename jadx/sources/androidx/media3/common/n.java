package androidx.media3.common;

import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class n implements ListenerSet.Event, j4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2060a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2061b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2062c;
    public final /* synthetic */ Object d;

    public /* synthetic */ n(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i6) {
        this.f2060a = 0;
        this.f2061b = i6;
        this.f2062c = positionInfo;
        this.d = positionInfo2;
    }

    @Override // j4.b
    public Object execute() {
        ((h4.i) this.f2062c).d.a((a4.j) this.d, this.f2061b + 1, false);
        return null;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.f2060a) {
            case 0:
                SimpleBasePlayer.lambda$updateStateAndInformListeners$33(this.f2061b, (Player.PositionInfo) this.f2062c, (Player.PositionInfo) this.d, (Player.Listener) obj);
                break;
            default:
                ((AnalyticsListener) obj).onMediaItemTransition((AnalyticsListener.EventTime) this.f2062c, (MediaItem) this.d, this.f2061b);
                break;
        }
    }

    public /* synthetic */ n(Object obj, Object obj2, int i6, int i10) {
        this.f2060a = i10;
        this.f2062c = obj;
        this.d = obj2;
        this.f2061b = i6;
    }
}
