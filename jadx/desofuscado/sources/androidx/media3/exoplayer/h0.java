package androidx.media3.exoplayer;

import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class h0 implements b7.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2277a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2278b;

    public /* synthetic */ h0(int i6, Object obj) {
        this.f2277a = i6;
        this.f2278b = obj;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f2277a) {
            case 0:
                return ((ExoPlayerImplInternal) this.f2278b).lambda$release$0();
            default:
                return Boolean.valueOf(((AtomicBoolean) this.f2278b).get());
        }
    }
}
