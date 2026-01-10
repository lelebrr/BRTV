package com.google.android.gms.internal.cast;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class l extends s {
    public final /* synthetic */ int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l(String str, int i6) {
        super(str, 0);
        this.d = i6;
    }

    @Override // com.google.android.gms.internal.cast.s
    public final boolean w(int i6, Parcel parcel, Parcel parcel2) {
        int i10 = 3;
        int i11 = 0;
        switch (this.d) {
            case 0:
                m mVar = null;
                Bundle bundle = null;
                switch (i6) {
                    case 1:
                        Bundle bundle2 = (Bundle) d0.a(parcel, Bundle.CREATOR);
                        IBinder strongBinder = parcel.readStrongBinder();
                        if (strongBinder != null) {
                            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.internal.IMediaRouterCallback");
                            mVar = iInterfaceQueryLocalInterface instanceof m ? (m) iInterfaceQueryLocalInterface : new m(strongBinder, "com.google.android.gms.cast.framework.internal.IMediaRouterCallback", 0);
                        }
                        d0.b(parcel);
                        u uVar = (u) this;
                        q1.l0 l0VarB = q1.l0.b(bundle2);
                        if (l0VarB != null) {
                            HashMap map = uVar.f4426g;
                            if (!map.containsKey(l0VarB)) {
                                map.put(l0VarB, new HashSet());
                            }
                            ((Set) map.get(l0VarB)).add(new n(mVar, uVar, uVar.f4427h));
                        }
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        Bundle bundle3 = (Bundle) d0.a(parcel, Bundle.CREATOR);
                        int i12 = parcel.readInt();
                        d0.b(parcel);
                        u uVar2 = (u) this;
                        q1.l0 l0VarB2 = q1.l0.b(bundle3);
                        if (l0VarB2 != null) {
                            if (Looper.myLooper() == Looper.getMainLooper()) {
                                uVar2.z(l0VarB2, i12);
                            } else {
                                new x0(Looper.getMainLooper(), 0).post(new androidx.appcompat.widget.r0(uVar2, l0VarB2, i12, i10));
                            }
                        }
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        Bundle bundle4 = (Bundle) d0.a(parcel, Bundle.CREATOR);
                        d0.b(parcel);
                        final u uVar3 = (u) this;
                        final q1.l0 l0VarB3 = q1.l0.b(bundle4);
                        if (l0VarB3 != null) {
                            if (Looper.myLooper() == Looper.getMainLooper()) {
                                uVar3.A(l0VarB3);
                            } else {
                                new x0(Looper.getMainLooper(), 0).post(new Runnable() { // from class: com.google.android.gms.internal.cast.t
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        uVar3.A(l0VarB3);
                                    }
                                });
                            }
                        }
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        Bundle bundle5 = (Bundle) d0.a(parcel, Bundle.CREATOR);
                        int i13 = parcel.readInt();
                        d0.b(parcel);
                        u uVar4 = (u) this;
                        q1.l0 l0VarB4 = q1.l0.b(bundle5);
                        if (l0VarB4 != null) {
                            uVar4.f4425e.getClass();
                            q1.u0.b();
                            q1.h hVarC = q1.u0.c();
                            hVarC.getClass();
                            if (!l0VarB4.d()) {
                                if ((i13 & 2) == 0 && hVarC.f8999p) {
                                    i11 = 1;
                                } else {
                                    q1.x0 x0Var = hVarC.f9004u;
                                    boolean z7 = x0Var != null && x0Var.f9177b && hVarC.h();
                                    ArrayList arrayList = hVarC.f8992i;
                                    int size = arrayList.size();
                                    for (int i14 = 0; i14 < size; i14++) {
                                        q1.s0 s0Var = (q1.s0) arrayList.get(i14);
                                        if (((i13 & 1) == 0 || !s0Var.d()) && ((!z7 || s0Var.d() || s0Var.c() == hVarC.f9001r) && s0Var.h(l0VarB4))) {
                                            i11 = 1;
                                        }
                                    }
                                }
                            }
                        }
                        parcel2.writeNoException();
                        parcel2.writeInt(i11);
                        return true;
                    case 5:
                        String string = parcel.readString();
                        d0.b(parcel);
                        v4.b bVar = u.f4424l;
                        bVar.b("select route with routeId = %s", string);
                        ((u) this).f4425e.getClass();
                        q1.u0.b();
                        Iterator it = q1.u0.c().f8992i.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                q1.s0 s0Var2 = (q1.s0) it.next();
                                if (s0Var2.f9131c.equals(string)) {
                                    bVar.b("media route is found and selected", new Object[0]);
                                    s0Var2.l(true);
                                }
                            }
                        }
                        parcel2.writeNoException();
                        return true;
                    case 6:
                        ((u) this).f4425e.getClass();
                        q1.u0.b();
                        q1.s0 s0Var3 = q1.u0.c().f9005v;
                        if (s0Var3 == null) {
                            throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
                        }
                        s0Var3.l(true);
                        parcel2.writeNoException();
                        return true;
                    case 7:
                        ((u) this).f4425e.getClass();
                        q1.u0.b();
                        q1.s0 s0Var4 = q1.u0.c().f9005v;
                        if (s0Var4 == null) {
                            throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
                        }
                        boolean zEquals = q1.u0.f().f9131c.equals(s0Var4.f9131c);
                        parcel2.writeNoException();
                        int i15 = d0.f4128a;
                        parcel2.writeInt(zEquals ? 1 : 0);
                        return true;
                    case 8:
                        String string2 = parcel.readString();
                        d0.b(parcel);
                        ((u) this).f4425e.getClass();
                        q1.u0.b();
                        Iterator it2 = q1.u0.c().f8992i.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                q1.s0 s0Var5 = (q1.s0) it2.next();
                                if (s0Var5.f9131c.equals(string2)) {
                                    bundle = s0Var5.f9145s;
                                }
                            }
                        }
                        parcel2.writeNoException();
                        if (bundle == null) {
                            parcel2.writeInt(0);
                            return true;
                        }
                        parcel2.writeInt(1);
                        bundle.writeToParcel(parcel2, 1);
                        return true;
                    case 9:
                        ((u) this).f4425e.getClass();
                        String str = q1.u0.f().f9131c;
                        parcel2.writeNoException();
                        parcel2.writeString(str);
                        return true;
                    case 10:
                        parcel2.writeNoException();
                        parcel2.writeInt(12451000);
                        return true;
                    case 11:
                        u uVar5 = (u) this;
                        HashMap map2 = uVar5.f4426g;
                        Iterator it3 = map2.values().iterator();
                        while (it3.hasNext()) {
                            Iterator it4 = ((Set) it3.next()).iterator();
                            while (it4.hasNext()) {
                                uVar5.f4425e.h((q1.m0) it4.next());
                            }
                        }
                        map2.clear();
                        parcel2.writeNoException();
                        return true;
                    case 12:
                        ((u) this).f4425e.getClass();
                        q1.u0.b();
                        q1.s0 s0Var6 = q1.u0.c().f9006w;
                        if (s0Var6 != null && q1.u0.f().f9131c.equals(s0Var6.f9131c)) {
                            i11 = 1;
                        }
                        parcel2.writeNoException();
                        int i16 = d0.f4128a;
                        parcel2.writeInt(i11);
                        return true;
                    case 13:
                        int i17 = parcel.readInt();
                        d0.b(parcel);
                        ((u) this).f4425e.getClass();
                        q1.u0.i(i17);
                        parcel2.writeNoException();
                        return true;
                    default:
                        return false;
                }
            default:
                if (i6 == 1) {
                    m5.b bVar2 = new m5.b((h) this);
                    parcel2.writeNoException();
                    d0.d(parcel2, bVar2);
                    return true;
                }
                if (i6 == 2) {
                    h hVar = (h) this;
                    v4.b bVar3 = h.f4168g;
                    Log.i(bVar3.f10671a, bVar3.d("onAppEnteredForeground", new Object[0]));
                    hVar.f = 1;
                    Iterator it5 = hVar.f4170e.iterator();
                    while (it5.hasNext()) {
                        ((q) it5.next()).f4385a.o();
                    }
                    parcel2.writeNoException();
                    return true;
                }
                if (i6 != 3) {
                    if (i6 != 4) {
                        return false;
                    }
                    parcel2.writeNoException();
                    parcel2.writeInt(12451000);
                    return true;
                }
                h hVar2 = (h) this;
                v4.b bVar4 = h.f4168g;
                Log.i(bVar4.f10671a, bVar4.d("onAppEnteredBackground", new Object[0]));
                hVar2.f = 2;
                Iterator it6 = hVar2.f4170e.iterator();
                while (it6.hasNext()) {
                    r rVar = ((q) it6.next()).f4385a;
                    rVar.getClass();
                    r.f.b("Stopping RouteDiscovery.", new Object[0]);
                    rVar.f4394c.clear();
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        v vVar = rVar.f4395e;
                        if (vVar.f4441b == null) {
                            vVar.f4441b = q1.u0.d(vVar.f4440a);
                        }
                        q1.u0 u0Var = vVar.f4441b;
                        if (u0Var != null) {
                            u0Var.h(rVar);
                        }
                    } else {
                        new x0(Looper.getMainLooper(), 0).post(new o(rVar, i11));
                    }
                }
                parcel2.writeNoException();
                return true;
        }
    }
}
