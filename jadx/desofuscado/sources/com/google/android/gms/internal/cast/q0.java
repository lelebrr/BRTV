package com.google.android.gms.internal.cast;

import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q0 extends ConnectivityManager.NetworkCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4386a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4387b;

    public /* synthetic */ q0(int i6, Object obj) {
        this.f4386a = i6;
        this.f4387b = obj;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        switch (this.f4386a) {
            case 0:
                break;
            case 1:
                r3.n.f().post(new k3.q(0, this, true));
                break;
            default:
                a1.b.c((a1.b) this.f4387b, network, true);
                break;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
        switch (this.f4386a) {
            case 0:
                ((r0) this.f4387b).b(network, linkProperties);
                break;
            default:
                super.onLinkPropertiesChanged(network, linkProperties);
                break;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        List list;
        switch (this.f4386a) {
            case 0:
                r0 r0Var = (r0) this.f4387b;
                synchronized (r0Var.f4402h) {
                    try {
                        Map map = r0Var.d;
                        if (map != null && (list = r0Var.f4400e) != null) {
                            r0.f4396j.b("the network is lost", new Object[0]);
                            if (list.remove(network)) {
                                map.remove(network);
                            }
                            r0Var.c();
                            return;
                        }
                        return;
                    } finally {
                    }
                }
            case 1:
                r3.n.f().post(new k3.q(0, this, false));
                return;
            default:
                a1.b.c((a1.b) this.f4387b, network, false);
                return;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onUnavailable() {
        List list;
        switch (this.f4386a) {
            case 0:
                r0 r0Var = (r0) this.f4387b;
                synchronized (r0Var.f4402h) {
                    Map map = r0Var.d;
                    if (map != null && (list = r0Var.f4400e) != null) {
                        r0.f4396j.b("all networks are unavailable.", new Object[0]);
                        map.clear();
                        list.clear();
                        r0Var.c();
                        return;
                    }
                    return;
                }
            default:
                super.onUnavailable();
                return;
        }
    }

    private final void a(Network network) {
    }
}
