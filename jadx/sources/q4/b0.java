package q4;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.cast.d0;
import com.google.android.gms.internal.cast.e0;
import com.google.android.gms.internal.cast.f0;
import com.google.android.gms.internal.cast.u4;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f9221a;

    public b0(b bVar) {
        this.f9221a = bVar;
    }

    public final void a() {
        b bVar = this.f9221a;
        if (bVar.f9214e == null) {
            return;
        }
        try {
            r4.f fVar = bVar.f9218j;
            if (fVar != null) {
                fVar.y();
            }
            l lVar = (l) bVar.f9214e;
            Parcel parcelL = lVar.l();
            int i6 = d0.f4128a;
            parcelL.writeInt(0);
            lVar.x(parcelL, 1);
        } catch (RemoteException e5) {
            b.f9212m.a(e5, "Unable to call %s on %s.", "onConnected", n.class.getSimpleName());
        }
        u4 u4Var = bVar.f9220l;
        if (u4Var != null) {
            c2.b.k(u4Var.f4433a, new f0(new e0(3)));
        }
    }
}
