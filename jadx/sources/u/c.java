package u;

import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class c {
    public b d;

    /* renamed from: a, reason: collision with root package name */
    public i f10279a = null;

    /* renamed from: b, reason: collision with root package name */
    public float f10280b = 0.0f;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f10281c = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public boolean f10282e = false;

    public c(a0.f fVar) {
        this.d = new a(this, fVar);
    }

    public final void a(e eVar, int i6) {
        this.d.h(eVar.i(i6), 1.0f);
        this.d.h(eVar.i(i6), -1.0f);
    }

    public final void b(i iVar, i iVar2, i iVar3, int i6) {
        boolean z7 = false;
        if (i6 != 0) {
            if (i6 < 0) {
                i6 *= -1;
                z7 = true;
            }
            this.f10280b = i6;
        }
        if (z7) {
            this.d.h(iVar, 1.0f);
            this.d.h(iVar2, -1.0f);
            this.d.h(iVar3, -1.0f);
        } else {
            this.d.h(iVar, -1.0f);
            this.d.h(iVar2, 1.0f);
            this.d.h(iVar3, 1.0f);
        }
    }

    public final void c(i iVar, i iVar2, i iVar3, int i6) {
        boolean z7 = false;
        if (i6 != 0) {
            if (i6 < 0) {
                i6 *= -1;
                z7 = true;
            }
            this.f10280b = i6;
        }
        if (z7) {
            this.d.h(iVar, 1.0f);
            this.d.h(iVar2, -1.0f);
            this.d.h(iVar3, 1.0f);
        } else {
            this.d.h(iVar, -1.0f);
            this.d.h(iVar2, 1.0f);
            this.d.h(iVar3, -1.0f);
        }
    }

    public i d(boolean[] zArr) {
        return e(zArr, null);
    }

    public final i e(boolean[] zArr, i iVar) {
        int i6;
        int iD = this.d.d();
        i iVar2 = null;
        float f = 0.0f;
        for (int i10 = 0; i10 < iD; i10++) {
            float fA = this.d.a(i10);
            if (fA < 0.0f) {
                i iVarI = this.d.i(i10);
                if ((zArr == null || !zArr[iVarI.f10303b]) && iVarI != iVar && (((i6 = iVarI.f10311l) == 3 || i6 == 4) && fA < f)) {
                    f = fA;
                    iVar2 = iVarI;
                }
            }
        }
        return iVar2;
    }

    public final void f(i iVar) {
        i iVar2 = this.f10279a;
        if (iVar2 != null) {
            this.d.h(iVar2, -1.0f);
            this.f10279a = null;
        }
        float fB = this.d.b(iVar, true) * (-1.0f);
        this.f10279a = iVar;
        if (fB == 1.0f) {
            return;
        }
        this.f10280b /= fB;
        this.d.j(fB);
    }

    public final void g(i iVar, boolean z7) {
        if (iVar.f) {
            float fG = this.d.g(iVar);
            this.f10280b = (iVar.f10305e * fG) + this.f10280b;
            this.d.b(iVar, z7);
            if (z7) {
                iVar.b(this);
            }
        }
    }

    public void h(c cVar, boolean z7) {
        float fC = this.d.c(cVar, z7);
        this.f10280b = (cVar.f10280b * fC) + this.f10280b;
        if (z7) {
            cVar.f10279a.b(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String toString() {
        /*
            r10 = this;
            u.i r0 = r10.f10279a
            if (r0 != 0) goto L7
            java.lang.String r0 = "0"
            goto L17
        L7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = ""
            r0.<init>(r1)
            u.i r1 = r10.f10279a
            r0.append(r1)
            java.lang.String r0 = r0.toString()
        L17:
            java.lang.String r1 = " = "
            java.lang.String r0 = ea.q.h(r0, r1)
            float r1 = r10.f10280b
            r2 = 1
            r3 = 0
            r4 = 0
            int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r1 == 0) goto L35
            java.lang.StringBuilder r0 = ea.q.m(r0)
            float r1 = r10.f10280b
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r1 = 1
            goto L36
        L35:
            r1 = 0
        L36:
            u.b r5 = r10.d
            int r5 = r5.d()
        L3c:
            if (r3 >= r5) goto L9d
            u.b r6 = r10.d
            u.i r6 = r6.i(r3)
            if (r6 != 0) goto L47
            goto L9a
        L47:
            u.b r7 = r10.d
            float r7 = r7.a(r3)
            int r8 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r8 != 0) goto L52
            goto L9a
        L52:
            java.lang.String r6 = r6.toString()
            r9 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r1 != 0) goto L67
            int r1 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r1 >= 0) goto L77
            java.lang.String r1 = "- "
            java.lang.String r0 = ea.q.h(r0, r1)
        L64:
            float r7 = r7 * r9
            goto L77
        L67:
            if (r8 <= 0) goto L70
            java.lang.String r1 = " + "
            java.lang.String r0 = ea.q.h(r0, r1)
            goto L77
        L70:
            java.lang.String r1 = " - "
            java.lang.String r0 = ea.q.h(r0, r1)
            goto L64
        L77:
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r1 != 0) goto L82
            java.lang.String r0 = ea.q.h(r0, r6)
            goto L99
        L82:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            r1.append(r7)
            java.lang.String r0 = " "
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = r1.toString()
        L99:
            r1 = 1
        L9a:
            int r3 = r3 + 1
            goto L3c
        L9d:
            if (r1 != 0) goto La5
            java.lang.String r1 = "0.0"
            java.lang.String r0 = ea.q.h(r0, r1)
        La5:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: u.c.toString():java.lang.String");
    }
}
