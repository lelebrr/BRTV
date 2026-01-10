package androidx.media3.exoplayer.analytics;

import b7.e0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class z implements e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2198a;

    public /* synthetic */ z(int i6) {
        this.f2198a = i6;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f2198a) {
            case 0:
                return DefaultPlaybackSessionManager.generateDefaultSessionId();
            default:
                throw new IllegalStateException();
        }
    }
}
