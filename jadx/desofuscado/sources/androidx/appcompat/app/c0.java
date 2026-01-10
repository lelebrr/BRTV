package androidx.appcompat.app;

import android.content.Context;
import android.content.IntentFilter;
import android.util.SparseIntArray;
import android.view.MenuItem;
import java.util.HashSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class c0 {

    /* renamed from: a, reason: collision with root package name */
    public Object f232a;

    /* renamed from: b, reason: collision with root package name */
    public Object f233b;

    public c0(Context context) {
        this.f232a = context;
    }

    public void c() {
        b0 b0Var = (b0) this.f232a;
        if (b0Var != null) {
            try {
                ((g0) this.f233b).f274k.unregisterReceiver(b0Var);
            } catch (IllegalArgumentException unused) {
            }
            this.f232a = null;
        }
    }

    public void d() {
        androidx.fragment.app.v0 v0Var = (androidx.fragment.app.v0) this.f232a;
        HashSet hashSet = v0Var.f1562e;
        if (hashSet.remove((j0.e) this.f233b) && hashSet.isEmpty()) {
            v0Var.b();
        }
    }

    public abstract IntentFilter e();

    public abstract int f();

    public MenuItem g(MenuItem menuItem) {
        if (!(menuItem instanceof h0.a)) {
            return menuItem;
        }
        h0.a aVar = (h0.a) menuItem;
        if (((p.l) this.f233b) == null) {
            this.f233b = new p.l(0);
        }
        MenuItem menuItem2 = (MenuItem) ((p.l) this.f233b).get(aVar);
        if (menuItem2 != null) {
            return menuItem2;
        }
        k.s sVar = new k.s((Context) this.f232a, aVar);
        ((p.l) this.f233b).put(aVar, sVar);
        return sVar;
    }

    public int h(int i6, int i10) {
        int iJ = j(i6);
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < i6; i13++) {
            int iJ2 = j(i13);
            i11 += iJ2;
            if (i11 == i10) {
                i12++;
                i11 = 0;
            } else if (i11 > i10) {
                i12++;
                i11 = iJ2;
            }
        }
        return i11 + iJ > i10 ? i12 + 1 : i12;
    }

    public int i(int i6, int i10) {
        int iJ = j(i6);
        if (iJ == i10) {
            return 0;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < i6; i12++) {
            int iJ2 = j(i12);
            i11 += iJ2;
            if (i11 == i10) {
                i11 = 0;
            } else if (i11 > i10) {
                i11 = iJ2;
            }
        }
        if (iJ + i11 <= i10) {
            return i11;
        }
        return 0;
    }

    public abstract int j(int i6);

    public void k() {
        ((SparseIntArray) this.f232a).clear();
    }

    public abstract void l();

    public void m() {
        c();
        IntentFilter intentFilterE = e();
        if (intentFilterE.countActions() == 0) {
            return;
        }
        if (((b0) this.f232a) == null) {
            this.f232a = new b0(0, this);
        }
        ((g0) this.f233b).f274k.registerReceiver((b0) this.f232a, intentFilterE);
    }

    public c0(androidx.fragment.app.v0 v0Var, j0.e eVar) {
        this.f232a = v0Var;
        this.f233b = eVar;
    }

    public c0() {
        this.f232a = new SparseIntArray();
        this.f233b = new SparseIntArray();
    }

    public c0(g0 g0Var) {
        this.f233b = g0Var;
    }
}
