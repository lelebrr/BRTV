package v;

import ea.q;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: b, reason: collision with root package name */
    public final e f10525b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10526c;
    public c d;

    /* renamed from: g, reason: collision with root package name */
    public u.i f10528g;

    /* renamed from: a, reason: collision with root package name */
    public HashSet f10524a = null;

    /* renamed from: e, reason: collision with root package name */
    public int f10527e = 0;
    public int f = -1;

    public c(e eVar, int i6) {
        this.f10525b = eVar;
        this.f10526c = i6;
    }

    public final void a(c cVar, int i6) {
        b(cVar, i6, -1, false);
    }

    public final boolean b(c cVar, int i6, int i10, boolean z7) {
        if (cVar == null) {
            h();
            return true;
        }
        if (!z7 && !g(cVar)) {
            return false;
        }
        this.d = cVar;
        if (cVar.f10524a == null) {
            cVar.f10524a = new HashSet();
        }
        this.d.f10524a.add(this);
        if (i6 > 0) {
            this.f10527e = i6;
        } else {
            this.f10527e = 0;
        }
        this.f = i10;
        return true;
    }

    public final int c() {
        c cVar;
        if (this.f10525b.X == 8) {
            return 0;
        }
        int i6 = this.f;
        return (i6 <= -1 || (cVar = this.d) == null || cVar.f10525b.X != 8) ? this.f10527e : i6;
    }

    public final c d() {
        int i6 = this.f10526c;
        int iA = u.h.a(i6);
        e eVar = this.f10525b;
        switch (iA) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
                return eVar.A;
            case 2:
                return eVar.B;
            case 3:
                return eVar.f10561y;
            case 4:
                return eVar.f10562z;
            default:
                throw new AssertionError(q.q(i6));
        }
    }

    public final boolean e() {
        HashSet hashSet = this.f10524a;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((c) it.next()).d().f()) {
                return true;
            }
        }
        return false;
    }

    public final boolean f() {
        return this.d != null;
    }

    public final boolean g(c cVar) {
        if (cVar == null) {
            return false;
        }
        int i6 = this.f10526c;
        e eVar = cVar.f10525b;
        int i10 = cVar.f10526c;
        if (i10 == i6) {
            return i6 != 6 || (eVar.f10559w && this.f10525b.f10559w);
        }
        switch (u.h.a(i6)) {
            case 0:
            case 5:
            case 7:
            case 8:
                return false;
            case 1:
            case 3:
                boolean z7 = i10 == 2 || i10 == 4;
                if (eVar instanceof i) {
                    return z7 || i10 == 8;
                }
                return z7;
            case 2:
            case 4:
                boolean z10 = i10 == 3 || i10 == 5;
                if (eVar instanceof i) {
                    return z10 || i10 == 9;
                }
                return z10;
            case 6:
                return (i10 == 6 || i10 == 8 || i10 == 9) ? false : true;
            default:
                throw new AssertionError(q.q(i6));
        }
    }

    public final void h() {
        HashSet hashSet;
        c cVar = this.d;
        if (cVar != null && (hashSet = cVar.f10524a) != null) {
            hashSet.remove(this);
        }
        this.d = null;
        this.f10527e = 0;
        this.f = -1;
    }

    public final void i() {
        u.i iVar = this.f10528g;
        if (iVar == null) {
            this.f10528g = new u.i(1);
        } else {
            iVar.c();
        }
    }

    public final String toString() {
        return this.f10525b.Y + ":" + q.q(this.f10526c);
    }
}
