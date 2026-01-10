package androidx.media3.exoplayer;

import androidx.media3.exoplayer.StreamVolumeManager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class x0 implements b7.i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2471a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2472b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2473c;

    public /* synthetic */ x0(int i6, int i10, Object obj) {
        this.f2471a = i10;
        this.f2472b = obj;
        this.f2473c = i6;
    }

    @Override // b7.i
    public final Object apply(Object obj) {
        switch (this.f2471a) {
            case 0:
                return ((StreamVolumeManager) this.f2472b).lambda$increaseVolume$6(this.f2473c, (StreamVolumeManager.StreamVolumeState) obj);
            case 1:
                return ((StreamVolumeManager) this.f2472b).lambda$decreaseVolume$8(this.f2473c, (StreamVolumeManager.StreamVolumeState) obj);
            case 2:
                return ((StreamVolumeManager) this.f2472b).lambda$setStreamType$2(this.f2473c, (StreamVolumeManager.StreamVolumeState) obj);
            default:
                return ((ExoPlayerImpl) this.f2472b).lambda$setAudioSessionId$11(this.f2473c, (Integer) obj);
        }
    }
}
