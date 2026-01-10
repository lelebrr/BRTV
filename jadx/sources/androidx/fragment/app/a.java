package androidx.fragment.app;

import android.util.Log;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements h0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1410a;

    /* renamed from: b, reason: collision with root package name */
    public int f1411b;

    /* renamed from: c, reason: collision with root package name */
    public int f1412c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f1413e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1414g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1415h;

    /* renamed from: i, reason: collision with root package name */
    public String f1416i;

    /* renamed from: j, reason: collision with root package name */
    public int f1417j;

    /* renamed from: k, reason: collision with root package name */
    public CharSequence f1418k;

    /* renamed from: l, reason: collision with root package name */
    public int f1419l;

    /* renamed from: m, reason: collision with root package name */
    public CharSequence f1420m;

    /* renamed from: n, reason: collision with root package name */
    public ArrayList f1421n;

    /* renamed from: o, reason: collision with root package name */
    public ArrayList f1422o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f1423p;

    /* renamed from: q, reason: collision with root package name */
    public final j0 f1424q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f1425r;

    /* renamed from: s, reason: collision with root package name */
    public int f1426s;

    public a(j0 j0Var) {
        j0Var.C();
        v vVar = j0Var.f1468n;
        if (vVar != null) {
            vVar.f1555g.getClassLoader();
        }
        this.f1410a = new ArrayList();
        this.f1415h = true;
        this.f1423p = false;
        this.f1426s = -1;
        this.f1424q = j0Var;
    }

    @Override // androidx.fragment.app.h0
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f1414g) {
            return true;
        }
        j0 j0Var = this.f1424q;
        if (j0Var.d == null) {
            j0Var.d = new ArrayList();
        }
        j0Var.d.add(this);
        return true;
    }

    public final void b(r0 r0Var) {
        this.f1410a.add(r0Var);
        r0Var.f1516c = this.f1411b;
        r0Var.d = this.f1412c;
        r0Var.f1517e = this.d;
        r0Var.f = this.f1413e;
    }

    public final void c() {
        if (!this.f1415h) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.f1414g = true;
        this.f1416i = null;
    }

    public final void d(int i6) {
        if (this.f1414g) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i6);
            }
            ArrayList arrayList = this.f1410a;
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                r0 r0Var = (r0) arrayList.get(i10);
                s sVar = r0Var.f1515b;
                if (sVar != null) {
                    sVar.f1535r += i6;
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "Bump nesting of " + r0Var.f1515b + " to " + r0Var.f1515b.f1535r);
                    }
                }
            }
        }
    }

    public final int e(boolean z7) {
        if (this.f1425r) {
            throw new IllegalStateException("commit already called");
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new t0());
            g("  ", printWriter, true);
            printWriter.close();
        }
        this.f1425r = true;
        boolean z10 = this.f1414g;
        j0 j0Var = this.f1424q;
        if (z10) {
            this.f1426s = j0Var.f1463i.getAndIncrement();
        } else {
            this.f1426s = -1;
        }
        j0Var.s(this, z7);
        return this.f1426s;
    }

    public final void f(int i6, s sVar, String str, int i10) {
        Class<?> cls = sVar.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str2 = sVar.f1542y;
            if (str2 != null && !str.equals(str2)) {
                throw new IllegalStateException("Can't change tag of fragment " + sVar + ": was " + sVar.f1542y + " now " + str);
            }
            sVar.f1542y = str;
        }
        if (i6 != 0) {
            if (i6 == -1) {
                throw new IllegalArgumentException("Can't add fragment " + sVar + " with tag " + str + " to container view with no id");
            }
            int i11 = sVar.f1540w;
            if (i11 != 0 && i11 != i6) {
                throw new IllegalStateException("Can't change container ID of fragment " + sVar + ": was " + sVar.f1540w + " now " + i6);
            }
            sVar.f1540w = i6;
            sVar.f1541x = i6;
        }
        b(new r0(i10, sVar));
        sVar.f1536s = this.f1424q;
    }

    public final void g(String str, PrintWriter printWriter, boolean z7) {
        String str2;
        if (z7) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f1416i);
            printWriter.print(" mIndex=");
            printWriter.print(this.f1426s);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f1425r);
            if (this.f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f));
            }
            if (this.f1411b != 0 || this.f1412c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f1411b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f1412c));
            }
            if (this.d != 0 || this.f1413e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f1413e));
            }
            if (this.f1417j != 0 || this.f1418k != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f1417j));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f1418k);
            }
            if (this.f1419l != 0 || this.f1420m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f1419l));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f1420m);
            }
        }
        ArrayList arrayList = this.f1410a;
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            r0 r0Var = (r0) arrayList.get(i6);
            switch (r0Var.f1514a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + r0Var.f1514a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i6);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(r0Var.f1515b);
            if (z7) {
                if (r0Var.f1516c != 0 || r0Var.d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(r0Var.f1516c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(r0Var.d));
                }
                if (r0Var.f1517e != 0 || r0Var.f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(r0Var.f1517e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(r0Var.f));
                }
            }
        }
    }

    public final void h(s sVar) {
        j0 j0Var = sVar.f1536s;
        if (j0Var == null || j0Var == this.f1424q) {
            b(new r0(3, sVar));
            return;
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + sVar.toString() + " is already attached to a FragmentManager.");
    }

    public final void i(int i6, s sVar) {
        if (i6 == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        f(i6, sVar, null, 2);
    }

    public final void j(s sVar, androidx.lifecycle.o oVar) {
        j0 j0Var = sVar.f1536s;
        j0 j0Var2 = this.f1424q;
        if (j0Var != j0Var2) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + j0Var2);
        }
        if (oVar == androidx.lifecycle.o.f1981b && sVar.f1520a > -1) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + oVar + " after the Fragment has been created");
        }
        if (oVar == androidx.lifecycle.o.f1980a) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + oVar + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
        }
        r0 r0Var = new r0();
        r0Var.f1514a = 10;
        r0Var.f1515b = sVar;
        r0Var.f1518g = sVar.L;
        r0Var.f1519h = oVar;
        b(r0Var);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f1426s >= 0) {
            sb.append(" #");
            sb.append(this.f1426s);
        }
        if (this.f1416i != null) {
            sb.append(" ");
            sb.append(this.f1416i);
        }
        sb.append("}");
        return sb.toString();
    }
}
