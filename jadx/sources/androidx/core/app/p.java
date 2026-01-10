package androidx.core.app;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f1192a;

    /* renamed from: b, reason: collision with root package name */
    public IconCompat f1193b;

    /* renamed from: c, reason: collision with root package name */
    public final c1[] f1194c;
    public final boolean d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f1195e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final CharSequence f1196g;

    /* renamed from: h, reason: collision with root package name */
    public final PendingIntent f1197h;

    public p(int i6, String str, PendingIntent pendingIntent) {
        this(i6 != 0 ? IconCompat.e(null, "", i6) : null, str, pendingIntent, new Bundle(), null, null, true, true);
    }

    public final IconCompat a() {
        int i6;
        if (this.f1193b == null && (i6 = this.f) != 0) {
            this.f1193b = IconCompat.e(null, "", i6);
        }
        return this.f1193b;
    }

    public p(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, c1[] c1VarArr, c1[] c1VarArr2, boolean z7, boolean z10) {
        this.f1195e = true;
        this.f1193b = iconCompat;
        if (iconCompat != null && iconCompat.j() == 2) {
            this.f = iconCompat.g();
        }
        this.f1196g = u.b(charSequence);
        this.f1197h = pendingIntent;
        this.f1192a = bundle == null ? new Bundle() : bundle;
        this.f1194c = c1VarArr;
        this.d = z7;
        this.f1195e = z10;
    }
}
