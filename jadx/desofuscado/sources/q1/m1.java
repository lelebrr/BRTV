package q1;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m1 extends e0 implements ServiceConnection {

    /* renamed from: q, reason: collision with root package name */
    public static final /* synthetic */ int f9067q = 0;

    /* renamed from: i, reason: collision with root package name */
    public final ComponentName f9068i;

    /* renamed from: j, reason: collision with root package name */
    public final com.google.android.gms.internal.cast.x0 f9069j;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f9070k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f9071l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f9072m;

    /* renamed from: n, reason: collision with root package name */
    public h1 f9073n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f9074o;

    /* renamed from: p, reason: collision with root package name */
    public androidx.media3.common.x f9075p;

    static {
        Log.isLoggable("MediaRouteProviderProxy", 3);
    }

    public m1(Context context, ComponentName componentName) {
        super(context, new j7.c(25, componentName));
        this.f9070k = new ArrayList();
        this.f9068i = componentName;
        this.f9069j = new com.google.android.gms.internal.cast.x0();
    }

    @Override // q1.e0
    public final b0 a(String str, d0 d0Var) {
        if (str == null) {
            throw new IllegalArgumentException("initialMemberRouteId cannot be null.");
        }
        androidx.appcompat.app.r0 r0Var = this.f8960g;
        if (r0Var != null) {
            List list = (List) r0Var.f353c;
            int size = list.size();
            for (int i6 = 0; i6 < size; i6++) {
                if (((w) list.get(i6)).f().equals(str)) {
                    k1 k1Var = new k1(this, str, d0Var);
                    this.f9070k.add(k1Var);
                    if (this.f9074o) {
                        k1Var.b(this.f9073n);
                    }
                    l();
                    return k1Var;
                }
            }
        }
        return null;
    }

    @Override // q1.e0
    public final c0 c(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("routeId cannot be null");
        }
        if (str2 != null) {
            return i(str, str2, d0.f8949b);
        }
        throw new IllegalArgumentException("routeGroupId cannot be null");
    }

    @Override // q1.e0
    public final c0 d(String str, d0 d0Var) {
        if (str != null) {
            return i(str, null, d0Var);
        }
        throw new IllegalArgumentException("routeId cannot be null");
    }

    @Override // q1.e0
    public final void e(x xVar) {
        if (this.f9074o) {
            h1 h1Var = this.f9073n;
            int i6 = h1Var.d;
            h1Var.d = i6 + 1;
            h1Var.b(10, i6, 0, xVar != null ? xVar.f9174a : null, null);
        }
        l();
    }

    public final void h() {
        if (this.f9072m) {
            return;
        }
        Intent intent = new Intent("android.media.MediaRouteProviderService");
        intent.setComponent(this.f9068i);
        try {
            this.f9072m = this.f8956a.bindService(intent, this, Build.VERSION.SDK_INT >= 29 ? 4097 : 1);
        } catch (SecurityException unused) {
        }
    }

    public final l1 i(String str, String str2, d0 d0Var) {
        androidx.appcompat.app.r0 r0Var = this.f8960g;
        if (r0Var == null) {
            return null;
        }
        List list = (List) r0Var.f353c;
        int size = list.size();
        for (int i6 = 0; i6 < size; i6++) {
            if (((w) list.get(i6)).f().equals(str)) {
                l1 l1Var = new l1(this, str, str2, d0Var);
                this.f9070k.add(l1Var);
                if (this.f9074o) {
                    l1Var.b(this.f9073n);
                }
                l();
                return l1Var;
            }
        }
        return null;
    }

    public final void j() {
        if (this.f9073n != null) {
            f(null);
            this.f9074o = false;
            ArrayList arrayList = this.f9070k;
            int size = arrayList.size();
            for (int i6 = 0; i6 < size; i6++) {
                ((i1) arrayList.get(i6)).c();
            }
            h1 h1Var = this.f9073n;
            h1Var.b(2, 0, 0, null, null);
            h1Var.f9013b.f247b.clear();
            h1Var.f9012a.getBinder().unlinkToDeath(h1Var, 0);
            h1Var.f9018i.f9069j.post(new g1(h1Var, 0));
            this.f9073n = null;
        }
    }

    public final void k() {
        if (this.f9072m) {
            this.f9072m = false;
            j();
            try {
                this.f8956a.unbindService(this);
            } catch (IllegalArgumentException e5) {
                Log.e("MediaRouteProviderProxy", this + ": unbindService failed", e5);
            }
        }
    }

    public final void l() {
        if (!this.f9071l || (this.f8959e == null && this.f9070k.isEmpty())) {
            k();
        } else {
            h();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) throws RemoteException {
        if (this.f9072m) {
            j();
            Messenger messenger = iBinder != null ? new Messenger(iBinder) : null;
            if (messenger != null) {
                try {
                    if (messenger.getBinder() != null) {
                        h1 h1Var = new h1(this, messenger);
                        int i6 = h1Var.d;
                        h1Var.d = i6 + 1;
                        h1Var.f9016g = i6;
                        if (h1Var.b(1, i6, 4, null, null)) {
                            try {
                                h1Var.f9012a.getBinder().linkToDeath(h1Var, 0);
                                this.f9073n = h1Var;
                                return;
                            } catch (RemoteException unused) {
                                h1Var.binderDied();
                                return;
                            }
                        }
                        return;
                    }
                } catch (NullPointerException unused2) {
                }
            }
            Log.e("MediaRouteProviderProxy", this + ": Service returned invalid messenger binder");
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        j();
    }

    public final String toString() {
        return "Service connection " + this.f9068i.flattenToShortString();
    }
}
