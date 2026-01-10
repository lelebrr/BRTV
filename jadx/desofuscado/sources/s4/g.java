package s4;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.o;
import androidx.core.app.p;
import androidx.core.app.u;
import androidx.media3.common.C;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.cast.framework.media.NotificationAction;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.internal.cast.l2;
import com.google.android.gms.internal.cast.m2;
import com.google.android.gms.internal.cast.w0;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import r4.t;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: u, reason: collision with root package name */
    public static final v4.b f9774u = new v4.b("MediaNotificationProxy", null);

    /* renamed from: a, reason: collision with root package name */
    public final Context f9775a;

    /* renamed from: b, reason: collision with root package name */
    public final NotificationManager f9776b;

    /* renamed from: c, reason: collision with root package name */
    public final NotificationOptions f9777c;
    public final ComponentName d;

    /* renamed from: e, reason: collision with root package name */
    public final ComponentName f9778e;
    public ArrayList f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public int[] f9779g;

    /* renamed from: h, reason: collision with root package name */
    public final long f9780h;

    /* renamed from: i, reason: collision with root package name */
    public final c2.b f9781i;

    /* renamed from: j, reason: collision with root package name */
    public final Resources f9782j;

    /* renamed from: k, reason: collision with root package name */
    public f f9783k;

    /* renamed from: l, reason: collision with root package name */
    public l6.h f9784l;

    /* renamed from: m, reason: collision with root package name */
    public p f9785m;

    /* renamed from: n, reason: collision with root package name */
    public p f9786n;

    /* renamed from: o, reason: collision with root package name */
    public p f9787o;

    /* renamed from: p, reason: collision with root package name */
    public p f9788p;

    /* renamed from: q, reason: collision with root package name */
    public p f9789q;

    /* renamed from: r, reason: collision with root package name */
    public p f9790r;

    /* renamed from: s, reason: collision with root package name */
    public p f9791s;

    /* renamed from: t, reason: collision with root package name */
    public p f9792t;

    public g(Context context) throws Resources.NotFoundException {
        this.f9775a = context;
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        this.f9776b = notificationManager;
        v4.b bVar = q4.a.f9200j;
        b5.l.b("Must be called from the main thread.");
        q4.a aVar = q4.a.f9202l;
        b5.l.e(aVar);
        b5.l.b("Must be called from the main thread.");
        CastOptions castOptions = aVar.d;
        b5.l.e(castOptions);
        CastMediaOptions castMediaOptions = castOptions.f;
        b5.l.e(castMediaOptions);
        NotificationOptions notificationOptions = castMediaOptions.d;
        b5.l.e(notificationOptions);
        this.f9777c = notificationOptions;
        castMediaOptions.j();
        Resources resources = context.getResources();
        this.f9782j = resources;
        this.d = new ComponentName(context.getApplicationContext(), castMediaOptions.f3815a);
        String str = notificationOptions.d;
        if (TextUtils.isEmpty(str)) {
            this.f9778e = null;
        } else {
            this.f9778e = new ComponentName(context.getApplicationContext(), str);
        }
        this.f9780h = notificationOptions.f3827c;
        int dimensionPixelSize = resources.getDimensionPixelSize(notificationOptions.f3840r);
        this.f9781i = new c2.b(context.getApplicationContext(), new ImageHints(1, dimensionPixelSize, dimensionPixelSize));
        if (u7.d.t() && notificationManager != null) {
            NotificationChannel notificationChannelN = p4.f.n(context.getResources().getString(R.string.media_notification_channel_name));
            notificationChannelN.setShowBadge(false);
            notificationManager.createNotificationChannel(notificationChannelN);
        }
        l2.a(m2.CAF_MEDIA_NOTIFICATION_PROXY);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final androidx.core.app.p a(java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: s4.g.a(java.lang.String):androidx.core.app.p");
    }

    public final void b() {
        Bitmap bitmap;
        PendingIntent activities;
        p pVarA;
        NotificationManager notificationManager = this.f9776b;
        if (notificationManager == null || this.f9783k == null) {
            return;
        }
        l6.h hVar = this.f9784l;
        if (hVar == null || (bitmap = (Bitmap) hVar.f8017c) == null || bitmap.getWidth() <= 1 || bitmap.getHeight() <= 1) {
            bitmap = null;
        }
        Context context = this.f9775a;
        u uVar = new u(context, "cast_media_notification");
        uVar.d(bitmap);
        NotificationOptions notificationOptions = this.f9777c;
        uVar.B.icon = notificationOptions.f3828e;
        uVar.f1209e = u.b(this.f9783k.d);
        uVar.f = u.b(this.f9782j.getString(notificationOptions.f3841s, this.f9783k.f9772e));
        uVar.c(2, true);
        uVar.f1213j = false;
        uVar.f1226w = 1;
        ComponentName componentName = this.f9778e;
        if (componentName == null) {
            activities = null;
        } else {
            Intent intent = new Intent();
            intent.putExtra("targetActivity", componentName);
            intent.setAction(componentName.flattenToString());
            intent.setComponent(componentName);
            ArrayList arrayList = new ArrayList();
            ComponentName component = intent.getComponent();
            if (component == null) {
                component = intent.resolveActivity(context.getPackageManager());
            }
            if (component != null) {
                int size = arrayList.size();
                try {
                    for (Intent intentZ = a2.a.z(context, component); intentZ != null; intentZ = a2.a.z(context, intentZ.getComponent())) {
                        arrayList.add(size, intentZ);
                    }
                } catch (PackageManager.NameNotFoundException e5) {
                    Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                    throw new IllegalArgumentException(e5);
                }
            }
            arrayList.add(intent);
            int i6 = w0.f4448a | C.BUFFER_FLAG_FIRST_SAMPLE;
            if (arrayList.isEmpty()) {
                throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
            }
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            activities = PendingIntent.getActivities(context, 1, intentArr, i6, null);
        }
        if (activities != null) {
            uVar.f1210g = activities;
        }
        v4.b bVar = f9774u;
        t tVar = notificationOptions.F;
        if (tVar != null) {
            bVar.b("actionsProvider != null", new Object[0]);
            int[] iArrB = l.b(tVar);
            this.f9779g = iArrB == null ? null : (int[]) iArrB.clone();
            ArrayList<NotificationAction> arrayListA = l.a(tVar);
            this.f = new ArrayList();
            if (arrayListA != null) {
                for (NotificationAction notificationAction : arrayListA) {
                    String str = notificationAction.f3822a;
                    boolean zEquals = str.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK);
                    String str2 = notificationAction.f3822a;
                    if (zEquals || str.equals(MediaIntentReceiver.ACTION_SKIP_NEXT) || str.equals(MediaIntentReceiver.ACTION_SKIP_PREV) || str.equals(MediaIntentReceiver.ACTION_FORWARD) || str.equals(MediaIntentReceiver.ACTION_REWIND) || str.equals(MediaIntentReceiver.ACTION_STOP_CASTING) || str.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                        pVarA = a(str2);
                    } else {
                        Intent intent2 = new Intent(str2);
                        intent2.setComponent(this.d);
                        pVarA = new o(notificationAction.f3823b, notificationAction.f3824c, PendingIntent.getBroadcast(context, 0, intent2, w0.f4448a)).a();
                    }
                    if (pVarA != null) {
                        this.f.add(pVarA);
                    }
                }
            }
        } else {
            bVar.b("actionsProvider == null", new Object[0]);
            this.f = new ArrayList();
            Iterator it = notificationOptions.f3825a.iterator();
            while (it.hasNext()) {
                p pVarA2 = a((String) it.next());
                if (pVarA2 != null) {
                    this.f.add(pVarA2);
                }
            }
            int[] iArr = notificationOptions.f3826b;
            this.f9779g = (int[]) Arrays.copyOf(iArr, iArr.length).clone();
        }
        Iterator it2 = this.f.iterator();
        while (it2.hasNext()) {
            p pVar = (p) it2.next();
            if (pVar != null) {
                uVar.f1207b.add(pVar);
            }
        }
        n1.b bVar2 = new n1.b();
        bVar2.f8372a = null;
        int[] iArr2 = this.f9779g;
        if (iArr2 != null) {
            bVar2.f8372a = iArr2;
        }
        MediaSessionCompat.Token token = this.f9783k.f9769a;
        if (token != null) {
            bVar2.f8373b = token;
        }
        uVar.e(bVar2);
        notificationManager.notify("castMediaNotification", 1, uVar.a());
    }
}
