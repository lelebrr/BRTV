package com.google.android.gms.internal.cast;

import android.content.Context;
import com.google.android.gms.cast.framework.CastOptions;
import java.util.Collections;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final Context f4256a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4257b;

    /* renamed from: c, reason: collision with root package name */
    public final q4.w f4258c;
    public final CastOptions d;

    /* renamed from: e, reason: collision with root package name */
    public final u f4259e;

    public j(Context context, CastOptions castOptions, u uVar) {
        String strU;
        boolean zIsEmpty = Collections.unmodifiableList(castOptions.f3791b).isEmpty();
        String str = castOptions.f3790a;
        if (zIsEmpty) {
            strU = p4.j.a(str);
        } else {
            List listUnmodifiableList = Collections.unmodifiableList(castOptions.f3791b);
            if (str == null) {
                throw new IllegalArgumentException("applicationId cannot be null");
            }
            if (listUnmodifiableList == null) {
                throw new IllegalArgumentException("namespaces cannot be null");
            }
            strU = l6.h.u(new l6.h(str, listUnmodifiableList));
        }
        this.f4258c = new q4.w(this);
        this.f4256a = context.getApplicationContext();
        b5.l.c(strU);
        this.f4257b = strU;
        this.d = castOptions;
        this.f4259e = uVar;
    }
}
