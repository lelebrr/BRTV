package q1;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import androidx.mediarouter.media.MediaRouteProviderService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class j0 implements IBinder.DeathRecipient {

    /* renamed from: a, reason: collision with root package name */
    public final Messenger f9022a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9023b;

    /* renamed from: c, reason: collision with root package name */
    public final String f9024c;
    public x d;

    /* renamed from: e, reason: collision with root package name */
    public long f9025e;
    public final SparseArray f = new SparseArray();

    /* renamed from: g, reason: collision with root package name */
    public final j7.c f9026g = new j7.c(26, this);

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ k0 f9027h;

    public j0(k0 k0Var, Messenger messenger, int i6, String str) {
        this.f9027h = k0Var;
        this.f9022a = messenger;
        this.f9023b = i6;
        this.f9024c = str;
    }

    public Bundle a(androidx.appcompat.app.r0 r0Var) {
        return MediaRouteProviderService.a(r0Var, this.f9023b);
    }

    public Bundle b(String str, d0 d0Var, int i6) {
        SparseArray sparseArray = this.f;
        if (sparseArray.indexOfKey(i6) >= 0) {
            return null;
        }
        k0 k0Var = this.f9027h;
        b0 b0VarA = k0Var.f9030a.d.a(str, d0Var);
        if (b0VarA == null) {
            return null;
        }
        b0VarA.q(u7.d.m(k0Var.f9030a.getApplicationContext()), this.f9026g);
        sparseArray.put(i6, b0VarA);
        Bundle bundle = new Bundle();
        bundle.putString("groupableTitle", b0VarA.k());
        bundle.putString("transferableTitle", b0VarA.l());
        return bundle;
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        this.f9027h.f9030a.f2739b.obtainMessage(1, this.f9022a).sendToTarget();
    }

    public boolean c(String str, String str2, d0 d0Var, int i6) {
        SparseArray sparseArray = this.f;
        if (sparseArray.indexOfKey(i6) >= 0) {
            return false;
        }
        k0 k0Var = this.f9027h;
        c0 c0VarD = str2 == null ? k0Var.f9030a.d.d(str, d0Var) : k0Var.f9030a.d.c(str, str2);
        if (c0VarD == null) {
            return false;
        }
        sparseArray.put(i6, c0VarD);
        return true;
    }

    public void d() {
        SparseArray sparseArray = this.f;
        int size = sparseArray.size();
        for (int i6 = 0; i6 < size; i6++) {
            ((c0) sparseArray.valueAt(i6)).e();
        }
        sparseArray.clear();
        this.f9022a.getBinder().unlinkToDeath(this, 0);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (Objects.equals(this.d, null)) {
            return;
        }
        this.d = null;
        this.f9025e = jElapsedRealtime;
        this.f9027h.h();
    }

    public final c0 e(int i6) {
        return (c0) this.f.get(i6);
    }

    public boolean f(int i6) {
        SparseArray sparseArray = this.f;
        c0 c0Var = (c0) sparseArray.get(i6);
        if (c0Var == null) {
            return false;
        }
        sparseArray.remove(i6);
        c0Var.e();
        return true;
    }

    public void g(b0 b0Var, w wVar, ArrayList arrayList) {
        SparseArray sparseArray = this.f;
        int iIndexOfValue = sparseArray.indexOfValue(b0Var);
        if (iIndexOfValue < 0) {
            Log.w("MediaRouteProviderSrv", "Ignoring unknown dynamic group route controller: " + b0Var);
            return;
        }
        int iKeyAt = sparseArray.keyAt(iIndexOfValue);
        ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            if (zVar.f == null) {
                Bundle bundle = new Bundle();
                zVar.f = bundle;
                bundle.putBundle("mrDescriptor", zVar.f9185a.f9170a);
                zVar.f.putInt("selectionState", zVar.f9186b);
                zVar.f.putBoolean("isUnselectable", zVar.f9187c);
                zVar.f.putBoolean("isGroupable", zVar.d);
                zVar.f.putBoolean("isTransferable", zVar.f9188e);
            }
            arrayList2.add(zVar.f);
        }
        Bundle bundle2 = new Bundle();
        if (wVar != null) {
            bundle2.putParcelable("groupRoute", wVar.f9170a);
        }
        bundle2.putParcelableArrayList("dynamicRoutes", arrayList2);
        MediaRouteProviderService.e(this.f9022a, 7, 0, iKeyAt, bundle2, null);
    }

    public final String toString() {
        int i6 = MediaRouteProviderService.f;
        return "Client connection " + this.f9022a.getBinder().toString();
    }
}
