package androidx.core.app;

import android.app.Notification;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.core.graphics.drawable.IconCompat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s extends k0 {

    /* renamed from: a, reason: collision with root package name */
    public IconCompat f1198a;

    /* renamed from: b, reason: collision with root package name */
    public IconCompat f1199b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1200c;
    public boolean d;

    public static IconCompat c(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 23 && android.support.v4.media.a.w(parcelable)) {
            return IconCompat.c(android.support.v4.media.a.g(parcelable));
        }
        if (!(parcelable instanceof Bitmap)) {
            return null;
        }
        IconCompat iconCompat = new IconCompat(1);
        iconCompat.f1254b = (Bitmap) parcelable;
        return iconCompat;
    }

    @Override // androidx.core.app.k0
    public final void apply(n nVar) {
        Notification.BigPictureStyle bigContentTitle = new Notification.BigPictureStyle(((t0) nVar).f1204b).setBigContentTitle(this.mBigContentTitle);
        IconCompat iconCompat = this.f1198a;
        if (iconCompat != null) {
            if (Build.VERSION.SDK_INT >= 31) {
                r.a(bigContentTitle, iconCompat.n(((t0) nVar).f1203a));
            } else if (iconCompat.j() == 1) {
                bigContentTitle = bigContentTitle.bigPicture(this.f1198a.f());
            }
        }
        if (this.f1200c) {
            IconCompat iconCompat2 = this.f1199b;
            if (iconCompat2 == null) {
                bigContentTitle.bigLargeIcon((Bitmap) null);
            } else if (Build.VERSION.SDK_INT >= 23) {
                q.a(bigContentTitle, iconCompat2.n(((t0) nVar).f1203a));
            } else if (iconCompat2.j() == 1) {
                bigContentTitle.bigLargeIcon(this.f1199b.f());
            } else {
                bigContentTitle.bigLargeIcon((Bitmap) null);
            }
        }
        if (this.mSummaryTextSet) {
            bigContentTitle.setSummaryText(this.mSummaryText);
        }
        if (Build.VERSION.SDK_INT >= 31) {
            r.c(bigContentTitle, this.d);
            r.b(bigContentTitle, null);
        }
    }

    @Override // androidx.core.app.k0
    public final void clearCompatExtraKeys(Bundle bundle) {
        super.clearCompatExtraKeys(bundle);
        bundle.remove("android.largeIcon.big");
        bundle.remove("android.picture");
        bundle.remove("android.pictureIcon");
        bundle.remove("android.showBigPictureWhenCollapsed");
    }

    @Override // androidx.core.app.k0
    public final String getClassName() {
        return "androidx.core.app.NotificationCompat$BigPictureStyle";
    }

    @Override // androidx.core.app.k0
    public final void restoreFromCompatExtras(Bundle bundle) {
        super.restoreFromCompatExtras(bundle);
        if (bundle.containsKey("android.largeIcon.big")) {
            this.f1199b = c(bundle.getParcelable("android.largeIcon.big"));
            this.f1200c = true;
        }
        Parcelable parcelable = bundle.getParcelable("android.picture");
        this.f1198a = parcelable != null ? c(parcelable) : c(bundle.getParcelable("android.pictureIcon"));
        this.d = bundle.getBoolean("android.showBigPictureWhenCollapsed");
    }
}
