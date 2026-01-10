package androidx.media3.common;

import androidx.media3.common.SimpleBasePlayer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class o implements b7.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2063a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SimpleBasePlayer.State f2064b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2065c;

    public /* synthetic */ o(SimpleBasePlayer.State state, int i6, int i10) {
        this.f2063a = i10;
        this.f2064b = state;
        this.f2065c = i6;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f2063a) {
            case 0:
                return SimpleBasePlayer.lambda$setDeviceVolume$22(this.f2064b, this.f2065c);
            case 1:
                return SimpleBasePlayer.lambda$setDeviceVolume$23(this.f2064b, this.f2065c);
            default:
                return SimpleBasePlayer.lambda$setRepeatMode$8(this.f2064b, this.f2065c);
        }
    }
}
