package androidx.fragment.app;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.a1;
import com.p2elite.brtv2.R;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class j0 {
    public boolean A;
    public boolean B;
    public ArrayList C;
    public ArrayList D;
    public ArrayList E;
    public l0 F;
    public final e G;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1458b;
    public ArrayList d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f1460e;

    /* renamed from: g, reason: collision with root package name */
    public a.q f1461g;

    /* renamed from: k, reason: collision with root package name */
    public final a7.f f1465k;

    /* renamed from: l, reason: collision with root package name */
    public final CopyOnWriteArrayList f1466l;

    /* renamed from: m, reason: collision with root package name */
    public int f1467m;

    /* renamed from: n, reason: collision with root package name */
    public v f1468n;

    /* renamed from: o, reason: collision with root package name */
    public o9.e f1469o;

    /* renamed from: p, reason: collision with root package name */
    public s f1470p;

    /* renamed from: q, reason: collision with root package name */
    public s f1471q;

    /* renamed from: r, reason: collision with root package name */
    public final d0 f1472r;

    /* renamed from: s, reason: collision with root package name */
    public final c0 f1473s;

    /* renamed from: t, reason: collision with root package name */
    public a7.f f1474t;

    /* renamed from: u, reason: collision with root package name */
    public a7.f f1475u;

    /* renamed from: v, reason: collision with root package name */
    public a7.f f1476v;

    /* renamed from: w, reason: collision with root package name */
    public ArrayDeque f1477w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f1478x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f1479y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f1480z;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1457a = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final a1.b f1459c = new a1.b(7);
    public final y f = new y(this);

    /* renamed from: h, reason: collision with root package name */
    public final b0 f1462h = new b0(this);

    /* renamed from: i, reason: collision with root package name */
    public final AtomicInteger f1463i = new AtomicInteger();

    /* renamed from: j, reason: collision with root package name */
    public final Map f1464j = Collections.synchronizedMap(new HashMap());

    public j0() {
        Collections.synchronizedMap(new HashMap());
        Collections.synchronizedMap(new HashMap());
        this.f1465k = new a7.f(this);
        this.f1466l = new CopyOnWriteArrayList();
        this.f1467m = -1;
        this.f1472r = new d0(this);
        this.f1473s = new c0();
        this.f1477w = new ArrayDeque();
        this.G = new e(2, this);
    }

    public static boolean F(s sVar) {
        sVar.getClass();
        a1.b bVar = sVar.f1538u.f1459c;
        bVar.getClass();
        ArrayList arrayList = new ArrayList();
        for (p0 p0Var : ((HashMap) bVar.f48c).values()) {
            if (p0Var != null) {
                arrayList.add(p0Var.f1511c);
            } else {
                arrayList.add(null);
            }
        }
        Iterator it = arrayList.iterator();
        boolean zF = false;
        while (it.hasNext()) {
            s sVar2 = (s) it.next();
            if (sVar2 != null) {
                zF = F(sVar2);
            }
            if (zF) {
                return true;
            }
        }
        return false;
    }

    public static boolean G(s sVar) {
        if (sVar == null) {
            return true;
        }
        return sVar.C && (sVar.f1536s == null || G(sVar.f1539v));
    }

    public static boolean H(s sVar) {
        if (sVar == null) {
            return true;
        }
        j0 j0Var = sVar.f1536s;
        return sVar.equals(j0Var.f1471q) && H(j0Var.f1470p);
    }

    public static void W(s sVar) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "show: " + sVar);
        }
        if (sVar.f1543z) {
            sVar.f1543z = false;
            sVar.J = !sVar.J;
        }
    }

    public final void A() {
        Iterator it = e().iterator();
        while (it.hasNext()) {
            i iVar = (i) it.next();
            if (iVar.f1453e) {
                iVar.f1453e = false;
                iVar.c();
            }
        }
    }

    public final ViewGroup B(s sVar) {
        ViewGroup viewGroup = sVar.E;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (sVar.f1541x > 0 && this.f1469o.C()) {
            View viewB = this.f1469o.B(sVar.f1541x);
            if (viewB instanceof ViewGroup) {
                return (ViewGroup) viewB;
            }
        }
        return null;
    }

    public final d0 C() {
        s sVar = this.f1470p;
        return sVar != null ? sVar.f1536s.C() : this.f1472r;
    }

    public final c0 D() {
        s sVar = this.f1470p;
        return sVar != null ? sVar.f1536s.D() : this.f1473s;
    }

    public final void E(s sVar) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "hide: " + sVar);
        }
        if (sVar.f1543z) {
            return;
        }
        sVar.f1543z = true;
        sVar.J = true ^ sVar.J;
        V(sVar);
    }

    public final boolean I() {
        return this.f1479y || this.f1480z;
    }

    public final void J(int i6, boolean z7) {
        HashMap map;
        v vVar;
        if (this.f1468n == null && i6 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z7 || i6 != this.f1467m) {
            this.f1467m = i6;
            a1.b bVar = this.f1459c;
            Iterator it = ((ArrayList) bVar.f47b).iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                map = (HashMap) bVar.f48c;
                if (!zHasNext) {
                    break;
                }
                p0 p0Var = (p0) map.get(((s) it.next()).f);
                if (p0Var != null) {
                    p0Var.k();
                }
            }
            for (p0 p0Var2 : map.values()) {
                if (p0Var2 != null) {
                    p0Var2.k();
                    s sVar = p0Var2.f1511c;
                    if (sVar.f1530m && sVar.f1535r <= 0) {
                        bVar.A(p0Var2);
                    }
                }
            }
            X();
            if (this.f1478x && (vVar = this.f1468n) != null && this.f1467m == 7) {
                vVar.f1558j.g();
                this.f1478x = false;
            }
        }
    }

    public final void K() {
        if (this.f1468n == null) {
            return;
        }
        this.f1479y = false;
        this.f1480z = false;
        this.F.f1487i = false;
        for (s sVar : this.f1459c.w()) {
            if (sVar != null) {
                sVar.f1538u.K();
            }
        }
    }

    public final boolean L() {
        u(false);
        t(true);
        s sVar = this.f1471q;
        if (sVar != null && sVar.i().L()) {
            return true;
        }
        boolean zM = M(this.C, this.D, -1, 0);
        if (zM) {
            this.f1458b = true;
            try {
                O(this.C, this.D);
            } finally {
                d();
            }
        }
        Z();
        q();
        ((HashMap) this.f1459c.f48c).values().removeAll(Collections.singleton(null));
        return zM;
    }

    public final boolean M(ArrayList arrayList, ArrayList arrayList2, int i6, int i10) {
        int size;
        a aVar;
        ArrayList arrayList3 = this.d;
        if (arrayList3 == null) {
            return false;
        }
        if (i6 >= 0 || (i10 & 1) != 0) {
            if (i6 >= 0) {
                size = arrayList3.size() - 1;
                while (size >= 0) {
                    a aVar2 = (a) this.d.get(size);
                    if (i6 >= 0 && i6 == aVar2.f1426s) {
                        break;
                    }
                    size--;
                }
                if (size < 0) {
                    return false;
                }
                if ((i10 & 1) != 0) {
                    do {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        aVar = (a) this.d.get(size);
                        if (i6 < 0) {
                            break;
                        }
                    } while (i6 == aVar.f1426s);
                }
            } else {
                size = -1;
            }
            if (size == this.d.size() - 1) {
                return false;
            }
            for (int size2 = this.d.size() - 1; size2 > size; size2--) {
                arrayList.add(this.d.remove(size2));
                arrayList2.add(Boolean.TRUE);
            }
        } else {
            int size3 = arrayList3.size() - 1;
            if (size3 < 0) {
                return false;
            }
            arrayList.add(this.d.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void N(s sVar) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "remove: " + sVar + " nesting=" + sVar.f1535r);
        }
        boolean z7 = sVar.f1535r > 0;
        if (sVar.A && z7) {
            return;
        }
        a1.b bVar = this.f1459c;
        synchronized (((ArrayList) bVar.f47b)) {
            ((ArrayList) bVar.f47b).remove(sVar);
        }
        sVar.f1529l = false;
        if (F(sVar)) {
            this.f1478x = true;
        }
        sVar.f1530m = true;
        V(sVar);
    }

    public final void O(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i6 = 0;
        int i10 = 0;
        while (i6 < size) {
            if (!((a) arrayList.get(i6)).f1423p) {
                if (i10 != i6) {
                    w(arrayList, arrayList2, i10, i6);
                }
                i10 = i6 + 1;
                if (((Boolean) arrayList2.get(i6)).booleanValue()) {
                    while (i10 < size && ((Boolean) arrayList2.get(i10)).booleanValue() && !((a) arrayList.get(i10)).f1423p) {
                        i10++;
                    }
                }
                w(arrayList, arrayList2, i6, i10);
                i6 = i10 - 1;
            }
            i6++;
        }
        if (i10 != size) {
            w(arrayList, arrayList2, i10, size);
        }
    }

    public final void P(Parcelable parcelable) {
        int i6;
        a7.f fVar;
        int i10;
        p0 p0Var;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.f1389a == null) {
            return;
        }
        a1.b bVar = this.f1459c;
        ((HashMap) bVar.f48c).clear();
        Iterator it = fragmentManagerState.f1389a.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            i6 = 2;
            fVar = this.f1465k;
            if (!zHasNext) {
                break;
            }
            FragmentState fragmentState = (FragmentState) it.next();
            if (fragmentState != null) {
                s sVar = (s) this.F.d.get(fragmentState.f1396b);
                if (sVar != null) {
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + sVar);
                    }
                    p0Var = new p0(fVar, bVar, sVar, fragmentState);
                } else {
                    p0Var = new p0(this.f1465k, this.f1459c, this.f1468n.f1555g.getClassLoader(), C(), fragmentState);
                }
                s sVar2 = p0Var.f1511c;
                sVar2.f1536s = this;
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + sVar2.f + "): " + sVar2);
                }
                p0Var.m(this.f1468n.f1555g.getClassLoader());
                bVar.z(p0Var);
                p0Var.f1512e = this.f1467m;
            }
        }
        l0 l0Var = this.F;
        l0Var.getClass();
        Iterator it2 = new ArrayList(l0Var.d.values()).iterator();
        while (it2.hasNext()) {
            s sVar3 = (s) it2.next();
            if (!(((HashMap) bVar.f48c).get(sVar3.f) != null)) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + sVar3 + " that was not found in the set of active Fragments " + fragmentManagerState.f1389a);
                }
                this.F.c(sVar3);
                sVar3.f1536s = this;
                p0 p0Var2 = new p0(fVar, bVar, sVar3);
                p0Var2.f1512e = 1;
                p0Var2.k();
                sVar3.f1530m = true;
                p0Var2.k();
            }
        }
        ArrayList<String> arrayList = fragmentManagerState.f1390b;
        ((ArrayList) bVar.f47b).clear();
        if (arrayList != null) {
            for (String str : arrayList) {
                s sVarL = bVar.l(str);
                if (sVarL == null) {
                    throw new IllegalStateException(a.e.r("No instantiated fragment for (", str, ")"));
                }
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + sVarL);
                }
                bVar.f(sVarL);
            }
        }
        s sVar4 = null;
        if (fragmentManagerState.f1391c != null) {
            this.d = new ArrayList(fragmentManagerState.f1391c.length);
            int i11 = 0;
            while (true) {
                BackStackState[] backStackStateArr = fragmentManagerState.f1391c;
                if (i11 >= backStackStateArr.length) {
                    break;
                }
                BackStackState backStackState = backStackStateArr[i11];
                backStackState.getClass();
                a aVar = new a(this);
                int i12 = 0;
                int i13 = 0;
                while (true) {
                    int[] iArr = backStackState.f1366a;
                    if (i12 >= iArr.length) {
                        break;
                    }
                    r0 r0Var = new r0();
                    int i14 = i12 + 1;
                    r0Var.f1514a = iArr[i12];
                    if (Log.isLoggable("FragmentManager", i6)) {
                        Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i13 + " base fragment #" + iArr[i14]);
                    }
                    String str2 = (String) backStackState.f1367b.get(i13);
                    if (str2 != null) {
                        r0Var.f1515b = bVar.l(str2);
                    } else {
                        r0Var.f1515b = sVar4;
                    }
                    r0Var.f1518g = androidx.lifecycle.o.values()[backStackState.f1368c[i13]];
                    r0Var.f1519h = androidx.lifecycle.o.values()[backStackState.d[i13]];
                    int i15 = iArr[i14];
                    r0Var.f1516c = i15;
                    int i16 = iArr[i12 + 2];
                    r0Var.d = i16;
                    int i17 = i12 + 4;
                    int i18 = iArr[i12 + 3];
                    r0Var.f1517e = i18;
                    i12 += 5;
                    int i19 = iArr[i17];
                    r0Var.f = i19;
                    aVar.f1411b = i15;
                    aVar.f1412c = i16;
                    aVar.d = i18;
                    aVar.f1413e = i19;
                    aVar.b(r0Var);
                    i13++;
                    sVar4 = null;
                    i6 = 2;
                }
                aVar.f = backStackState.f1369e;
                aVar.f1416i = backStackState.f;
                aVar.f1426s = backStackState.f1370g;
                aVar.f1414g = true;
                aVar.f1417j = backStackState.f1371h;
                aVar.f1418k = backStackState.f1372i;
                aVar.f1419l = backStackState.f1373j;
                aVar.f1420m = backStackState.f1374k;
                aVar.f1421n = backStackState.f1375l;
                aVar.f1422o = backStackState.f1376m;
                aVar.f1423p = backStackState.f1377n;
                aVar.d(1);
                if (Log.isLoggable("FragmentManager", 2)) {
                    StringBuilder sbU = a.e.u(i11, "restoreAllState: back stack #", " (index ");
                    sbU.append(aVar.f1426s);
                    sbU.append("): ");
                    sbU.append(aVar);
                    Log.v("FragmentManager", sbU.toString());
                    PrintWriter printWriter = new PrintWriter(new t0());
                    aVar.g("  ", printWriter, false);
                    printWriter.close();
                }
                this.d.add(aVar);
                i11++;
                sVar4 = null;
                i6 = 2;
            }
            i10 = 0;
        } else {
            i10 = 0;
            this.d = null;
        }
        this.f1463i.set(fragmentManagerState.d);
        String str3 = fragmentManagerState.f1392e;
        if (str3 != null) {
            s sVarL2 = bVar.l(str3);
            this.f1471q = sVarL2;
            n(sVarL2);
        }
        ArrayList arrayList2 = fragmentManagerState.f;
        if (arrayList2 != null) {
            while (i10 < arrayList2.size()) {
                Bundle bundle = (Bundle) fragmentManagerState.f1393g.get(i10);
                bundle.setClassLoader(this.f1468n.f1555g.getClassLoader());
                this.f1464j.put(arrayList2.get(i10), bundle);
                i10++;
            }
        }
        this.f1477w = new ArrayDeque(fragmentManagerState.f1394h);
    }

    public final Parcelable Q() {
        ArrayList arrayList;
        BackStackState[] backStackStateArr;
        int size;
        A();
        Iterator it = e().iterator();
        while (it.hasNext()) {
            ((i) it.next()).e();
        }
        u(true);
        this.f1479y = true;
        this.F.f1487i = true;
        a1.b bVar = this.f1459c;
        bVar.getClass();
        HashMap map = (HashMap) bVar.f48c;
        ArrayList arrayList2 = new ArrayList(map.size());
        for (p0 p0Var : map.values()) {
            if (p0Var != null) {
                s sVar = p0Var.f1511c;
                FragmentState fragmentState = new FragmentState(sVar);
                if (sVar.f1520a <= -1 || fragmentState.f1405m != null) {
                    fragmentState.f1405m = sVar.f1521b;
                } else {
                    Bundle bundleO = p0Var.o();
                    fragmentState.f1405m = bundleO;
                    if (sVar.f1526i != null) {
                        if (bundleO == null) {
                            fragmentState.f1405m = new Bundle();
                        }
                        fragmentState.f1405m.putString("android:target_state", sVar.f1526i);
                        int i6 = sVar.f1527j;
                        if (i6 != 0) {
                            fragmentState.f1405m.putInt("android:target_req_state", i6);
                        }
                    }
                }
                arrayList2.add(fragmentState);
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Saved state of " + sVar + ": " + fragmentState.f1405m);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        a1.b bVar2 = this.f1459c;
        synchronized (((ArrayList) bVar2.f47b)) {
            try {
                if (((ArrayList) bVar2.f47b).isEmpty()) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(((ArrayList) bVar2.f47b).size());
                    Iterator it2 = ((ArrayList) bVar2.f47b).iterator();
                    while (it2.hasNext()) {
                        s sVar2 = (s) it2.next();
                        arrayList.add(sVar2.f);
                        if (Log.isLoggable("FragmentManager", 2)) {
                            Log.v("FragmentManager", "saveAllState: adding fragment (" + sVar2.f + "): " + sVar2);
                        }
                    }
                }
            } finally {
            }
        }
        ArrayList arrayList3 = this.d;
        if (arrayList3 == null || (size = arrayList3.size()) <= 0) {
            backStackStateArr = null;
        } else {
            backStackStateArr = new BackStackState[size];
            for (int i10 = 0; i10 < size; i10++) {
                backStackStateArr[i10] = new BackStackState((a) this.d.get(i10));
                if (Log.isLoggable("FragmentManager", 2)) {
                    StringBuilder sbU = a.e.u(i10, "saveAllState: adding back stack #", ": ");
                    sbU.append(this.d.get(i10));
                    Log.v("FragmentManager", sbU.toString());
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.f1392e = null;
        ArrayList arrayList4 = new ArrayList();
        fragmentManagerState.f = arrayList4;
        ArrayList arrayList5 = new ArrayList();
        fragmentManagerState.f1393g = arrayList5;
        fragmentManagerState.f1389a = arrayList2;
        fragmentManagerState.f1390b = arrayList;
        fragmentManagerState.f1391c = backStackStateArr;
        fragmentManagerState.d = this.f1463i.get();
        s sVar3 = this.f1471q;
        if (sVar3 != null) {
            fragmentManagerState.f1392e = sVar3.f;
        }
        arrayList4.addAll(this.f1464j.keySet());
        arrayList5.addAll(this.f1464j.values());
        fragmentManagerState.f1394h = new ArrayList(this.f1477w);
        return fragmentManagerState;
    }

    public final void R() {
        synchronized (this.f1457a) {
            try {
                if (this.f1457a.size() == 1) {
                    this.f1468n.f1556h.removeCallbacks(this.G);
                    this.f1468n.f1556h.post(this.G);
                    Z();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void S(s sVar, boolean z7) {
        ViewGroup viewGroupB = B(sVar);
        if (viewGroupB == null || !(viewGroupB instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) viewGroupB).setDrawDisappearingViewsLast(!z7);
    }

    public final void T(s sVar, androidx.lifecycle.o oVar) {
        if (sVar.equals(this.f1459c.l(sVar.f)) && (sVar.f1537t == null || sVar.f1536s == this)) {
            sVar.L = oVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + sVar + " is not an active fragment of FragmentManager " + this);
    }

    public final void U(s sVar) {
        if (sVar != null) {
            if (!sVar.equals(this.f1459c.l(sVar.f)) || (sVar.f1537t != null && sVar.f1536s != this)) {
                throw new IllegalArgumentException("Fragment " + sVar + " is not an active fragment of FragmentManager " + this);
            }
        }
        s sVar2 = this.f1471q;
        this.f1471q = sVar;
        n(sVar2);
        n(this.f1471q);
    }

    public final void V(s sVar) {
        ViewGroup viewGroupB = B(sVar);
        if (viewGroupB != null) {
            p pVar = sVar.I;
            if ((pVar == null ? 0 : pVar.f1503e) + (pVar == null ? 0 : pVar.d) + (pVar == null ? 0 : pVar.f1502c) + (pVar == null ? 0 : pVar.f1501b) > 0) {
                if (viewGroupB.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    viewGroupB.setTag(R.id.visible_removing_fragment_view_tag, sVar);
                }
                s sVar2 = (s) viewGroupB.getTag(R.id.visible_removing_fragment_view_tag);
                p pVar2 = sVar.I;
                boolean z7 = pVar2 != null ? pVar2.f1500a : false;
                if (sVar2.I == null) {
                    return;
                }
                sVar2.g().f1500a = z7;
            }
        }
    }

    public final void X() {
        Iterator it = this.f1459c.q().iterator();
        while (it.hasNext()) {
            p0 p0Var = (p0) it.next();
            s sVar = p0Var.f1511c;
            if (sVar.G) {
                if (this.f1458b) {
                    this.B = true;
                } else {
                    sVar.G = false;
                    p0Var.k();
                }
            }
        }
    }

    public final void Y(IllegalStateException illegalStateException) {
        Log.e("FragmentManager", illegalStateException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new t0());
        v vVar = this.f1468n;
        if (vVar == null) {
            try {
                r("  ", null, printWriter, new String[0]);
                throw illegalStateException;
            } catch (Exception e5) {
                Log.e("FragmentManager", "Failed dumping state", e5);
                throw illegalStateException;
            }
        }
        try {
            vVar.f1558j.dump("  ", null, printWriter, new String[0]);
            throw illegalStateException;
        } catch (Exception e10) {
            Log.e("FragmentManager", "Failed dumping state", e10);
            throw illegalStateException;
        }
    }

    public final void Z() {
        synchronized (this.f1457a) {
            try {
                if (!this.f1457a.isEmpty()) {
                    b0 b0Var = this.f1462h;
                    b0Var.f1430a = true;
                    a.l lVar = b0Var.f1432c;
                    if (lVar != null) {
                        lVar.accept(Boolean.TRUE);
                    }
                    return;
                }
                b0 b0Var2 = this.f1462h;
                ArrayList arrayList = this.d;
                boolean z7 = (arrayList != null ? arrayList.size() : 0) > 0 && H(this.f1470p);
                b0Var2.f1430a = z7;
                a.l lVar2 = b0Var2.f1432c;
                if (lVar2 != null) {
                    lVar2.accept(Boolean.valueOf(z7));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final p0 a(s sVar) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "add: " + sVar);
        }
        p0 p0VarF = f(sVar);
        sVar.f1536s = this;
        a1.b bVar = this.f1459c;
        bVar.z(p0VarF);
        if (!sVar.A) {
            bVar.f(sVar);
            sVar.f1530m = false;
            if (sVar.F == null) {
                sVar.J = false;
            }
            if (F(sVar)) {
                this.f1478x = true;
            }
        }
        return p0VarF;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(v vVar, o9.e eVar, s sVar) {
        if (this.f1468n != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f1468n = vVar;
        this.f1469o = eVar;
        this.f1470p = sVar;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f1466l;
        if (sVar != 0) {
            copyOnWriteArrayList.add(new e0(sVar));
        } else if (vVar instanceof m0) {
            copyOnWriteArrayList.add(vVar);
        }
        if (this.f1470p != null) {
            Z();
        }
        if (vVar instanceof a.r) {
            a.q qVar = vVar.f1558j.f199h;
            this.f1461g = qVar;
            v vVar2 = sVar != 0 ? sVar : vVar;
            qVar.getClass();
            androidx.lifecycle.p pVarF = vVar2.f();
            if (pVarF.b() != androidx.lifecycle.o.f1980a) {
                b0 b0Var = this.f1462h;
                b0Var.f1431b.add(new a.o(qVar, pVarF, b0Var));
                if (j0.b.a()) {
                    qVar.d();
                    b0Var.f1432c = (a.l) qVar.d;
                }
            }
        }
        if (sVar != 0) {
            l0 l0Var = sVar.f1536s.F;
            HashMap map = l0Var.f1484e;
            l0 l0Var2 = (l0) map.get(sVar.f);
            if (l0Var2 == null) {
                l0Var2 = new l0(l0Var.f1485g);
                map.put(sVar.f, l0Var2);
            }
            this.F = l0Var2;
        } else if (vVar instanceof a1) {
            this.F = (l0) new a1.b(vVar.f1558j.e(), l0.f1483j).n(l0.class);
        } else {
            this.F = new l0(false);
        }
        this.F.f1487i = I();
        this.f1459c.d = this.F;
        v vVar3 = this.f1468n;
        if (vVar3 instanceof c.b) {
            a.g gVar = vVar3.f1558j.f200i;
            String strP = ea.q.p("FragmentManager:", sVar != 0 ? a.e.t(new StringBuilder(), sVar.f, ":") : "");
            this.f1474t = gVar.b(ea.q.h(strP, "StartActivityForResult"), new f0(2), new a0(this, 2));
            this.f1475u = gVar.b(ea.q.h(strP, "StartIntentSenderForResult"), new f0(0), new a0(this, 0));
            this.f1476v = gVar.b(ea.q.h(strP, "RequestPermissions"), new f0(1), new a0(this, 1));
        }
    }

    public final void c(s sVar) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "attach: " + sVar);
        }
        if (sVar.A) {
            sVar.A = false;
            if (sVar.f1529l) {
                return;
            }
            this.f1459c.f(sVar);
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "add from attach: " + sVar);
            }
            if (F(sVar)) {
                this.f1478x = true;
            }
        }
    }

    public final void d() {
        this.f1458b = false;
        this.D.clear();
        this.C.clear();
    }

    public final HashSet e() {
        HashSet hashSet = new HashSet();
        Iterator it = this.f1459c.q().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((p0) it.next()).f1511c.E;
            if (viewGroup != null) {
                hashSet.add(i.f(viewGroup, D()));
            }
        }
        return hashSet;
    }

    public final p0 f(s sVar) {
        String str = sVar.f;
        a1.b bVar = this.f1459c;
        p0 p0Var = (p0) ((HashMap) bVar.f48c).get(str);
        if (p0Var != null) {
            return p0Var;
        }
        p0 p0Var2 = new p0(this.f1465k, bVar, sVar);
        p0Var2.m(this.f1468n.f1555g.getClassLoader());
        p0Var2.f1512e = this.f1467m;
        return p0Var2;
    }

    public final void g(s sVar) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "detach: " + sVar);
        }
        if (sVar.A) {
            return;
        }
        sVar.A = true;
        if (sVar.f1529l) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "remove from detach: " + sVar);
            }
            a1.b bVar = this.f1459c;
            synchronized (((ArrayList) bVar.f47b)) {
                ((ArrayList) bVar.f47b).remove(sVar);
            }
            sVar.f1529l = false;
            if (F(sVar)) {
                this.f1478x = true;
            }
            V(sVar);
        }
    }

    public final void h(Configuration configuration) {
        for (s sVar : this.f1459c.w()) {
            if (sVar != null) {
                sVar.onConfigurationChanged(configuration);
                sVar.f1538u.h(configuration);
            }
        }
    }

    public final boolean i() {
        if (this.f1467m < 1) {
            return false;
        }
        for (s sVar : this.f1459c.w()) {
            if (sVar != null) {
                if (!sVar.f1543z ? sVar.f1538u.i() : false) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean j() {
        if (this.f1467m < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z7 = false;
        for (s sVar : this.f1459c.w()) {
            if (sVar != null && G(sVar)) {
                if (!sVar.f1543z ? sVar.f1538u.j() : false) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(sVar);
                    z7 = true;
                }
            }
        }
        if (this.f1460e != null) {
            for (int i6 = 0; i6 < this.f1460e.size(); i6++) {
                s sVar2 = (s) this.f1460e.get(i6);
                if (arrayList == null || !arrayList.contains(sVar2)) {
                    sVar2.getClass();
                }
            }
        }
        this.f1460e = arrayList;
        return z7;
    }

    public final void k() {
        this.A = true;
        u(true);
        Iterator it = e().iterator();
        while (it.hasNext()) {
            ((i) it.next()).e();
        }
        p(-1);
        this.f1468n = null;
        this.f1469o = null;
        this.f1470p = null;
        if (this.f1461g != null) {
            Iterator it2 = this.f1462h.f1431b.iterator();
            while (it2.hasNext()) {
                ((a.a) it2.next()).cancel();
            }
            this.f1461g = null;
        }
        a7.f fVar = this.f1474t;
        if (fVar != null) {
            fVar.H();
            this.f1475u.H();
            this.f1476v.H();
        }
    }

    public final boolean l() {
        if (this.f1467m < 1) {
            return false;
        }
        for (s sVar : this.f1459c.w()) {
            if (sVar != null) {
                if (!sVar.f1543z ? sVar.f1538u.l() : false) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void m() {
        if (this.f1467m < 1) {
            return;
        }
        for (s sVar : this.f1459c.w()) {
            if (sVar != null && !sVar.f1543z) {
                sVar.f1538u.m();
            }
        }
    }

    public final void n(s sVar) {
        if (sVar != null) {
            if (sVar.equals(this.f1459c.l(sVar.f))) {
                sVar.f1536s.getClass();
                boolean zH = H(sVar);
                Boolean bool = sVar.f1528k;
                if (bool == null || bool.booleanValue() != zH) {
                    sVar.f1528k = Boolean.valueOf(zH);
                    k0 k0Var = sVar.f1538u;
                    k0Var.Z();
                    k0Var.n(k0Var.f1471q);
                }
            }
        }
    }

    public final boolean o() {
        boolean z7 = false;
        if (this.f1467m < 1) {
            return false;
        }
        for (s sVar : this.f1459c.w()) {
            if (sVar != null && G(sVar)) {
                if (!sVar.f1543z ? sVar.f1538u.o() : false) {
                    z7 = true;
                }
            }
        }
        return z7;
    }

    public final void p(int i6) {
        try {
            this.f1458b = true;
            for (p0 p0Var : ((HashMap) this.f1459c.f48c).values()) {
                if (p0Var != null) {
                    p0Var.f1512e = i6;
                }
            }
            J(i6, false);
            Iterator it = e().iterator();
            while (it.hasNext()) {
                ((i) it.next()).e();
            }
            this.f1458b = false;
            u(true);
        } catch (Throwable th) {
            this.f1458b = false;
            throw th;
        }
    }

    public final void q() {
        if (this.B) {
            this.B = false;
            X();
        }
    }

    public final void r(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2;
        String strH = ea.q.h(str, "    ");
        a1.b bVar = this.f1459c;
        bVar.getClass();
        String str3 = str + "    ";
        HashMap map = (HashMap) bVar.f48c;
        if (!map.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (p0 p0Var : map.values()) {
                printWriter.print(str);
                if (p0Var != null) {
                    s sVar = p0Var.f1511c;
                    printWriter.println(sVar);
                    sVar.getClass();
                    printWriter.print(str3);
                    printWriter.print("mFragmentId=#");
                    printWriter.print(Integer.toHexString(sVar.f1540w));
                    printWriter.print(" mContainerId=#");
                    printWriter.print(Integer.toHexString(sVar.f1541x));
                    printWriter.print(" mTag=");
                    printWriter.println(sVar.f1542y);
                    printWriter.print(str3);
                    printWriter.print("mState=");
                    printWriter.print(sVar.f1520a);
                    printWriter.print(" mWho=");
                    printWriter.print(sVar.f);
                    printWriter.print(" mBackStackNesting=");
                    printWriter.println(sVar.f1535r);
                    printWriter.print(str3);
                    printWriter.print("mAdded=");
                    printWriter.print(sVar.f1529l);
                    printWriter.print(" mRemoving=");
                    printWriter.print(sVar.f1530m);
                    printWriter.print(" mFromLayout=");
                    printWriter.print(sVar.f1531n);
                    printWriter.print(" mInLayout=");
                    printWriter.println(sVar.f1532o);
                    printWriter.print(str3);
                    printWriter.print("mHidden=");
                    printWriter.print(sVar.f1543z);
                    printWriter.print(" mDetached=");
                    printWriter.print(sVar.A);
                    printWriter.print(" mMenuVisible=");
                    printWriter.print(sVar.C);
                    printWriter.print(" mHasMenu=");
                    printWriter.println(false);
                    printWriter.print(str3);
                    printWriter.print("mRetainInstance=");
                    printWriter.print(sVar.B);
                    printWriter.print(" mUserVisibleHint=");
                    printWriter.println(sVar.H);
                    if (sVar.f1536s != null) {
                        printWriter.print(str3);
                        printWriter.print("mFragmentManager=");
                        printWriter.println(sVar.f1536s);
                    }
                    if (sVar.f1537t != null) {
                        printWriter.print(str3);
                        printWriter.print("mHost=");
                        printWriter.println(sVar.f1537t);
                    }
                    if (sVar.f1539v != null) {
                        printWriter.print(str3);
                        printWriter.print("mParentFragment=");
                        printWriter.println(sVar.f1539v);
                    }
                    if (sVar.f1524g != null) {
                        printWriter.print(str3);
                        printWriter.print("mArguments=");
                        printWriter.println(sVar.f1524g);
                    }
                    if (sVar.f1521b != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedFragmentState=");
                        printWriter.println(sVar.f1521b);
                    }
                    if (sVar.f1522c != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedViewState=");
                        printWriter.println(sVar.f1522c);
                    }
                    if (sVar.d != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedViewRegistryState=");
                        printWriter.println(sVar.d);
                    }
                    Object objL = sVar.f1525h;
                    if (objL == null) {
                        j0 j0Var = sVar.f1536s;
                        objL = (j0Var == null || (str2 = sVar.f1526i) == null) ? null : j0Var.f1459c.l(str2);
                    }
                    if (objL != null) {
                        printWriter.print(str3);
                        printWriter.print("mTarget=");
                        printWriter.print(objL);
                        printWriter.print(" mTargetRequestCode=");
                        printWriter.println(sVar.f1527j);
                    }
                    printWriter.print(str3);
                    printWriter.print("mPopDirection=");
                    p pVar = sVar.I;
                    printWriter.println(pVar == null ? false : pVar.f1500a);
                    p pVar2 = sVar.I;
                    if ((pVar2 == null ? 0 : pVar2.f1501b) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getEnterAnim=");
                        p pVar3 = sVar.I;
                        printWriter.println(pVar3 == null ? 0 : pVar3.f1501b);
                    }
                    p pVar4 = sVar.I;
                    if ((pVar4 == null ? 0 : pVar4.f1502c) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getExitAnim=");
                        p pVar5 = sVar.I;
                        printWriter.println(pVar5 == null ? 0 : pVar5.f1502c);
                    }
                    p pVar6 = sVar.I;
                    if ((pVar6 == null ? 0 : pVar6.d) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getPopEnterAnim=");
                        p pVar7 = sVar.I;
                        printWriter.println(pVar7 == null ? 0 : pVar7.d);
                    }
                    p pVar8 = sVar.I;
                    if ((pVar8 == null ? 0 : pVar8.f1503e) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getPopExitAnim=");
                        p pVar9 = sVar.I;
                        printWriter.println(pVar9 != null ? pVar9.f1503e : 0);
                    }
                    if (sVar.E != null) {
                        printWriter.print(str3);
                        printWriter.print("mContainer=");
                        printWriter.println(sVar.E);
                    }
                    if (sVar.F != null) {
                        printWriter.print(str3);
                        printWriter.print("mView=");
                        printWriter.println(sVar.F);
                    }
                    if (sVar.j() != null) {
                        new a7.f(sVar, sVar.e()).z(str3, printWriter);
                    }
                    printWriter.print(str3);
                    printWriter.println("Child " + sVar.f1538u + ":");
                    sVar.f1538u.r(ea.q.h(str3, "  "), fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        ArrayList arrayList = (ArrayList) bVar.f47b;
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i6 = 0; i6 < size3; i6++) {
                s sVar2 = (s) arrayList.get(i6);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i6);
                printWriter.print(": ");
                printWriter.println(sVar2.toString());
            }
        }
        ArrayList arrayList2 = this.f1460e;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i10 = 0; i10 < size2; i10++) {
                s sVar3 = (s) this.f1460e.get(i10);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(sVar3.toString());
            }
        }
        ArrayList arrayList3 = this.d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i11 = 0; i11 < size; i11++) {
                a aVar = (a) this.d.get(i11);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i11);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.g(strH, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f1463i.get());
        synchronized (this.f1457a) {
            try {
                int size4 = this.f1457a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i12 = 0; i12 < size4; i12++) {
                        Object obj = (h0) this.f1457a.get(i12);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i12);
                        printWriter.print(": ");
                        printWriter.println(obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f1468n);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f1469o);
        if (this.f1470p != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f1470p);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f1467m);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f1479y);
        printWriter.print(" mStopped=");
        printWriter.print(this.f1480z);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.A);
        if (this.f1478x) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f1478x);
        }
    }

    public final void s(h0 h0Var, boolean z7) {
        if (!z7) {
            if (this.f1468n == null) {
                if (!this.A) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            if (I()) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.f1457a) {
            try {
                if (this.f1468n == null) {
                    if (!z7) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.f1457a.add(h0Var);
                    R();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void t(boolean z7) {
        if (this.f1458b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f1468n == null) {
            if (!this.A) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.f1468n.f1556h.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z7 && I()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.C == null) {
            this.C = new ArrayList();
            this.D = new ArrayList();
        }
        this.f1458b = false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        s sVar = this.f1470p;
        if (sVar != null) {
            sb.append(sVar.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f1470p)));
            sb.append("}");
        } else {
            v vVar = this.f1468n;
            if (vVar != null) {
                sb.append(vVar.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f1468n)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public final boolean u(boolean z7) {
        boolean zA;
        t(z7);
        boolean z10 = false;
        while (true) {
            ArrayList arrayList = this.C;
            ArrayList arrayList2 = this.D;
            synchronized (this.f1457a) {
                try {
                    if (this.f1457a.isEmpty()) {
                        zA = false;
                    } else {
                        int size = this.f1457a.size();
                        zA = false;
                        for (int i6 = 0; i6 < size; i6++) {
                            zA |= ((h0) this.f1457a.get(i6)).a(arrayList, arrayList2);
                        }
                        this.f1457a.clear();
                        this.f1468n.f1556h.removeCallbacks(this.G);
                    }
                } finally {
                }
            }
            if (!zA) {
                Z();
                q();
                ((HashMap) this.f1459c.f48c).values().removeAll(Collections.singleton(null));
                return z10;
            }
            z10 = true;
            this.f1458b = true;
            try {
                O(this.C, this.D);
            } finally {
                d();
            }
        }
    }

    public final void v(a aVar, boolean z7) {
        if (z7 && (this.f1468n == null || this.A)) {
            return;
        }
        t(z7);
        aVar.a(this.C, this.D);
        this.f1458b = true;
        try {
            O(this.C, this.D);
            d();
            Z();
            q();
            ((HashMap) this.f1459c.f48c).values().removeAll(Collections.singleton(null));
        } catch (Throwable th) {
            d();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x014b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void w(java.util.ArrayList r21, java.util.ArrayList r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 1234
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.j0.w(java.util.ArrayList, java.util.ArrayList, int, int):void");
    }

    public final s y(int i6) {
        a1.b bVar = this.f1459c;
        ArrayList arrayList = (ArrayList) bVar.f47b;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            s sVar = (s) arrayList.get(size);
            if (sVar != null && sVar.f1540w == i6) {
                return sVar;
            }
        }
        for (p0 p0Var : ((HashMap) bVar.f48c).values()) {
            if (p0Var != null) {
                s sVar2 = p0Var.f1511c;
                if (sVar2.f1540w == i6) {
                    return sVar2;
                }
            }
        }
        return null;
    }

    public final s z(String str) {
        a1.b bVar = this.f1459c;
        if (str != null) {
            ArrayList arrayList = (ArrayList) bVar.f47b;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                s sVar = (s) arrayList.get(size);
                if (sVar != null && str.equals(sVar.f1542y)) {
                    return sVar;
                }
            }
        }
        if (str != null) {
            for (p0 p0Var : ((HashMap) bVar.f48c).values()) {
                if (p0Var != null) {
                    s sVar2 = p0Var.f1511c;
                    if (str.equals(sVar2.f1542y)) {
                        return sVar2;
                    }
                }
            }
        } else {
            bVar.getClass();
        }
        return null;
    }

    public final void x(ArrayList arrayList, ArrayList arrayList2) {
    }
}
