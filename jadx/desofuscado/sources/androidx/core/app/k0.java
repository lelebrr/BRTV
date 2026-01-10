package androidx.core.app;

import android.app.Notification;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class k0 {
    CharSequence mBigContentTitle;
    protected u mBuilder;
    CharSequence mSummaryText;
    boolean mSummaryTextSet = false;

    public static k0 constructCompatStyleByName(String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
            case "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle":
                return new c0();
            case "androidx.core.app.NotificationCompat$BigPictureStyle":
                return new s();
            case "androidx.core.app.NotificationCompat$CallStyle":
                return new a0();
            case "androidx.core.app.NotificationCompat$InboxStyle":
                return new t(1);
            case "androidx.core.app.NotificationCompat$BigTextStyle":
                return new t(0);
            case "androidx.core.app.NotificationCompat$MessagingStyle":
                return new j0();
            default:
                return null;
        }
    }

    public static k0 constructCompatStyleForBundle(Bundle bundle) {
        k0 k0VarConstructCompatStyleByName = constructCompatStyleByName(bundle.getString("androidx.core.app.extra.COMPAT_TEMPLATE"));
        if (k0VarConstructCompatStyleByName != null) {
            return k0VarConstructCompatStyleByName;
        }
        if (bundle.containsKey("android.selfDisplayName") || bundle.containsKey("android.messagingStyleUser")) {
            return new j0();
        }
        if (bundle.containsKey("android.picture") || bundle.containsKey("android.pictureIcon")) {
            return new s();
        }
        if (bundle.containsKey("android.bigText")) {
            return new t(0);
        }
        if (bundle.containsKey("android.textLines")) {
            return new t(1);
        }
        if (bundle.containsKey("android.callType")) {
            return new a0();
        }
        String string = bundle.getString("android.template");
        if (string == null) {
            return null;
        }
        if (string.equals(Notification.BigPictureStyle.class.getName())) {
            return new s();
        }
        if (string.equals(Notification.BigTextStyle.class.getName())) {
            return new t(0);
        }
        if (string.equals(Notification.InboxStyle.class.getName())) {
            return new t(1);
        }
        if (Build.VERSION.SDK_INT < 24) {
            return null;
        }
        if (string.equals(android.support.v4.media.b.h().getName())) {
            return new j0();
        }
        if (string.equals(android.support.v4.media.b.C().getName())) {
            return new c0();
        }
        return null;
    }

    public static k0 constructStyleForExtras(Bundle bundle) {
        k0 k0VarConstructCompatStyleForBundle = constructCompatStyleForBundle(bundle);
        if (k0VarConstructCompatStyleForBundle == null) {
            return null;
        }
        try {
            k0VarConstructCompatStyleForBundle.restoreFromCompatExtras(bundle);
            return k0VarConstructCompatStyleForBundle;
        } catch (ClassCastException unused) {
            return null;
        }
    }

    public static k0 extractStyleFromNotification(Notification notification) {
        Bundle bundle = notification.extras;
        if (bundle == null) {
            return null;
        }
        return constructStyleForExtras(bundle);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:41:0x012c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.Bitmap a(androidx.core.graphics.drawable.IconCompat r12, int r13, int r14) throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            Method dump skipped, instructions count: 406
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.k0.a(androidx.core.graphics.drawable.IconCompat, int, int):android.graphics.Bitmap");
    }

    public void addCompatExtras(Bundle bundle) {
        if (this.mSummaryTextSet) {
            bundle.putCharSequence("android.summaryText", this.mSummaryText);
        }
        CharSequence charSequence = this.mBigContentTitle;
        if (charSequence != null) {
            bundle.putCharSequence("android.title.big", charSequence);
        }
        String className = getClassName();
        if (className != null) {
            bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", className);
        }
    }

    public abstract void apply(n nVar);

    public RemoteViews applyStandardTemplate(boolean z7, int i6, boolean z10) throws Resources.NotFoundException {
        boolean z11;
        int i10;
        Resources resources = this.mBuilder.f1206a.getResources();
        RemoteViews remoteViews = new RemoteViews(this.mBuilder.f1206a.getPackageName(), i6);
        u uVar = this.mBuilder;
        int i11 = uVar.f1212i;
        if (uVar.f1211h != null) {
            remoteViews.setViewVisibility(R.id.icon, 0);
            remoteViews.setImageViewBitmap(R.id.icon, createColoredBitmap(this.mBuilder.f1211h, 0));
            if (z7 && this.mBuilder.B.icon != 0) {
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.notification_right_icon_size);
                int dimensionPixelSize2 = dimensionPixelSize - (resources.getDimensionPixelSize(R.dimen.notification_small_icon_background_padding) * 2);
                u uVar2 = this.mBuilder;
                remoteViews.setImageViewBitmap(R.id.right_icon, b(uVar2.B.icon, dimensionPixelSize, dimensionPixelSize2, uVar2.f1225v));
                remoteViews.setViewVisibility(R.id.right_icon, 0);
            }
        } else if (z7 && uVar.B.icon != 0) {
            remoteViews.setViewVisibility(R.id.icon, 0);
            int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.notification_large_icon_width) - resources.getDimensionPixelSize(R.dimen.notification_big_circle_margin);
            int dimensionPixelSize4 = resources.getDimensionPixelSize(R.dimen.notification_small_icon_size_as_large);
            u uVar3 = this.mBuilder;
            remoteViews.setImageViewBitmap(R.id.icon, b(uVar3.B.icon, dimensionPixelSize3, dimensionPixelSize4, uVar3.f1225v));
        }
        CharSequence charSequence = this.mBuilder.f1209e;
        if (charSequence != null) {
            remoteViews.setTextViewText(R.id.title, charSequence);
        }
        CharSequence charSequence2 = this.mBuilder.f;
        if (charSequence2 != null) {
            remoteViews.setTextViewText(R.id.text, charSequence2);
            z11 = true;
        } else {
            z11 = false;
        }
        this.mBuilder.getClass();
        this.mBuilder.getClass();
        remoteViews.setViewVisibility(R.id.info, 8);
        CharSequence charSequence3 = this.mBuilder.f1216m;
        if (charSequence3 != null) {
            remoteViews.setTextViewText(R.id.text, charSequence3);
            CharSequence charSequence4 = this.mBuilder.f;
            if (charSequence4 != null) {
                remoteViews.setTextViewText(R.id.text2, charSequence4);
                remoteViews.setViewVisibility(R.id.text2, 0);
                if (z10) {
                    remoteViews.setTextViewTextSize(R.id.text, 0, resources.getDimensionPixelSize(R.dimen.notification_subtext_size));
                }
                remoteViews.setViewPadding(R.id.line1, 0, 0, 0, 0);
            } else {
                remoteViews.setViewVisibility(R.id.text2, 8);
            }
        }
        u uVar4 = this.mBuilder;
        if ((uVar4.f1213j ? uVar4.B.when : 0L) != 0) {
            if (uVar4.f1214k) {
                remoteViews.setViewVisibility(R.id.chronometer, 0);
                u uVar5 = this.mBuilder;
                remoteViews.setLong(R.id.chronometer, "setBase", (SystemClock.elapsedRealtime() - System.currentTimeMillis()) + (uVar5.f1213j ? uVar5.B.when : 0L));
                remoteViews.setBoolean(R.id.chronometer, "setStarted", true);
                this.mBuilder.getClass();
            } else {
                remoteViews.setViewVisibility(R.id.time, 0);
                u uVar6 = this.mBuilder;
                remoteViews.setLong(R.id.time, "setTime", uVar6.f1213j ? uVar6.B.when : 0L);
            }
            i10 = 0;
        } else {
            i10 = 8;
        }
        remoteViews.setViewVisibility(R.id.right_side, i10);
        remoteViews.setViewVisibility(R.id.line3, z11 ? 0 : 8);
        return remoteViews;
    }

    public final Bitmap b(int i6, int i10, int i11, int i12) throws PackageManager.NameNotFoundException {
        if (i12 == 0) {
            i12 = 0;
        }
        Context context = this.mBuilder.f1206a;
        PorterDuff.Mode mode = IconCompat.f1252k;
        context.getClass();
        Bitmap bitmapA = a(IconCompat.e(context.getResources(), context.getPackageName(), R.drawable.notification_icon_background), i12, i10);
        Canvas canvas = new Canvas(bitmapA);
        Drawable drawableMutate = this.mBuilder.f1206a.getResources().getDrawable(i6).mutate();
        drawableMutate.setFilterBitmap(true);
        int i13 = (i10 - i11) / 2;
        int i14 = i11 + i13;
        drawableMutate.setBounds(i13, i13, i14, i14);
        drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
        drawableMutate.draw(canvas);
        return bitmapA;
    }

    public Notification build() {
        u uVar = this.mBuilder;
        if (uVar != null) {
            return uVar.a();
        }
        return null;
    }

    public void buildIntoRemoteViews(RemoteViews remoteViews, RemoteViews remoteViews2) throws Resources.NotFoundException {
        remoteViews.setViewVisibility(R.id.title, 8);
        remoteViews.setViewVisibility(R.id.text2, 8);
        remoteViews.setViewVisibility(R.id.text, 8);
        remoteViews.removeAllViews(R.id.notification_main_column);
        remoteViews.addView(R.id.notification_main_column, remoteViews2.clone());
        remoteViews.setViewVisibility(R.id.notification_main_column, 0);
        Resources resources = this.mBuilder.f1206a.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.notification_top_pad);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.notification_top_pad_large_text);
        float f = resources.getConfiguration().fontScale;
        if (f < 1.0f) {
            f = 1.0f;
        } else if (f > 1.3f) {
            f = 1.3f;
        }
        float f3 = (f - 1.0f) / 0.29999995f;
        remoteViews.setViewPadding(R.id.notification_main_column_container, 0, Math.round((f3 * dimensionPixelSize2) + ((1.0f - f3) * dimensionPixelSize)), 0, 0);
    }

    public void clearCompatExtraKeys(Bundle bundle) {
        bundle.remove("android.summaryText");
        bundle.remove("android.title.big");
        bundle.remove("androidx.core.app.extra.COMPAT_TEMPLATE");
    }

    public Bitmap createColoredBitmap(IconCompat iconCompat, int i6) {
        return a(iconCompat, i6, 0);
    }

    public boolean displayCustomViewInline() {
        return false;
    }

    public String getClassName() {
        return null;
    }

    public RemoteViews makeBigContentView(n nVar) {
        return null;
    }

    public RemoteViews makeContentView(n nVar) {
        return null;
    }

    public RemoteViews makeHeadsUpContentView(n nVar) {
        return null;
    }

    public void restoreFromCompatExtras(Bundle bundle) {
        if (bundle.containsKey("android.summaryText")) {
            this.mSummaryText = bundle.getCharSequence("android.summaryText");
            this.mSummaryTextSet = true;
        }
        this.mBigContentTitle = bundle.getCharSequence("android.title.big");
    }

    public void setBuilder(u uVar) {
        if (this.mBuilder != uVar) {
            this.mBuilder = uVar;
            if (uVar != null) {
                uVar.e(this);
            }
        }
    }

    public Bitmap createColoredBitmap(int i6, int i10) {
        Context context = this.mBuilder.f1206a;
        PorterDuff.Mode mode = IconCompat.f1252k;
        context.getClass();
        return a(IconCompat.e(context.getResources(), context.getPackageName(), i6), i10, 0);
    }
}
