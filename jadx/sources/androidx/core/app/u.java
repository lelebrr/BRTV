package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import com.p2elite.brtv2.R;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u {
    public final boolean A;
    public final Notification B;
    public final ArrayList C;

    /* renamed from: a, reason: collision with root package name */
    public final Context f1206a;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f1209e;
    public CharSequence f;

    /* renamed from: g, reason: collision with root package name */
    public PendingIntent f1210g;

    /* renamed from: h, reason: collision with root package name */
    public IconCompat f1211h;

    /* renamed from: i, reason: collision with root package name */
    public int f1212i;

    /* renamed from: k, reason: collision with root package name */
    public boolean f1214k;

    /* renamed from: l, reason: collision with root package name */
    public k0 f1215l;

    /* renamed from: m, reason: collision with root package name */
    public CharSequence f1216m;

    /* renamed from: n, reason: collision with root package name */
    public int f1217n;

    /* renamed from: o, reason: collision with root package name */
    public int f1218o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f1219p;

    /* renamed from: q, reason: collision with root package name */
    public String f1220q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f1222s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f1223t;

    /* renamed from: u, reason: collision with root package name */
    public Bundle f1224u;

    /* renamed from: x, reason: collision with root package name */
    public String f1227x;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1207b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1208c = new ArrayList();
    public final ArrayList d = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    public boolean f1213j = true;

    /* renamed from: r, reason: collision with root package name */
    public boolean f1221r = false;

    /* renamed from: v, reason: collision with root package name */
    public int f1225v = 0;

    /* renamed from: w, reason: collision with root package name */
    public int f1226w = 0;

    /* renamed from: y, reason: collision with root package name */
    public int f1228y = 0;

    /* renamed from: z, reason: collision with root package name */
    public int f1229z = 0;

    public u(Context context, String str) {
        Notification notification = new Notification();
        this.B = notification;
        this.f1206a = context;
        this.f1227x = str;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.f1212i = 0;
        this.C = new ArrayList();
        this.A = true;
    }

    public static CharSequence b(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    public final Notification a() {
        Notification notificationBuild;
        Bundle bundle;
        RemoteViews remoteViewsMakeHeadsUpContentView;
        RemoteViews remoteViewsMakeBigContentView;
        t0 t0Var = new t0(this);
        u uVar = t0Var.f1205c;
        k0 k0Var = uVar.f1215l;
        if (k0Var != null) {
            k0Var.apply(t0Var);
        }
        RemoteViews remoteViewsMakeContentView = k0Var != null ? k0Var.makeContentView(t0Var) : null;
        int i6 = Build.VERSION.SDK_INT;
        Notification.Builder builder = t0Var.f1204b;
        if (i6 < 26 && i6 < 24) {
            builder.setExtras(t0Var.d);
            notificationBuild = builder.build();
        } else {
            notificationBuild = builder.build();
        }
        if (remoteViewsMakeContentView != null) {
            notificationBuild.contentView = remoteViewsMakeContentView;
        }
        if (k0Var != null && (remoteViewsMakeBigContentView = k0Var.makeBigContentView(t0Var)) != null) {
            notificationBuild.bigContentView = remoteViewsMakeBigContentView;
        }
        if (k0Var != null && (remoteViewsMakeHeadsUpContentView = uVar.f1215l.makeHeadsUpContentView(t0Var)) != null) {
            notificationBuild.headsUpContentView = remoteViewsMakeHeadsUpContentView;
        }
        if (k0Var != null && (bundle = notificationBuild.extras) != null) {
            k0Var.addCompatExtras(bundle);
        }
        return notificationBuild;
    }

    public final void c(int i6, boolean z7) {
        Notification notification = this.B;
        if (z7) {
            notification.flags = i6 | notification.flags;
        } else {
            notification.flags = (~i6) & notification.flags;
        }
    }

    public final void d(Bitmap bitmap) throws Resources.NotFoundException {
        IconCompat iconCompat;
        if (bitmap == null) {
            iconCompat = null;
        } else {
            if (Build.VERSION.SDK_INT < 27) {
                Resources resources = this.f1206a.getResources();
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_width);
                int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_height);
                if (bitmap.getWidth() > dimensionPixelSize || bitmap.getHeight() > dimensionPixelSize2) {
                    double dMin = Math.min(dimensionPixelSize / Math.max(1, bitmap.getWidth()), dimensionPixelSize2 / Math.max(1, bitmap.getHeight()));
                    bitmap = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * dMin), (int) Math.ceil(bitmap.getHeight() * dMin), true);
                }
            }
            PorterDuff.Mode mode = IconCompat.f1252k;
            bitmap.getClass();
            IconCompat iconCompat2 = new IconCompat(1);
            iconCompat2.f1254b = bitmap;
            iconCompat = iconCompat2;
        }
        this.f1211h = iconCompat;
    }

    public final void e(k0 k0Var) {
        if (this.f1215l != k0Var) {
            this.f1215l = k0Var;
            if (k0Var != null) {
                k0Var.setBuilder(this);
            }
        }
    }
}
