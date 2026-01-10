package b5;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.zax;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements b {

    /* renamed from: b, reason: collision with root package name */
    public static d f3243b;

    /* renamed from: c, reason: collision with root package name */
    public static final RootTelemetryConfiguration f3244c = new RootTelemetryConfiguration(0, false, false, 0, 0);
    public static final d d = new d();

    /* renamed from: a, reason: collision with root package name */
    public Object f3245a;

    public /* synthetic */ d(Object obj) {
        this.f3245a = obj;
    }

    public static synchronized d b() {
        try {
            if (f3243b == null) {
                f3243b = new d();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f3243b;
    }

    public static View e(Context context, int i6, int i10) throws m5.c {
        d dVar = d;
        try {
            zax zaxVar = new zax(1, i6, i10, null);
            return (View) m5.b.y(((h) dVar.d(context)).z(new m5.b(context), zaxVar));
        } catch (Exception e5) {
            throw new m5.c(a.e.m(i6, i10, "Could not get button with size ", " and color "), e5);
        }
    }

    @Override // b5.b
    public void a(ConnectionResult connectionResult) {
        boolean z7 = connectionResult.f3906b == 0;
        v5.a aVar = (v5.a) this.f3245a;
        if (z7) {
            aVar.b(null, aVar.f4010x);
            return;
        }
        d dVar = aVar.f4002p;
        if (dVar != null) {
            ((y4.i) dVar.f3245a).l(connectionResult);
        }
    }

    public h c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        return iInterfaceQueryLocalInterface instanceof h ? (h) iInterfaceQueryLocalInterface : new h(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator", 1);
    }

    public Object d(Context context) throws PackageManager.NameNotFoundException, m5.c {
        Context contextCreatePackageContext;
        if (((h) this.f3245a) == null) {
            l.e(context);
            AtomicBoolean atomicBoolean = x4.d.f11000a;
            try {
                contextCreatePackageContext = context.createPackageContext("com.google.android.gms", 3);
            } catch (PackageManager.NameNotFoundException unused) {
                contextCreatePackageContext = null;
            }
            if (contextCreatePackageContext == null) {
                throw new m5.c("Could not get remote context.");
            }
            try {
                this.f3245a = c((IBinder) contextCreatePackageContext.getClassLoader().loadClass("com.google.android.gms.common.ui.SignInButtonCreatorImpl").newInstance());
            } catch (ClassNotFoundException e5) {
                throw new m5.c("Could not load creator class.", e5);
            } catch (IllegalAccessException e10) {
                throw new m5.c("Could not access creator.", e10);
            } catch (InstantiationException e11) {
                throw new m5.c("Could not instantiate creator.", e11);
            }
        }
        return (h) this.f3245a;
    }
}
