package com.tencent.bugly.proguard;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.media3.exoplayer.smoothstreaming.SsMediaSource;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class aq extends BroadcastReceiver {
    private static aq d;

    /* renamed from: b, reason: collision with root package name */
    private Context f5674b;

    /* renamed from: c, reason: collision with root package name */
    private String f5675c;

    /* renamed from: e, reason: collision with root package name */
    private boolean f5676e = true;

    /* renamed from: a, reason: collision with root package name */
    private IntentFilter f5673a = new IntentFilter();

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        try {
            a(context, intent);
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public static synchronized aq a() {
        try {
            if (d == null) {
                d = new aq();
            }
        } catch (Throwable th) {
            throw th;
        }
        return d;
    }

    public final synchronized void b(Context context) {
        try {
            al.a(aq.class, "Unregister broadcast receiver of Bugly.", new Object[0]);
            context.unregisterReceiver(this);
            this.f5674b = context;
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public final synchronized void a(String str) {
        try {
            if (!this.f5673a.hasAction(str)) {
                this.f5673a.addAction(str);
            }
            al.c("add action %s", str);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a(Context context) {
        this.f5674b = context;
        ap.a(new a3.c(this, 10, this));
    }

    private synchronized boolean a(Context context, Intent intent) {
        if (context != null && intent != null) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                if (this.f5676e) {
                    this.f5676e = false;
                    return true;
                }
                String strC = ab.c(this.f5674b);
                al.c("is Connect BC ".concat(String.valueOf(strC)), new Object[0]);
                al.a("network %s changed to %s", this.f5675c, String.valueOf(strC));
                if (strC == null) {
                    this.f5675c = null;
                    return true;
                }
                String str = this.f5675c;
                this.f5675c = strC;
                long jCurrentTimeMillis = System.currentTimeMillis();
                ac acVarA = ac.a();
                ai aiVarA = ai.a();
                aa aaVarA = aa.a(context);
                if (acVarA != null && aiVarA != null && aaVarA != null) {
                    if (!strC.equals(str) && jCurrentTimeMillis - aiVarA.a(at.f5691a) > SsMediaSource.DEFAULT_LIVE_PRESENTATION_DELAY_MS) {
                        al.a("try to upload crash on network changed.", new Object[0]);
                        at atVarA = at.a();
                        if (atVarA != null) {
                            atVarA.a(0L);
                        }
                        al.a("try to upload userinfo on network changed.", new Object[0]);
                        s.f5950b.b();
                    }
                    return true;
                }
                al.d("not inited BC not work", new Object[0]);
                return true;
            }
        }
        return false;
    }
}
