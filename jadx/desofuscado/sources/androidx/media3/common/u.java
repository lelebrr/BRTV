package androidx.media3.common;

import androidx.media3.common.SimpleBasePlayer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class u implements b7.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2080a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SimpleBasePlayer.State f2081b;

    public /* synthetic */ u(SimpleBasePlayer.State state, int i6) {
        this.f2080a = i6;
        this.f2081b = state;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f2080a) {
            case 0:
                return SimpleBasePlayer.lambda$setVideoSurface$17(this.f2081b);
            case 1:
                return SimpleBasePlayer.lambda$increaseDeviceVolume$25(this.f2081b);
            case 2:
                return SimpleBasePlayer.lambda$decreaseDeviceVolume$26(this.f2081b);
            case 3:
                return SimpleBasePlayer.lambda$release$13(this.f2081b);
            case 4:
                return SimpleBasePlayer.lambda$clearVideoOutput$21(this.f2081b);
            case 5:
                return SimpleBasePlayer.lambda$increaseDeviceVolume$24(this.f2081b);
            case 6:
                return SimpleBasePlayer.lambda$prepare$7(this.f2081b);
            default:
                return SimpleBasePlayer.lambda$decreaseDeviceVolume$27(this.f2081b);
        }
    }
}
