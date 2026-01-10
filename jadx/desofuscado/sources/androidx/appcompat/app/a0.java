package androidx.appcompat.app;

import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationManager;
import android.os.PowerManager;
import android.util.Log;
import java.util.Calendar;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a0 extends c0 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f223c = 1;
    public final /* synthetic */ g0 d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f224e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(g0 g0Var, a1.b bVar) {
        super(g0Var);
        this.d = g0Var;
        this.f224e = bVar;
    }

    @Override // androidx.appcompat.app.c0
    public final IntentFilter e() {
        switch (this.f223c) {
            case 0:
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            default:
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.TIME_SET");
                intentFilter2.addAction("android.intent.action.TIMEZONE_CHANGED");
                intentFilter2.addAction("android.intent.action.TIME_TICK");
                return intentFilter2;
        }
    }

    @Override // androidx.appcompat.app.c0
    public final int f() {
        Location location;
        boolean z7;
        long j10;
        switch (this.f223c) {
            case 0:
                return ((PowerManager) this.f224e).isPowerSaveMode() ? 2 : 1;
            default:
                a1.b bVar = (a1.b) this.f224e;
                u0 u0Var = (u0) bVar.d;
                if (u0Var.f370b > System.currentTimeMillis()) {
                    z7 = u0Var.f369a;
                } else {
                    Context context = (Context) bVar.f47b;
                    int iE = com.bumptech.glide.c.e(context, "android.permission.ACCESS_COARSE_LOCATION");
                    Location lastKnownLocation = null;
                    LocationManager locationManager = (LocationManager) bVar.f48c;
                    if (iE == 0) {
                        try {
                        } catch (Exception e5) {
                            Log.d("TwilightManager", "Failed to get last known location", e5);
                        }
                        Location lastKnownLocation2 = locationManager.isProviderEnabled("network") ? locationManager.getLastKnownLocation("network") : null;
                        location = lastKnownLocation2;
                    } else {
                        location = null;
                    }
                    if (com.bumptech.glide.c.e(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                        try {
                            if (locationManager.isProviderEnabled("gps")) {
                                lastKnownLocation = locationManager.getLastKnownLocation("gps");
                            }
                        } catch (Exception e10) {
                            Log.d("TwilightManager", "Failed to get last known location", e10);
                        }
                    }
                    if (lastKnownLocation == null || location == null ? lastKnownLocation != null : lastKnownLocation.getTime() > location.getTime()) {
                        location = lastKnownLocation;
                    }
                    if (location != null) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (t0.d == null) {
                            t0.d = new t0();
                        }
                        t0 t0Var = t0.d;
                        t0Var.a(location.getLatitude(), location.getLongitude(), jCurrentTimeMillis - 86400000);
                        t0Var.a(location.getLatitude(), location.getLongitude(), jCurrentTimeMillis);
                        z7 = t0Var.f366a == 1;
                        long j11 = t0Var.f368c;
                        long j12 = t0Var.f367b;
                        t0Var.a(location.getLatitude(), location.getLongitude(), 86400000 + jCurrentTimeMillis);
                        long j13 = t0Var.f368c;
                        if (j11 == -1 || j12 == -1) {
                            j10 = jCurrentTimeMillis + 43200000;
                        } else {
                            if (jCurrentTimeMillis <= j12) {
                                j13 = jCurrentTimeMillis > j11 ? j12 : j11;
                            }
                            j10 = j13 + 60000;
                        }
                        u0Var.f369a = z7;
                        u0Var.f370b = j10;
                    } else {
                        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                        int i6 = Calendar.getInstance().get(11);
                        if (i6 < 6 || i6 >= 22) {
                            z7 = true;
                        }
                    }
                }
                return z7 ? 2 : 1;
        }
    }

    @Override // androidx.appcompat.app.c0
    public final void l() throws IllegalAccessException, NoSuchFieldException, PackageManager.NameNotFoundException, SecurityException, IllegalArgumentException {
        switch (this.f223c) {
            case 0:
                this.d.m(true, true);
                break;
            default:
                this.d.m(true, true);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(g0 g0Var, Context context) {
        super(g0Var);
        this.d = g0Var;
        this.f224e = (PowerManager) context.getApplicationContext().getSystemService("power");
    }
}
