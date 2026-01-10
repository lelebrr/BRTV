package q4;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.appcompat.app.r0;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.cast.d0;
import com.google.android.gms.internal.cast.j0;
import com.google.android.gms.internal.cast.u4;
import com.google.android.gms.internal.cast.x0;
import java.util.HashSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends e {

    /* renamed from: m, reason: collision with root package name */
    public static final v4.b f9212m = new v4.b("CastSession", null);

    /* renamed from: c, reason: collision with root package name */
    public final Context f9213c;
    public final HashSet d;

    /* renamed from: e, reason: collision with root package name */
    public final n f9214e;
    public final CastOptions f;

    /* renamed from: g, reason: collision with root package name */
    public final com.google.android.gms.internal.cast.u f9215g;

    /* renamed from: h, reason: collision with root package name */
    public final s4.k f9216h;

    /* renamed from: i, reason: collision with root package name */
    public p4.o f9217i;

    /* renamed from: j, reason: collision with root package name */
    public r4.f f9218j;

    /* renamed from: k, reason: collision with root package name */
    public CastDevice f9219k;

    /* renamed from: l, reason: collision with root package name */
    public u4 f9220l;

    public b(Context context, String str, String str2, CastOptions castOptions, com.google.android.gms.internal.cast.u uVar, s4.k kVar) {
        super(context, str, str2);
        this.d = new HashSet();
        this.f9213c = context.getApplicationContext();
        this.f = castOptions;
        this.f9215g = uVar;
        this.f9216h = kVar;
        m5.a aVarD = d();
        w wVar = new w(this);
        v4.b bVar = com.google.android.gms.internal.cast.i.f4216a;
        n nVarZ = null;
        if (aVarD != null) {
            try {
                nVarZ = com.google.android.gms.internal.cast.i.b(context).z(castOptions, aVarD, wVar);
            } catch (RemoteException | c e5) {
                com.google.android.gms.internal.cast.i.f4216a.a(e5, "Unable to call %s on %s.", "newCastSessionImpl", com.google.android.gms.internal.cast.k.class.getSimpleName());
            }
        }
        this.f9214e = nVarZ;
    }

    public static void h(b bVar, int i6) {
        s4.k kVar = bVar.f9216h;
        if (kVar.f9813q) {
            kVar.f9813q = false;
            r4.f fVar = kVar.f9810n;
            if (fVar != null) {
                b5.l.b("Must be called from the main thread.");
                z zVar = kVar.f9809m;
                if (zVar != null) {
                    fVar.f9547h.remove(zVar);
                }
            }
            kVar.f9801c.x(null);
            c2.b bVar2 = kVar.f9804h;
            if (bVar2 != null) {
                bVar2.j();
                bVar2.f = null;
            }
            c2.b bVar3 = kVar.f9805i;
            if (bVar3 != null) {
                bVar3.j();
                bVar3.f = null;
            }
            MediaSessionCompat mediaSessionCompat = kVar.f9812p;
            if (mediaSessionCompat != null) {
                mediaSessionCompat.setCallback(null);
                kVar.f9812p.setMetadata(new MediaMetadataCompat.Builder().build());
                kVar.j(0, null);
            }
            MediaSessionCompat mediaSessionCompat2 = kVar.f9812p;
            if (mediaSessionCompat2 != null) {
                mediaSessionCompat2.setActive(false);
                kVar.f9812p.release();
                kVar.f9812p = null;
            }
            kVar.f9810n = null;
            kVar.f9811o = null;
            kVar.h();
            if (i6 == 0) {
                kVar.i();
            }
        }
        p4.o oVar = bVar.f9217i;
        if (oVar != null) {
            oVar.i();
            bVar.f9217i = null;
        }
        bVar.f9219k = null;
        r4.f fVar2 = bVar.f9218j;
        if (fVar2 != null) {
            fVar2.z(null);
            bVar.f9218j = null;
        }
    }

    public static void i(b bVar, String str, w5.g gVar) {
        int i6 = 0;
        v4.b bVar2 = f9212m;
        n nVar = bVar.f9214e;
        if (nVar == null) {
            return;
        }
        try {
            if (!gVar.e()) {
                Exception excC = gVar.c();
                if (!(excC instanceof y4.e)) {
                    l lVar = (l) nVar;
                    Parcel parcelL = lVar.l();
                    parcelL.writeInt(2476);
                    lVar.x(parcelL, 5);
                    return;
                }
                int i10 = ((y4.e) excC).f11392a.f3925a;
                l lVar2 = (l) nVar;
                Parcel parcelL2 = lVar2.l();
                parcelL2.writeInt(i10);
                lVar2.x(parcelL2, 5);
                return;
            }
            v4.t tVar = (v4.t) gVar.d();
            Status status = tVar.f10711a;
            if (!(status.f3925a <= 0)) {
                bVar2.b("%s() -> failure result", str);
                int i11 = status.f3925a;
                l lVar3 = (l) nVar;
                Parcel parcelL3 = lVar3.l();
                parcelL3.writeInt(i11);
                lVar3.x(parcelL3, 5);
                return;
            }
            bVar2.b("%s() -> success result", str);
            r4.f fVar = new r4.f(new v4.l());
            bVar.f9218j = fVar;
            fVar.z(bVar.f9217i);
            r4.f fVar2 = bVar.f9218j;
            z zVar = new z(i6, bVar);
            fVar2.getClass();
            b5.l.b("Must be called from the main thread.");
            fVar2.f9547h.add(zVar);
            bVar.f9218j.y();
            bVar.f9216h.a(bVar.f9218j, bVar.e());
            ApplicationMetadata applicationMetadata = tVar.f10712b;
            b5.l.e(applicationMetadata);
            String str2 = tVar.f10713c;
            String str3 = tVar.d;
            b5.l.e(str3);
            boolean z7 = tVar.f10714e;
            l lVar4 = (l) nVar;
            Parcel parcelL4 = lVar4.l();
            d0.c(parcelL4, applicationMetadata);
            parcelL4.writeString(str2);
            parcelL4.writeString(str3);
            parcelL4.writeInt(z7 ? 1 : 0);
            lVar4.x(parcelL4, 4);
        } catch (RemoteException e5) {
            bVar2.a(e5, "Unable to call %s on %s.", "methods", n.class.getSimpleName());
        }
    }

    public final CastDevice e() {
        b5.l.b("Must be called from the main thread.");
        return this.f9219k;
    }

    public final r4.f f() {
        b5.l.b("Must be called from the main thread.");
        return this.f9218j;
    }

    public final void g(boolean z7) {
        b5.l.b("Must be called from the main thread.");
        p4.o oVar = this.f9217i;
        if (oVar == null || !oVar.j()) {
            return;
        }
        c6.c cVarC = c6.c.c();
        cVarC.f3394c = new r0(4, oVar, z7);
        cVarC.f3392a = 8412;
        oVar.c(1, cVarC.b());
    }

    public final void j(Bundle bundle) {
        boolean z7;
        CastDevice castDeviceL = CastDevice.l(bundle);
        this.f9219k = castDeviceL;
        if (castDeviceL == null) {
            b5.l.b("Must be called from the main thread.");
            u uVar = this.f9224a;
            if (uVar != null) {
                try {
                    s sVar = (s) uVar;
                    Parcel parcelW = sVar.w(sVar.l(), 9);
                    int i6 = d0.f4128a;
                    z7 = parcelW.readInt() != 0;
                    parcelW.recycle();
                } catch (RemoteException e5) {
                    e.f9223b.a(e5, "Unable to call %s on %s.", "isResuming", u.class.getSimpleName());
                }
            } else {
                z7 = false;
            }
            if (z7) {
                u uVar2 = this.f9224a;
                if (uVar2 == null) {
                    return;
                }
                try {
                    s sVar2 = (s) uVar2;
                    Parcel parcelL = sVar2.l();
                    parcelL.writeInt(2153);
                    sVar2.x(parcelL, 15);
                    return;
                } catch (RemoteException e10) {
                    e.f9223b.a(e10, "Unable to call %s on %s.", "notifyFailedToResumeSession", u.class.getSimpleName());
                    return;
                }
            }
            u uVar3 = this.f9224a;
            if (uVar3 == null) {
                return;
            }
            try {
                s sVar3 = (s) uVar3;
                Parcel parcelL2 = sVar3.l();
                parcelL2.writeInt(2151);
                sVar3.x(parcelL2, 12);
                return;
            } catch (RemoteException e11) {
                e.f9223b.a(e11, "Unable to call %s on %s.", "notifyFailedToStartSession", u.class.getSimpleName());
                return;
            }
        }
        p4.o oVar = this.f9217i;
        if (oVar != null) {
            oVar.i();
            this.f9217i = null;
        }
        f9212m.b("Acquiring a connection to Google Play Services for %s", this.f9219k);
        CastDevice castDevice = this.f9219k;
        b5.l.e(castDevice);
        Bundle bundle2 = new Bundle();
        CastOptions castOptions = this.f;
        CastMediaOptions castMediaOptions = castOptions == null ? null : castOptions.f;
        NotificationOptions notificationOptions = castMediaOptions != null ? castMediaOptions.d : null;
        boolean z10 = castMediaOptions != null && castMediaOptions.f3818e;
        bundle2.putBoolean("com.google.android.gms.cast.EXTRA_CAST_FRAMEWORK_NOTIFICATION_ENABLED", notificationOptions != null);
        bundle2.putBoolean("com.google.android.gms.cast.EXTRA_CAST_REMOTE_CONTROL_NOTIFICATION_ENABLED", z10);
        com.google.android.gms.internal.cast.u uVar4 = this.f9215g;
        bundle2.putBoolean("com.google.android.gms.cast.EXTRA_CAST_ALWAYS_FOLLOW_SESSION_ENABLED", uVar4.y());
        bundle2.putBoolean("com.google.android.gms.cast.EXTRA_USE_ROUTE_CONNECTION", uVar4.f4430k);
        a1.b bVar = new a1.b(castDevice, new j0(1, this));
        bVar.d = bundle2;
        p4.a aVar = new p4.a(bVar);
        Context context = this.f9213c;
        int i10 = p4.c.f8872a;
        p4.o oVar2 = new p4.o(context, aVar);
        oVar2.D.add(new b0(this));
        this.f9217i = oVar2;
        z4.h hVarB = oVar2.b(oVar2.f8891j);
        z4.j jVar = new z4.j();
        j7.c cVar = new j7.c(23, oVar2);
        x4.e eVar = new x4.e(29);
        oVar2.E = 2;
        jVar.f11614c = hVarB;
        jVar.f11612a = cVar;
        jVar.f11613b = eVar;
        jVar.d = new Feature[]{p4.j.f8878a};
        jVar.f11615e = 8428;
        z4.g gVar = hVarB.f11611a;
        b5.l.f(gVar, "Key must not be null");
        z4.h hVar = jVar.f11614c;
        Feature[] featureArr = jVar.d;
        int i11 = jVar.f11615e;
        s.g gVar2 = new s.g(jVar, hVar, featureArr, i11);
        s2.c cVar2 = new s2.c(jVar, gVar);
        b5.l.f(hVar.f11611a, "Listener has already been released.");
        z4.e eVar2 = oVar2.f11402i;
        eVar2.getClass();
        w5.d dVar = new w5.d();
        eVar2.e(dVar, i11, oVar2);
        z4.t tVar = new z4.t(new z4.x(new z4.u(gVar2, cVar2), dVar), eVar2.f11604i.get(), oVar2);
        x0 x0Var = eVar2.f11608m;
        x0Var.sendMessage(x0Var.obtainMessage(8, tVar));
    }
}
