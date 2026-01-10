package com.google.android.gms.internal.cast;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.internal.zzaa;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g2 {

    /* renamed from: i, reason: collision with root package name */
    public static final v4.b f4161i = new v4.b("ApplicationAnalytics", null);

    /* renamed from: a, reason: collision with root package name */
    public final m1 f4162a;

    /* renamed from: b, reason: collision with root package name */
    public final h f4163b;

    /* renamed from: c, reason: collision with root package name */
    public final j2 f4164c;
    public final SharedPreferences f;

    /* renamed from: g, reason: collision with root package name */
    public h2 f4166g;

    /* renamed from: h, reason: collision with root package name */
    public q4.b f4167h;

    /* renamed from: e, reason: collision with root package name */
    public final x0 f4165e = new x0(Looper.getMainLooper(), 0);
    public final z d = new z(2, this);

    public g2(SharedPreferences sharedPreferences, m1 m1Var, h hVar, Bundle bundle, String str) {
        this.f = sharedPreferences;
        this.f4162a = m1Var;
        this.f4163b = hVar;
        this.f4164c = new j2(str, bundle);
    }

    public static void a(g2 g2Var, int i6) {
        f4161i.b("log session ended with error = %d", Integer.valueOf(i6));
        g2Var.c();
        g2Var.f4162a.a(g2Var.f4164c.a(g2Var.f4166g, i6), 228);
        g2Var.f4165e.removeCallbacks(g2Var.d);
        g2Var.f4166g = null;
    }

    public static void b(g2 g2Var) {
        h2 h2Var = g2Var.f4166g;
        h2Var.getClass();
        SharedPreferences sharedPreferences = g2Var.f;
        if (sharedPreferences == null) {
            return;
        }
        h2.f4174q.b("Save the ApplicationAnalyticsSession to SharedPreferences %s", sharedPreferences);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("application_id", h2Var.f4177b);
        editorEdit.putString("receiver_metrics_id", h2Var.f4178c);
        editorEdit.putLong("analytics_session_id", h2Var.d);
        editorEdit.putInt("event_sequence_number", h2Var.f4179e);
        editorEdit.putString("receiver_session_id", h2Var.f);
        editorEdit.putInt("device_capabilities", h2Var.f4180g);
        editorEdit.putString("device_model_name", h2Var.f4181h);
        editorEdit.putString("manufacturer", h2Var.f4182i);
        editorEdit.putString("product_name", h2Var.f4183j);
        editorEdit.putString("build_type", h2Var.f4184k);
        editorEdit.putString("cast_build_version", h2Var.f4185l);
        editorEdit.putString("system_build_number", h2Var.f4186m);
        editorEdit.putInt("device_category", h2Var.f4187n);
        editorEdit.putInt("analytics_session_start_type", h2Var.f4189p);
        editorEdit.putBoolean("is_output_switcher_enabled", h2Var.f4188o);
        editorEdit.apply();
    }

    public final void c() {
        if (!g()) {
            v4.b bVar = f4161i;
            Log.w(bVar.f10671a, bVar.d("The analyticsSession should not be null for logging. Create a dummy one.", new Object[0]));
            d();
        } else {
            q4.b bVar2 = this.f4167h;
            CastDevice castDeviceE = bVar2 != null ? bVar2.e() : null;
            if (castDeviceE != null && !TextUtils.equals(this.f4166g.f4178c, castDeviceE.f3661l)) {
                f(castDeviceE);
            }
            b5.l.e(this.f4166g);
        }
    }

    public final void d() {
        f4161i.b("Create a new ApplicationAnalyticsSession based on CastSession", new Object[0]);
        h2 h2Var = new h2(this.f4163b);
        h2.f4175r++;
        this.f4166g = h2Var;
        q4.b bVar = this.f4167h;
        h2Var.f4188o = bVar != null && bVar.f9215g.y();
        h2 h2Var2 = this.f4166g;
        b5.l.e(h2Var2);
        v4.b bVar2 = q4.a.f9200j;
        b5.l.b("Must be called from the main thread.");
        q4.a aVar = q4.a.f9202l;
        b5.l.e(aVar);
        b5.l.b("Must be called from the main thread.");
        h2Var2.f4177b = aVar.d.f3790a;
        q4.b bVar3 = this.f4167h;
        CastDevice castDeviceE = bVar3 == null ? null : bVar3.e();
        if (castDeviceE != null) {
            f(castDeviceE);
        }
        h2 h2Var3 = this.f4166g;
        b5.l.e(h2Var3);
        q4.b bVar4 = this.f4167h;
        h2Var3.f4189p = bVar4 != null ? bVar4.c() : 0;
        b5.l.e(this.f4166g);
    }

    public final void e() {
        x0 x0Var = this.f4165e;
        b5.l.e(x0Var);
        z zVar = this.d;
        b5.l.e(zVar);
        x0Var.postDelayed(zVar, 300000L);
    }

    public final void f(CastDevice castDevice) {
        h2 h2Var = this.f4166g;
        if (h2Var == null) {
            return;
        }
        h2Var.f4178c = castDevice.f3661l;
        h2Var.f4180g = castDevice.f3658i.f1866a;
        h2Var.f4181h = castDevice.f3655e;
        h2Var.f4187n = castDevice.m();
        zzaa zzaaVarN = castDevice.n();
        if (zzaaVarN != null) {
            String str = zzaaVarN.d;
            if (str != null) {
                h2Var.f4182i = str;
            }
            String str2 = zzaaVarN.f3889e;
            if (str2 != null) {
                h2Var.f4183j = str2;
            }
            String str3 = zzaaVarN.f;
            if (str3 != null) {
                h2Var.f4184k = str3;
            }
            String str4 = zzaaVarN.f3890g;
            if (str4 != null) {
                h2Var.f4185l = str4;
            }
            String str5 = zzaaVarN.f3891h;
            if (str5 != null) {
                h2Var.f4186m = str5;
            }
        }
    }

    public final boolean g() {
        String str;
        h2 h2Var = this.f4166g;
        v4.b bVar = f4161i;
        if (h2Var == null) {
            bVar.b("The analytics session is null when matching with application ID.", new Object[0]);
            return false;
        }
        v4.b bVar2 = q4.a.f9200j;
        b5.l.b("Must be called from the main thread.");
        q4.a aVar = q4.a.f9202l;
        b5.l.e(aVar);
        b5.l.b("Must be called from the main thread.");
        String str2 = aVar.d.f3790a;
        if (str2 == null || (str = this.f4166g.f4177b) == null || !TextUtils.equals(str, str2)) {
            bVar.b("The analytics session doesn't match the application ID %s", str2);
            return false;
        }
        b5.l.e(this.f4166g);
        return true;
    }

    public final boolean h(String str) {
        String str2;
        if (!g()) {
            return false;
        }
        b5.l.e(this.f4166g);
        if (str != null && (str2 = this.f4166g.f) != null && TextUtils.equals(str2, str)) {
            return true;
        }
        f4161i.b("The analytics session doesn't match the receiver session ID %s.", str);
        return false;
    }
}
