package s2;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.z3;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.profileinstaller.ProfileInstallReceiver;
import com.google.android.gms.cast.framework.media.widget.CastSeekBar;
import com.google.android.gms.internal.cast.e0;
import com.google.android.gms.internal.cast.o0;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import o0.k;
import o0.s;
import r4.n;
import x2.i;
import x2.l;
import x2.p;
import y1.m;
import z4.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements t1.c, s3.a, m, s {

    /* renamed from: c, reason: collision with root package name */
    public static Class f9740c;
    public static boolean d;

    /* renamed from: e, reason: collision with root package name */
    public static Method f9741e;
    public static boolean f;

    /* renamed from: g, reason: collision with root package name */
    public static Method f9742g;

    /* renamed from: h, reason: collision with root package name */
    public static boolean f9743h;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9744a;

    /* renamed from: b, reason: collision with root package name */
    public Object f9745b;

    public /* synthetic */ c(int i6, Object obj) {
        this.f9744a = i6;
        this.f9745b = obj;
    }

    public static void d() {
        if (d) {
            return;
        }
        try {
            f9740c = Class.forName("android.view.GhostView");
        } catch (ClassNotFoundException e5) {
            Log.i("GhostViewApi21", "Failed to retrieve GhostView class", e5);
        }
        d = true;
    }

    @Override // t1.c
    public void b(int i6, Serializable serializable) {
        String str;
        switch (i6) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case 9:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case 11:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i6 == 6 || i6 == 7 || i6 == 8) {
            Log.e("ProfileInstaller", str, (Throwable) serializable);
        } else {
            Log.d("ProfileInstaller", str);
        }
        ((ProfileInstallReceiver) this.f9745b).setResultCode(i6);
    }

    public void c() {
        Iterator it = ((ConcurrentLinkedQueue) this.f9745b).iterator();
        while (it.hasNext()) {
            Runnable runnable = (Runnable) it.next();
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public synchronized u7.f[] e(u7.b bVar) {
        try {
            LinkedList linkedList = (LinkedList) ((ConcurrentHashMap) this.f9745b).get(bVar.f10446b);
            if (linkedList != null && !linkedList.isEmpty()) {
                if (linkedList.size() > 1) {
                    if (linkedList.get(0) != null) {
                        throw new ClassCastException();
                    }
                    linkedList.remove(0);
                    linkedList.add(null);
                }
                LinkedList linkedList2 = new LinkedList();
                LinkedList linkedList3 = new LinkedList();
                Iterator it = linkedList.iterator();
                if (it.hasNext()) {
                    if (it.next() == null) {
                        throw null;
                    }
                    throw new ClassCastException();
                }
                if (linkedList3.size() != 0) {
                    linkedList2 = linkedList3;
                }
                int size = linkedList2.size();
                ArrayList arrayList = new ArrayList();
                for (int i6 = 0; i6 < size; i6++) {
                    if (linkedList2.get(i6) != null) {
                        throw new ClassCastException();
                    }
                }
                return (u7.f[]) arrayList.toArray(new u7.f[arrayList.size()]);
            }
            return null;
        } finally {
        }
    }

    public void f(boolean z7) {
        t4.b bVar = (t4.b) this.f9745b;
        if (!z7) {
            bVar.getClass();
            return;
        }
        Iterator it = bVar.d.iterator();
        while (it.hasNext()) {
            o0 o0Var = (o0) it.next();
            bVar.f10141e.e();
            o0Var.f();
        }
    }

    @Override // s3.a
    public Object g() {
        switch (this.f9744a) {
            case 6:
                e0 e0Var = (e0) this.f9745b;
                return new i((b.a) e0Var.f4144b, (s.g) e0Var.f4145c);
            default:
                z3 z3Var = (z3) this.f9745b;
                return new p((a3.f) z3Var.f912a, (a3.f) z3Var.f913b, (a3.f) z3Var.f914c, (a3.f) z3Var.d, (l) z3Var.f915e, (l) z3Var.f, (s.g) z3Var.f916g);
        }
    }

    public void h(CastSeekBar castSeekBar) {
        t4.b bVar = (t4.b) this.f9745b;
        bVar.getClass();
        int progress = castSeekBar.getProgress();
        Iterator it = bVar.d.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            o0 o0Var = (o0) it.next();
            o0Var.f4364b = true;
            o0Var.f();
        }
        r4.f fVarP = bVar.p();
        if (fVarP == null || !fVarP.i()) {
            return;
        }
        long j10 = progress;
        n nVar = bVar.f10141e;
        long jE = nVar.e() + j10;
        fVarP.t(new p4.g(jE, fVarP.k() && nVar.l(jE)));
    }

    @Override // t1.c
    public void i() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // o0.s
    public boolean perform(View view, k kVar) {
        DrawerLayout drawerLayout = (DrawerLayout) this.f9745b;
        drawerLayout.getClass();
        if (!DrawerLayout.k(view) || drawerLayout.g(view) == 2) {
            return false;
        }
        drawerLayout.b(view);
        return true;
    }

    @Override // y1.m
    public void setVisibility(int i6) {
        ((View) this.f9745b).setVisibility(i6);
    }

    public c(j jVar, z4.g gVar) {
        this.f9744a = 12;
        this.f9745b = jVar;
    }

    public c(int i6) {
        this.f9744a = i6;
        switch (i6) {
            case 5:
                this.f9745b = new ConcurrentHashMap();
                break;
        }
    }

    @Override // y1.m
    public void a(ViewGroup viewGroup, View view) {
    }
}
