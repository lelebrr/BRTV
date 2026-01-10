package androidx.media3.exoplayer;

import androidx.media3.exoplayer.StreamVolumeManager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class a0 implements b7.i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2120a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2121b;

    public /* synthetic */ a0(int i6, int i10) {
        this.f2120a = i10;
        this.f2121b = i6;
    }

    @Override // b7.i
    public final Object apply(Object obj) {
        switch (this.f2120a) {
            case 0:
                return ExoPlayerImpl.lambda$setAudioSessionId$10(this.f2121b, (Integer) obj);
            case 1:
                return StreamVolumeManager.lambda$setVolume$3(this.f2121b, (StreamVolumeManager.StreamVolumeState) obj);
            default:
                return StreamVolumeManager.lambda$setStreamType$1(this.f2121b, (StreamVolumeManager.StreamVolumeState) obj);
        }
    }
}
