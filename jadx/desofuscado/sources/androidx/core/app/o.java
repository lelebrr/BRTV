package androidx.core.app;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final IconCompat f1187a;

    /* renamed from: b, reason: collision with root package name */
    public final CharSequence f1188b;

    /* renamed from: c, reason: collision with root package name */
    public final PendingIntent f1189c;
    public final boolean d;

    /* renamed from: e, reason: collision with root package name */
    public final Bundle f1190e;
    public final ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f1191g;

    public o(int i6, String str, PendingIntent pendingIntent) {
        this(i6 != 0 ? IconCompat.e(null, "", i6) : null, str, pendingIntent, new Bundle());
    }

    public final p a() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = this.f;
        if (arrayList3 != null) {
            Iterator it = arrayList3.iterator();
            if (it.hasNext()) {
                throw a.e.l(it);
            }
        }
        return new p(this.f1187a, this.f1188b, this.f1189c, this.f1190e, arrayList2.isEmpty() ? null : (c1[]) arrayList2.toArray(new c1[arrayList2.size()]), arrayList.isEmpty() ? null : (c1[]) arrayList.toArray(new c1[arrayList.size()]), this.d, this.f1191g);
    }

    public o(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle) {
        this.d = true;
        this.f1191g = true;
        this.f1187a = iconCompat;
        this.f1188b = u.b(charSequence);
        this.f1189c = pendingIntent;
        this.f1190e = bundle;
        this.f = null;
        this.d = true;
        this.f1191g = true;
    }
}
