package m1;

import android.media.VolumeProvider;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t extends VolumeProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f8151a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(x xVar, int i6, int i10, int i11, String str) {
        super(i6, i10, i11, str);
        this.f8151a = xVar;
    }

    @Override // android.media.VolumeProvider
    public final void onAdjustVolume(int i6) {
        q1.d dVar = (q1.d) this.f8151a;
        q1.h hVar = dVar.f8948g.f8955c;
        hVar.f8986a.post(new q1.c(i6, 1, dVar));
    }

    @Override // android.media.VolumeProvider
    public final void onSetVolumeTo(int i6) {
        q1.d dVar = (q1.d) this.f8151a;
        q1.h hVar = dVar.f8948g.f8955c;
        hVar.f8986a.post(new q1.c(i6, 0, dVar));
    }
}
