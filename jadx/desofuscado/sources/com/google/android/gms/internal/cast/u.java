package com.google.android.gms.internal.cast;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.mediarouter.media.MediaTransferReceiver;
import com.google.android.gms.cast.framework.CastOptions;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u extends l {

    /* renamed from: l, reason: collision with root package name */
    public static final v4.b f4424l = new v4.b("MediaRouterProxy", null);

    /* renamed from: e, reason: collision with root package name */
    public final q1.u0 f4425e;
    public final CastOptions f;

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f4426g;

    /* renamed from: h, reason: collision with root package name */
    public final x f4427h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f4428i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f4429j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f4430k;

    public u(Context context, q1.u0 u0Var, CastOptions castOptions, v4.r rVar) {
        super("com.google.android.gms.cast.framework.internal.IMediaRouter", 0);
        this.f4426g = new HashMap();
        this.f4425e = u0Var;
        this.f = castOptions;
        if (Build.VERSION.SDK_INT < 33) {
            return;
        }
        f4424l.b("Set up MediaRouterParams based on module flag and CastOptions for Android T or above", new Object[0]);
        this.f4427h = new x(castOptions);
        new Intent(context, (Class<?>) MediaTransferReceiver.class).setPackage(context.getPackageName());
        this.f4428i = !context.getPackageManager().queryBroadcastReceivers(r6, 0).isEmpty();
        this.f4429j = true;
        rVar.d(new String[]{"com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED"}).a(new l7(1, this));
    }

    public final void A(q1.l0 l0Var) {
        Set set = (Set) this.f4426g.get(l0Var);
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            this.f4425e.h((q1.m0) it.next());
        }
    }

    public final void x(MediaSessionCompat mediaSessionCompat) {
        this.f4425e.getClass();
        q1.u0.b();
        q1.h hVarC = q1.u0.c();
        hVarC.D = mediaSessionCompat;
        q1.e eVar = mediaSessionCompat != null ? new q1.e(hVarC, mediaSessionCompat) : null;
        q1.e eVar2 = hVarC.C;
        if (eVar2 != null) {
            eVar2.a();
        }
        hVarC.C = eVar;
        if (eVar != null) {
            hVarC.m();
        }
    }

    public final boolean y() {
        CastOptions castOptions;
        return this.f4428i && this.f4429j && (castOptions = this.f) != null && castOptions.f3800m;
    }

    public final void z(q1.l0 l0Var, int i6) {
        Set set = (Set) this.f4426g.get(l0Var);
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            this.f4425e.a(l0Var, (q1.m0) it.next(), i6);
        }
    }
}
