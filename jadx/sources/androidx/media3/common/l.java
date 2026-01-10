package androidx.media3.common;

import androidx.media3.common.SimpleBasePlayer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class l implements b7.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2055a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SimpleBasePlayer.State f2056b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f2057c;

    public /* synthetic */ l(SimpleBasePlayer.State state, boolean z7, int i6) {
        this.f2055a = i6;
        this.f2056b = state;
        this.f2057c = z7;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f2055a) {
            case 0:
                return SimpleBasePlayer.lambda$setPlayWhenReady$1(this.f2056b, this.f2057c);
            case 1:
                return SimpleBasePlayer.lambda$setShuffleModeEnabled$9(this.f2056b, this.f2057c);
            case 2:
                return SimpleBasePlayer.lambda$setDeviceMuted$28(this.f2056b, this.f2057c);
            default:
                return SimpleBasePlayer.lambda$setDeviceMuted$29(this.f2056b, this.f2057c);
        }
    }
}
