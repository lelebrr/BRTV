package q4;

import android.content.Context;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.internal.cast.d0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: c, reason: collision with root package name */
    public static final v4.b f9225c = new v4.b("SessionManager", null);

    /* renamed from: a, reason: collision with root package name */
    public final v f9226a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f9227b;

    public f(v vVar, Context context) {
        this.f9226a = vVar;
        this.f9227b = context;
    }

    public final void a(g gVar) {
        if (gVar == null) {
            throw new NullPointerException("SessionManagerListener can't be null");
        }
        b5.l.b("Must be called from the main thread.");
        try {
            v vVar = this.f9226a;
            x xVar = new x(gVar);
            Parcel parcelL = vVar.l();
            d0.d(parcelL, xVar);
            vVar.x(parcelL, 2);
        } catch (RemoteException e5) {
            f9225c.a(e5, "Unable to call %s on %s.", "addSessionManagerListener", v.class.getSimpleName());
        }
    }

    public final void b(boolean z7) {
        v4.b bVar = f9225c;
        b5.l.b("Must be called from the main thread.");
        try {
            Log.i(bVar.f10671a, bVar.d("End session for %s", this.f9227b.getPackageName()));
            v vVar = this.f9226a;
            Parcel parcelL = vVar.l();
            int i6 = d0.f4128a;
            parcelL.writeInt(1);
            parcelL.writeInt(z7 ? 1 : 0);
            vVar.x(parcelL, 6);
        } catch (RemoteException e5) {
            bVar.a(e5, "Unable to call %s on %s.", "endCurrentSession", v.class.getSimpleName());
        }
    }

    public final b c() {
        b5.l.b("Must be called from the main thread.");
        e eVarD = d();
        if (eVarD == null || !(eVarD instanceof b)) {
            return null;
        }
        return (b) eVarD;
    }

    public final e d() {
        b5.l.b("Must be called from the main thread.");
        try {
            v vVar = this.f9226a;
            Parcel parcelW = vVar.w(vVar.l(), 1);
            m5.a aVarX = m5.b.x(parcelW.readStrongBinder());
            parcelW.recycle();
            return (e) m5.b.y(aVarX);
        } catch (RemoteException e5) {
            f9225c.a(e5, "Unable to call %s on %s.", "getWrappedCurrentSession", v.class.getSimpleName());
            return null;
        }
    }

    public final void e(g gVar) {
        b5.l.b("Must be called from the main thread.");
        if (gVar == null) {
            return;
        }
        try {
            v vVar = this.f9226a;
            x xVar = new x(gVar);
            Parcel parcelL = vVar.l();
            d0.d(parcelL, xVar);
            vVar.x(parcelL, 3);
        } catch (RemoteException e5) {
            f9225c.a(e5, "Unable to call %s on %s.", "removeSessionManagerListener", v.class.getSimpleName());
        }
    }
}
