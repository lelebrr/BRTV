package g;

import android.graphics.drawable.Animatable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends l5.a {

    /* renamed from: r, reason: collision with root package name */
    public final /* synthetic */ int f6990r;

    /* renamed from: s, reason: collision with root package name */
    public final Animatable f6991s;

    public /* synthetic */ a(Animatable animatable, int i6) {
        this.f6990r = i6;
        this.f6991s = animatable;
    }

    @Override // l5.a
    public final void S() {
        switch (this.f6990r) {
            case 0:
                this.f6991s.start();
                break;
            default:
                ((z1.c) this.f6991s).start();
                break;
        }
    }

    @Override // l5.a
    public final void U() {
        switch (this.f6990r) {
            case 0:
                this.f6991s.stop();
                break;
            default:
                ((z1.c) this.f6991s).stop();
                break;
        }
    }
}
