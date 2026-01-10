package q4;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity;
import com.google.android.gms.internal.cast.d0;
import com.google.android.gms.internal.cast.j0;
import com.google.android.gms.internal.cast.u4;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w extends com.google.android.gms.internal.cast.s {
    public final /* synthetic */ int d = 1;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f9230e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(com.google.android.gms.internal.cast.j jVar) {
        super("com.google.android.gms.cast.framework.ISessionProvider", 0);
        this.f9230e = jVar;
    }

    @Override // com.google.android.gms.internal.cast.s
    public final boolean w(int i6, Parcel parcel, Parcel parcel2) {
        CastDevice castDevice;
        CastDevice castDevice2;
        Object obj = this.f9230e;
        final int i10 = 1;
        final int i11 = 0;
        switch (this.d) {
            case 0:
                e eVar = (e) obj;
                switch (i6) {
                    case 1:
                        m5.b bVar = new m5.b(eVar);
                        parcel2.writeNoException();
                        d0.d(parcel2, bVar);
                        break;
                    case 2:
                        Bundle bundle = (Bundle) d0.a(parcel, Bundle.CREATOR);
                        d0.b(parcel);
                        ((b) eVar).j(bundle);
                        parcel2.writeNoException();
                        break;
                    case 3:
                        Bundle bundle2 = (Bundle) d0.a(parcel, Bundle.CREATOR);
                        d0.b(parcel);
                        ((b) eVar).j(bundle2);
                        parcel2.writeNoException();
                        break;
                    case 4:
                        int i12 = d0.f4128a;
                        int i13 = parcel.readInt() != 0 ? 1 : 0;
                        d0.b(parcel);
                        b bVar2 = (b) eVar;
                        n nVar = bVar2.f9214e;
                        if (nVar != null) {
                            try {
                                l lVar = (l) nVar;
                                Parcel parcelL = lVar.l();
                                parcelL.writeInt(i13);
                                parcelL.writeInt(0);
                                lVar.x(parcelL, 6);
                            } catch (RemoteException e5) {
                                b.f9212m.a(e5, "Unable to call %s on %s.", "disconnectFromDevice", n.class.getSimpleName());
                            }
                            bVar2.b(0);
                        }
                        parcel2.writeNoException();
                        break;
                    case 5:
                        b bVar3 = (b) eVar;
                        bVar3.getClass();
                        b5.l.b("Must be called from the main thread.");
                        r4.f fVar = bVar3.f9218j;
                        long jH = fVar == null ? 0L : fVar.h() - bVar3.f9218j.c();
                        parcel2.writeNoException();
                        parcel2.writeLong(jH);
                        break;
                    case 6:
                        parcel2.writeNoException();
                        parcel2.writeInt(12451000);
                        break;
                    case 7:
                        Bundle bundle3 = (Bundle) d0.a(parcel, Bundle.CREATOR);
                        d0.b(parcel);
                        b bVar4 = (b) eVar;
                        bVar4.getClass();
                        bVar4.f9219k = CastDevice.l(bundle3);
                        parcel2.writeNoException();
                        break;
                    case 8:
                        Bundle bundle4 = (Bundle) d0.a(parcel, Bundle.CREATOR);
                        d0.b(parcel);
                        b bVar5 = (b) eVar;
                        bVar5.getClass();
                        bVar5.f9219k = CastDevice.l(bundle4);
                        parcel2.writeNoException();
                        break;
                    case 9:
                        Bundle bundle5 = (Bundle) d0.a(parcel, Bundle.CREATOR);
                        d0.b(parcel);
                        b bVar6 = (b) eVar;
                        bVar6.getClass();
                        CastDevice castDeviceL = CastDevice.l(bundle5);
                        if (castDeviceL != null && !castDeviceL.equals(bVar6.f9219k)) {
                            String str = castDeviceL.d;
                            boolean z7 = !TextUtils.isEmpty(str) && ((castDevice2 = bVar6.f9219k) == null || !TextUtils.equals(castDevice2.d, str));
                            bVar6.f9219k = castDeviceL;
                            b.f9212m.b("update to device (%s) with name %s", castDeviceL, true != z7 ? "unchanged" : "changed");
                            if (z7 && (castDevice = bVar6.f9219k) != null) {
                                s4.k kVar = bVar6.f9216h;
                                if (kVar != null) {
                                    v4.b bVar7 = s4.k.f9798v;
                                    Log.i(bVar7.f10671a, bVar7.d("update Cast device to %s", castDevice));
                                    kVar.f9811o = castDevice;
                                    kVar.c();
                                }
                                Iterator it = new HashSet(bVar6.d).iterator();
                                while (it.hasNext()) {
                                    j0 j0Var = (j0) it.next();
                                    switch (j0Var.f4260a) {
                                        case 2:
                                            int i14 = ExpandedControllerActivity.f3868n0;
                                            ((ExpandedControllerActivity) j0Var.f4261b).s();
                                            break;
                                    }
                                }
                                u4 u4Var = bVar6.f9220l;
                                if (u4Var != null) {
                                    u4Var.f4433a.l().f4488u++;
                                }
                            }
                        }
                        parcel2.writeNoException();
                        break;
                }
            case 1:
                com.google.android.gms.internal.cast.j jVar = (com.google.android.gms.internal.cast.j) obj;
                if (i6 == 1) {
                    String string = parcel.readString();
                    d0.b(parcel);
                    jVar.getClass();
                    Context context = jVar.f4256a;
                    CastOptions castOptions = jVar.d;
                    com.google.android.gms.internal.cast.u uVar = jVar.f4259e;
                    m5.a aVarD = new b(jVar.f4256a, jVar.f4257b, string, castOptions, uVar, new s4.k(context, castOptions, uVar)).d();
                    parcel2.writeNoException();
                    d0.d(parcel2, aVarD);
                    break;
                } else if (i6 == 2) {
                    boolean z10 = jVar.d.f3793e;
                    parcel2.writeNoException();
                    int i15 = d0.f4128a;
                    parcel2.writeInt(z10 ? 1 : 0);
                    break;
                } else if (i6 == 3) {
                    String str2 = jVar.f4257b;
                    parcel2.writeNoException();
                    parcel2.writeString(str2);
                    break;
                } else if (i6 == 4) {
                    parcel2.writeNoException();
                    parcel2.writeInt(12451000);
                    break;
                }
                break;
            case 2:
                b bVar8 = (b) obj;
                if (i6 == 1) {
                    String string2 = parcel.readString();
                    String string3 = parcel.readString();
                    d0.b(parcel);
                    p4.o oVar = bVar8.f9217i;
                    if (oVar != null && oVar.j()) {
                        p4.o oVar2 = bVar8.f9217i;
                        c6.c cVarC = c6.c.c();
                        cVarC.f3394c = new p4.k(oVar2, string2, string3, i11);
                        cVarC.f3392a = 8407;
                        oVar2.c(1, cVarC.b()).a(new w5.a(this) { // from class: q4.a0

                            /* renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ w f9211b;

                            {
                                this.f9211b = this;
                            }

                            @Override // w5.a
                            public final void e(w5.g gVar) {
                                switch (i10) {
                                    case 0:
                                        b.i((b) this.f9211b.f9230e, "launchApplication", gVar);
                                        break;
                                    default:
                                        b.i((b) this.f9211b.f9230e, "joinApplication", gVar);
                                        break;
                                }
                            }
                        });
                    }
                    parcel2.writeNoException();
                    break;
                } else if (i6 == 2) {
                    String string4 = parcel.readString();
                    LaunchOptions launchOptions = (LaunchOptions) d0.a(parcel, LaunchOptions.CREATOR);
                    d0.b(parcel);
                    p4.o oVar3 = bVar8.f9217i;
                    if (oVar3 != null && oVar3.j()) {
                        p4.o oVar4 = bVar8.f9217i;
                        c6.c cVarC2 = c6.c.c();
                        cVarC2.f3394c = new a1.b(oVar4, string4, launchOptions, 26);
                        cVarC2.f3392a = 8406;
                        oVar4.c(1, cVarC2.b()).a(new w5.a(this) { // from class: q4.a0

                            /* renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ w f9211b;

                            {
                                this.f9211b = this;
                            }

                            @Override // w5.a
                            public final void e(w5.g gVar) {
                                switch (i11) {
                                    case 0:
                                        b.i((b) this.f9211b.f9230e, "launchApplication", gVar);
                                        break;
                                    default:
                                        b.i((b) this.f9211b.f9230e, "joinApplication", gVar);
                                        break;
                                }
                            }
                        });
                    }
                    parcel2.writeNoException();
                    break;
                } else if (i6 == 3) {
                    String string5 = parcel.readString();
                    d0.b(parcel);
                    p4.o oVar5 = bVar8.f9217i;
                    if (oVar5 != null && oVar5.j()) {
                        p4.o oVar6 = bVar8.f9217i;
                        c6.c cVarC3 = c6.c.c();
                        cVarC3.f3394c = new p4.l(oVar6, string5);
                        cVarC3.f3392a = 8409;
                        oVar6.c(1, cVarC3.b());
                    }
                    parcel2.writeNoException();
                    break;
                } else if (i6 == 4) {
                    int i16 = parcel.readInt();
                    d0.b(parcel);
                    b.h(bVar8, i16);
                    parcel2.writeNoException();
                    break;
                } else if (i6 == 5) {
                    parcel2.writeNoException();
                    parcel2.writeInt(12451000);
                    break;
                }
                break;
            default:
                if (i6 == 1) {
                    long j10 = parcel.readLong();
                    long j11 = parcel.readLong();
                    d0.b(parcel);
                    ((s4.b) obj).publishProgress(Long.valueOf(j10), Long.valueOf(j11));
                    parcel2.writeNoException();
                    break;
                } else if (i6 == 2) {
                    parcel2.writeNoException();
                    parcel2.writeInt(12451000);
                    break;
                }
                break;
        }
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(b bVar) {
        super("com.google.android.gms.cast.framework.ICastConnectionController", 0);
        this.f9230e = bVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(e eVar) {
        super("com.google.android.gms.cast.framework.ISessionProxy", 0);
        this.f9230e = eVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(s4.b bVar) {
        super("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTaskProgressPublisher", 0);
        this.f9230e = bVar;
    }
}
