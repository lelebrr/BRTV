package q1;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u0 {

    /* renamed from: c, reason: collision with root package name */
    public static h f9159c;

    /* renamed from: a, reason: collision with root package name */
    public final Context f9160a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f9161b = new ArrayList();

    static {
        Log.isLoggable("AxMediaRouter", 3);
    }

    public u0(Context context) {
        this.f9160a = context;
    }

    public static void b() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("The media router service must only be accessed on the application's main thread.");
        }
    }

    public static h c() {
        h hVar = f9159c;
        if (hVar != null) {
            return hVar;
        }
        throw new IllegalStateException("getGlobalRouter cannot be called when sGlobal is null");
    }

    public static u0 d(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        b();
        if (f9159c == null) {
            f9159c = new h(context.getApplicationContext());
        }
        ArrayList arrayList = f9159c.f8991h;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                u0 u0Var = new u0(context);
                arrayList.add(new WeakReference(u0Var));
                return u0Var;
            }
            u0 u0Var2 = (u0) ((WeakReference) arrayList.get(size)).get();
            if (u0Var2 == null) {
                arrayList.remove(size);
            } else if (u0Var2.f9160a == context) {
                return u0Var2;
            }
        }
    }

    public static MediaSessionCompat.Token e() {
        h hVar = f9159c;
        if (hVar == null) {
            return null;
        }
        e eVar = hVar.C;
        if (eVar != null) {
            MediaSessionCompat mediaSessionCompat = eVar.f8953a;
            if (mediaSessionCompat != null) {
                return mediaSessionCompat.getSessionToken();
            }
            return null;
        }
        MediaSessionCompat mediaSessionCompat2 = hVar.D;
        if (mediaSessionCompat2 != null) {
            return mediaSessionCompat2.getSessionToken();
        }
        return null;
    }

    public static s0 f() {
        b();
        return c().g();
    }

    public static boolean g() {
        Bundle bundle;
        if (f9159c == null) {
            return false;
        }
        x0 x0Var = c().f9004u;
        return x0Var == null || (bundle = x0Var.f9179e) == null || bundle.getBoolean("androidx.mediarouter.media.MediaRouterParams.ENABLE_GROUP_VOLUME_UX", true);
    }

    public static void i(int i6) {
        if (i6 < 0 || i6 > 3) {
            throw new IllegalArgumentException("Unsupported reason to unselect route");
        }
        b();
        h hVarC = c();
        s0 s0VarC = hVarC.c();
        if (hVarC.g() != s0VarC) {
            hVarC.j(s0VarC, i6, true);
        }
    }

    public final void a(l0 l0Var, m0 m0Var, int i6) {
        n0 n0Var;
        l0 l0Var2;
        if (l0Var == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (m0Var == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        b();
        ArrayList arrayList = this.f9161b;
        int size = arrayList.size();
        boolean z7 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                i10 = -1;
                break;
            } else if (((n0) arrayList.get(i10)).f9079b == m0Var) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 < 0) {
            n0Var = new n0(this, m0Var);
            arrayList.add(n0Var);
        } else {
            n0Var = (n0) arrayList.get(i10);
        }
        boolean z10 = true;
        if (i6 != n0Var.d) {
            n0Var.d = i6;
            z7 = true;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if ((i6 & 1) != 0) {
            z7 = true;
        }
        n0Var.f9081e = jElapsedRealtime;
        l0 l0Var3 = n0Var.f9080c;
        l0Var3.a();
        l0Var.a();
        if (l0Var3.f9057b.containsAll(l0Var.f9057b)) {
            z10 = z7;
        } else {
            l0 l0Var4 = n0Var.f9080c;
            if (l0Var4 == null) {
                throw new IllegalArgumentException("selector must not be null");
            }
            l0Var4.a();
            ArrayList<String> arrayList2 = !l0Var4.f9057b.isEmpty() ? new ArrayList<>(l0Var4.f9057b) : null;
            ArrayList arrayListC = l0Var.c();
            if (!arrayListC.isEmpty()) {
                Iterator it = arrayListC.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (str == null) {
                        throw new IllegalArgumentException("category must not be null");
                    }
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    if (!arrayList2.contains(str)) {
                        arrayList2.add(str);
                    }
                }
            }
            if (arrayList2 == null) {
                l0Var2 = l0.f9055c;
            } else {
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("controlCategories", arrayList2);
                l0Var2 = new l0(bundle, arrayList2);
            }
            n0Var.f9080c = l0Var2;
        }
        if (z10) {
            c().l();
        }
    }

    public final void h(m0 m0Var) {
        if (m0Var == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        b();
        ArrayList arrayList = this.f9161b;
        int size = arrayList.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                i6 = -1;
                break;
            } else if (((n0) arrayList.get(i6)).f9079b == m0Var) {
                break;
            } else {
                i6++;
            }
        }
        if (i6 >= 0) {
            arrayList.remove(i6);
            c().l();
        }
    }
}
