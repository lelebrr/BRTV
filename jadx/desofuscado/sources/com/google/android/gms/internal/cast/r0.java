package com.google.android.gms.internal.cast;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r0 implements p0 {

    /* renamed from: j, reason: collision with root package name */
    public static final v4.b f4396j = new v4.b("ConnectivityMonitor", null);

    /* renamed from: a, reason: collision with root package name */
    public final k6 f4397a;

    /* renamed from: c, reason: collision with root package name */
    public final ConnectivityManager f4399c;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f4401g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f4402h = new Object();

    /* renamed from: i, reason: collision with root package name */
    public final Set f4403i = Collections.synchronizedSet(new HashSet());
    public final Map d = Collections.synchronizedMap(new HashMap());

    /* renamed from: e, reason: collision with root package name */
    public final List f4400e = Collections.synchronizedList(new ArrayList());

    /* renamed from: b, reason: collision with root package name */
    public final q0 f4398b = new q0(0, this);

    public r0(Context context, k6 k6Var) {
        this.f4397a = k6Var;
        this.f4401g = context;
        this.f4399c = (ConnectivityManager) context.getSystemService("connectivity");
    }

    @Override // com.google.android.gms.internal.cast.p0
    /* renamed from: a */
    public final void mo2a() {
        ConnectivityManager connectivityManager;
        LinkProperties linkProperties;
        f4396j.b("Start monitoring connectivity changes", new Object[0]);
        if (this.f || (connectivityManager = this.f4399c) == null || u7.d.b(this.f4401g, "android.permission.ACCESS_NETWORK_STATE") != 0) {
            return;
        }
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork != null && (linkProperties = connectivityManager.getLinkProperties(activeNetwork)) != null) {
            b(activeNetwork, linkProperties);
        }
        connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addTransportType(1).build(), this.f4398b);
        this.f = true;
    }

    public final void b(Network network, LinkProperties linkProperties) {
        List list;
        synchronized (this.f4402h) {
            try {
                Map map = this.d;
                if (map != null && (list = this.f4400e) != null) {
                    f4396j.b("a new network is available", new Object[0]);
                    if (map.containsKey(network)) {
                        list.remove(network);
                    }
                    map.put(network, linkProperties);
                    list.add(network);
                    c();
                }
            } finally {
            }
        }
    }

    public final void c() {
        k6 k6Var = this.f4397a;
        if (k6Var == null) {
            return;
        }
        Set set = this.f4403i;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    l6 l6Var = (l6) k6Var;
                    if (!l6Var.f4307a.isShutdown()) {
                        l6Var.execute(new z(1, this));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
