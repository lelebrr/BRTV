package x4;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import androidx.core.app.p;
import androidx.core.app.t;
import androidx.core.app.u;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.k0;
import com.google.android.gms.common.api.GoogleApiActivity;
import ea.q;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b extends c {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f10997c = new Object();
    public static final b d = new b();

    public static AlertDialog d(Activity activity, int i6, b5.g gVar, DialogInterface.OnCancelListener onCancelListener) {
        if (i6 == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        activity.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(activity, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(activity);
        }
        builder.setMessage(b5.f.b(activity, i6));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        Resources resources = activity.getResources();
        String string = i6 != 1 ? i6 != 2 ? i6 != 3 ? resources.getString(R.string.ok) : resources.getString(com.p2elite.brtv2.R.string.common_google_play_services_enable_button) : resources.getString(com.p2elite.brtv2.R.string.common_google_play_services_update_button) : resources.getString(com.p2elite.brtv2.R.string.common_google_play_services_install_button);
        if (string != null) {
            builder.setPositiveButton(string, gVar);
        }
        String strC = b5.f.c(activity, i6);
        if (strC != null) {
            builder.setTitle(strC);
        }
        Log.w("GoogleApiAvailability", a.e.n(i6, "Creating dialog for Google Play services availability issue. ConnectionResult="), new IllegalArgumentException());
        return builder.create();
    }

    public static void e(Activity activity, AlertDialog alertDialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof FragmentActivity) {
                k0 k0VarK = ((FragmentActivity) activity).k();
                f fVar = new f();
                b5.l.f(alertDialog, "Cannot display null dialog");
                alertDialog.setOnCancelListener(null);
                alertDialog.setOnDismissListener(null);
                fVar.f11005k0 = alertDialog;
                if (onCancelListener != null) {
                    fVar.f11006l0 = onCancelListener;
                }
                fVar.S(k0VarK, str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        a aVar = new a();
        b5.l.f(alertDialog, "Cannot display null dialog");
        alertDialog.setOnCancelListener(null);
        alertDialog.setOnDismissListener(null);
        aVar.f10994a = alertDialog;
        if (onCancelListener != null) {
            aVar.f10995b = onCancelListener;
        }
        aVar.show(fragmentManager, str);
    }

    public final void c(GoogleApiActivity googleApiActivity, int i6, GoogleApiActivity googleApiActivity2) {
        AlertDialog alertDialogD = d(googleApiActivity, i6, new b5.g(super.a(googleApiActivity, i6, "d"), googleApiActivity, 0), googleApiActivity2);
        if (alertDialogD == null) {
            return;
        }
        e(googleApiActivity, alertDialogD, "GooglePlayServicesErrorDialog", googleApiActivity2);
    }

    public final void f(Context context, int i6, PendingIntent pendingIntent) throws Resources.NotFoundException {
        int i10;
        Log.w("GoogleApiAvailability", q.f(i6, "GMS core API Availability. ConnectionResult=", ", tag=null"), new IllegalArgumentException());
        if (i6 == 18) {
            new g(this, context).sendEmptyMessageDelayed(1, 120000L);
            return;
        }
        if (pendingIntent == null) {
            if (i6 == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
                return;
            }
            return;
        }
        String strE = i6 == 6 ? b5.f.e(context, "common_google_play_services_resolution_required_title") : b5.f.c(context, i6);
        if (strE == null) {
            strE = context.getResources().getString(com.p2elite.brtv2.R.string.common_google_play_services_notification_ticker);
        }
        String strD = (i6 == 6 || i6 == 19) ? b5.f.d(context, "common_google_play_services_resolution_required_text", b5.f.a(context)) : b5.f.b(context, i6);
        Resources resources = context.getResources();
        Object systemService = context.getSystemService("notification");
        b5.l.e(systemService);
        NotificationManager notificationManager = (NotificationManager) systemService;
        u uVar = new u(context, null);
        uVar.f1221r = true;
        uVar.c(16, true);
        uVar.f1209e = u.b(strE);
        t tVar = new t(0);
        tVar.f1202b = u.b(strD);
        uVar.e(tVar);
        if (o9.e.v(context)) {
            uVar.B.icon = context.getApplicationInfo().icon;
            uVar.f1212i = 2;
            if (o9.e.w(context)) {
                uVar.f1207b.add(new p(com.p2elite.brtv2.R.drawable.common_full_open_on_phone, resources.getString(com.p2elite.brtv2.R.string.common_open_on_phone), pendingIntent));
            } else {
                uVar.f1210g = pendingIntent;
            }
        } else {
            uVar.B.icon = R.drawable.stat_sys_warning;
            uVar.B.tickerText = u.b(resources.getString(com.p2elite.brtv2.R.string.common_google_play_services_notification_ticker));
            uVar.B.when = System.currentTimeMillis();
            uVar.f1210g = pendingIntent;
            uVar.f = u.b(strD);
        }
        if (u7.d.t()) {
            if (!u7.d.t()) {
                throw new IllegalStateException();
            }
            synchronized (f10997c) {
            }
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
            String string = context.getResources().getString(com.p2elite.brtv2.R.string.common_google_play_services_notification_channel_name);
            if (notificationChannel == null) {
                notificationManager.createNotificationChannel(p4.f.o(string));
            } else if (!string.contentEquals(notificationChannel.getName())) {
                notificationChannel.setName(string);
                notificationManager.createNotificationChannel(notificationChannel);
            }
            uVar.f1227x = "com.google.android.gms.availability";
        }
        Notification notificationA = uVar.a();
        if (i6 == 1 || i6 == 2 || i6 == 3) {
            d.f11000a.set(false);
            i10 = 10436;
        } else {
            i10 = 39789;
        }
        notificationManager.notify(i10, notificationA);
    }

    public final void g(Activity activity, z4.f fVar, int i6, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog alertDialogD = d(activity, i6, new b5.g(super.a(activity, i6, "d"), fVar, 1), onCancelListener);
        if (alertDialogD == null) {
            return;
        }
        e(activity, alertDialogD, "GooglePlayServicesErrorDialog", onCancelListener);
    }
}
