package androidx.recyclerview.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e2 {

    /* renamed from: a, reason: collision with root package name */
    public final p.l f2837a = new p.l(0);

    /* renamed from: b, reason: collision with root package name */
    public final p.i f2838b = new p.i();

    public final void a(p1 p1Var, r0 r0Var) {
        p.l lVar = this.f2837a;
        c2 c2VarA = (c2) lVar.get(p1Var);
        if (c2VarA == null) {
            c2VarA = c2.a();
            lVar.put(p1Var, c2VarA);
        }
        c2VarA.f2815c = r0Var;
        c2VarA.f2813a |= 8;
    }

    public final r0 b(p1 p1Var, int i6) {
        c2 c2Var;
        r0 r0Var;
        p.l lVar = this.f2837a;
        int iD = lVar.d(p1Var);
        if (iD >= 0 && (c2Var = (c2) lVar.j(iD)) != null) {
            int i10 = c2Var.f2813a;
            if ((i10 & i6) != 0) {
                int i11 = i10 & (~i6);
                c2Var.f2813a = i11;
                if (i6 == 4) {
                    r0Var = c2Var.f2814b;
                } else {
                    if (i6 != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    r0Var = c2Var.f2815c;
                }
                if ((i11 & 12) == 0) {
                    lVar.h(iD);
                    c2Var.f2813a = 0;
                    c2Var.f2814b = null;
                    c2Var.f2815c = null;
                    c2.d.c(c2Var);
                }
                return r0Var;
            }
        }
        return null;
    }

    public final void c(p1 p1Var) {
        c2 c2Var = (c2) this.f2837a.get(p1Var);
        if (c2Var == null) {
            return;
        }
        c2Var.f2813a &= -2;
    }

    public final void d(p1 p1Var) {
        p.i iVar = this.f2838b;
        int iJ = iVar.j() - 1;
        while (true) {
            if (iJ < 0) {
                break;
            }
            if (p1Var == iVar.k(iJ)) {
                Object[] objArr = iVar.f8849c;
                Object obj = objArr[iJ];
                Object obj2 = p.j.f8850a;
                if (obj != obj2) {
                    objArr[iJ] = obj2;
                    iVar.f8847a = true;
                }
            } else {
                iJ--;
            }
        }
        c2 c2Var = (c2) this.f2837a.remove(p1Var);
        if (c2Var != null) {
            c2Var.f2813a = 0;
            c2Var.f2814b = null;
            c2Var.f2815c = null;
            c2.d.c(c2Var);
        }
    }
}
