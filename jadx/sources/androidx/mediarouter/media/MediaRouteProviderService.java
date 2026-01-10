package androidx.mediarouter.media;

import a.e;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.appcompat.app.f;
import androidx.appcompat.app.r0;
import androidx.mediarouter.app.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import q1.e0;
import q1.h0;
import q1.k0;
import q1.u0;
import q1.w;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class MediaRouteProviderService extends Service {
    public static final /* synthetic */ int f = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Messenger f2738a = new Messenger(new f(this));

    /* renamed from: b, reason: collision with root package name */
    public final c f2739b = new c(9, this);

    /* renamed from: c, reason: collision with root package name */
    public final q1.f f2740c;
    public e0 d;

    /* renamed from: e, reason: collision with root package name */
    public final k0 f2741e;

    static {
        Log.isLoggable("MediaRouteProviderSrv", 3);
    }

    public MediaRouteProviderService() {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f2741e = new h0(this);
        } else {
            this.f2741e = new k0(this);
        }
        k0 k0Var = this.f2741e;
        k0Var.getClass();
        this.f2740c = new q1.f(1, k0Var);
    }

    public static Bundle a(r0 r0Var, int i6) {
        if (r0Var == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        List<w> list = (List) r0Var.f353c;
        arrayList.addAll(list);
        arrayList.clear();
        boolean z7 = i6 < 4 ? false : r0Var.f352b;
        for (w wVar : list) {
            if (i6 >= wVar.f9170a.getInt("minClientVersion", 1) && i6 <= wVar.f9170a.getInt("maxClientVersion", Integer.MAX_VALUE)) {
                if (arrayList.contains(wVar)) {
                    throw new IllegalArgumentException("route descriptor already added");
                }
                arrayList.add(wVar);
            }
        }
        List listEmptyList = arrayList.isEmpty() ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(arrayList));
        Bundle bundle = new Bundle();
        if (!listEmptyList.isEmpty()) {
            int size = listEmptyList.size();
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(size);
            for (int i10 = 0; i10 < size; i10++) {
                arrayList2.add(((w) listEmptyList.get(i10)).f9170a);
            }
            bundle.putParcelableArrayList("routes", arrayList2);
        }
        bundle.putBoolean("supportsDynamicGroupRoute", z7);
        return bundle;
    }

    public static void d(Messenger messenger, int i6) {
        if (i6 != 0) {
            e(messenger, 1, i6, 0, null, null);
        }
    }

    public static void e(Messenger messenger, int i6, int i10, int i11, Bundle bundle, Bundle bundle2) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i6;
        messageObtain.arg1 = i10;
        messageObtain.arg2 = i11;
        messageObtain.obj = bundle;
        messageObtain.setData(bundle2);
        try {
            messenger.send(messageObtain);
        } catch (DeadObjectException unused) {
        } catch (RemoteException e5) {
            StringBuilder sb = new StringBuilder("Could not send message to ");
            sb.append("Client connection " + messenger.getBinder().toString());
            Log.e("MediaRouteProviderSrv", sb.toString(), e5);
        }
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        this.f2741e.a(context);
    }

    public final void b() {
        e0 e0VarC;
        if (this.d != null || (e0VarC = c()) == null) {
            return;
        }
        String packageName = ((ComponentName) e0VarC.f8957b.f7444b).getPackageName();
        if (packageName.equals(getPackageName())) {
            this.d = e0VarC;
            u0.b();
            e0VarC.d = this.f2740c;
        } else {
            StringBuilder sbX = e.x("onCreateMediaRouteProvider() returned a provider whose package name does not match the package name of the service.  A media route provider service can only export its own media route providers.  Provider package name: ", packageName, ".  Service package name: ");
            sbX.append(getPackageName());
            sbX.append(".");
            throw new IllegalStateException(sbX.toString());
        }
    }

    public abstract e0 c();

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f2741e.f(intent);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        e0 e0Var = this.d;
        if (e0Var != null) {
            u0.b();
            e0Var.d = null;
        }
        k0 k0Var = this.f2741e;
        synchronized (k0Var.f9034g) {
            k0Var.f.clear();
        }
        super.onDestroy();
    }
}
