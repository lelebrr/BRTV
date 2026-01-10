package b5;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: a, reason: collision with root package name */
    public Boolean f3252a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3253b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.common.internal.a f3254c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final Bundle f3255e;
    public final /* synthetic */ com.google.android.gms.common.internal.a f;

    public i(com.google.android.gms.common.internal.a aVar, int i6, Bundle bundle) {
        this.f = aVar;
        Boolean bool = Boolean.TRUE;
        this.f3254c = aVar;
        this.f3252a = bool;
        this.f3253b = false;
        this.d = i6;
        this.f3255e = bundle;
    }

    public abstract void a(ConnectionResult connectionResult);

    public abstract boolean b();

    public final void c() {
        synchronized (this) {
            this.f3252a = null;
        }
    }

    public final void d() {
        c();
        synchronized (this.f3254c.f3998l) {
            this.f3254c.f3998l.remove(this);
        }
    }
}
