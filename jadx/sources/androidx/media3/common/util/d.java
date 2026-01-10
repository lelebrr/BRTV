package androidx.media3.common.util;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import java.io.Serializable;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2086a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2087b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2088c;
    public final /* synthetic */ Object d;

    public /* synthetic */ d(DrmSessionEventListener.EventDispatcher eventDispatcher, DrmSessionEventListener drmSessionEventListener, int i6) {
        this.f2086a = 1;
        this.f2088c = eventDispatcher;
        this.d = drmSessionEventListener;
        this.f2087b = i6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2086a) {
            case 0:
                ListenerSet.lambda$queueEvent$0((CopyOnWriteArraySet) this.f2088c, this.f2087b, (ListenerSet.Event) this.d);
                break;
            case 1:
                ((DrmSessionEventListener.EventDispatcher) this.f2088c).lambda$drmSessionAcquired$0((DrmSessionEventListener) this.d, this.f2087b);
                break;
            default:
                ((t1.a) this.f2088c).f10061b.b(this.f2087b, (Serializable) this.d);
                break;
        }
    }

    public /* synthetic */ d(Object obj, int i6, Object obj2, int i10) {
        this.f2086a = i10;
        this.f2088c = obj;
        this.f2087b = i6;
        this.d = obj2;
    }
}
