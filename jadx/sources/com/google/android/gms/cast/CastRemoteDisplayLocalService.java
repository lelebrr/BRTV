package com.google.android.gms.cast;

import a.f;
import android.annotation.SuppressLint;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.appcompat.app.x;
import com.google.android.gms.internal.cast.x0;
import com.p2elite.brtv2.R;
import java.util.concurrent.atomic.AtomicBoolean;
import p4.d;
import p4.e;
import p4.h;
import p4.i;
import v4.b;

/* compiled from: MyApplication */
@SuppressLint({"ForegroundServiceType"})
@Deprecated
/* loaded from: classes.dex */
public abstract class CastRemoteDisplayLocalService extends Service {
    public static final b d = new b("CastRDLocalService", null);

    /* renamed from: e, reason: collision with root package name */
    public static final Object f3670e = null;

    /* renamed from: a, reason: collision with root package name */
    public boolean f3671a = false;

    /* renamed from: b, reason: collision with root package name */
    public e f3672b;

    /* renamed from: c, reason: collision with root package name */
    public final i f3673c;

    static {
        new AtomicBoolean(false);
    }

    public CastRemoteDisplayLocalService() {
        new h(this);
        this.f3673c = new i();
    }

    public final void a(String str) {
        d.b("[Instance: %s] %s", this, str);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        a("onBind");
        return this.f3673c;
    }

    @Override // android.app.Service
    public final void onCreate() {
        a("onCreate");
        super.onCreate();
        new x0(getMainLooper(), 0).postDelayed(new f(27, this), 100L);
        if (this.f3672b == null) {
            int i6 = d.f8873a;
            e eVar = new e(this, e.f8874j, y4.b.f11391a0, y4.f.f11393c);
            new b("CastRemoteDisplay", null);
            this.f3672b = eVar;
        }
        if (u7.d.t()) {
            NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
            x.s();
            NotificationChannel notificationChannelB = p4.f.b(getString(R.string.cast_notification_default_channel_name));
            notificationChannelB.setShowBadge(false);
            notificationManager.createNotificationChannel(notificationChannelB);
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i6, int i10) {
        a("onStartCommand");
        this.f3671a = true;
        return 2;
    }
}
