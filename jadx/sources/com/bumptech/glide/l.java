package com.bumptech.glide;

import android.content.Context;
import android.util.Log;
import d7.g0;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import k3.t;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l extends n3.a {
    public ArrayList A;
    public l B;
    public l C;
    public boolean D = true;
    public boolean E;
    public boolean F;

    /* renamed from: u, reason: collision with root package name */
    public final Context f3537u;

    /* renamed from: v, reason: collision with root package name */
    public final o f3538v;

    /* renamed from: w, reason: collision with root package name */
    public final Class f3539w;

    /* renamed from: x, reason: collision with root package name */
    public final f f3540x;

    /* renamed from: y, reason: collision with root package name */
    public p f3541y;

    /* renamed from: z, reason: collision with root package name */
    public Object f3542z;

    static {
    }

    public l(b bVar, o oVar, Class cls, Context context) {
        n3.e eVar;
        this.f3538v = oVar;
        this.f3539w = cls;
        this.f3537u = context;
        p.e eVar2 = oVar.f3571a.f3496c.f;
        p pVar = (p) eVar2.get(cls);
        if (pVar == null) {
            Iterator it = ((g0) eVar2.entrySet()).iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    pVar = (p) entry.getValue();
                }
            }
        }
        this.f3541y = pVar == null ? f.f3514k : pVar;
        this.f3540x = bVar.f3496c;
        Iterator it2 = oVar.f3577i.iterator();
        while (it2.hasNext()) {
            x((ka.h) it2.next());
        }
        synchronized (oVar) {
            eVar = oVar.f3578j;
        }
        a(eVar);
    }

    @Override // n3.a
    /* renamed from: A, reason: merged with bridge method [inline-methods] */
    public final l clone() {
        l lVar = (l) super.clone();
        lVar.f3541y = lVar.f3541y.clone();
        if (lVar.A != null) {
            lVar.A = new ArrayList(lVar.A);
        }
        l lVar2 = lVar.B;
        if (lVar2 != null) {
            lVar.B = lVar2.clone();
        }
        l lVar3 = lVar.C;
        if (lVar3 != null) {
            lVar.C = lVar3.clone();
        }
        return lVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void B(android.widget.ImageView r5) {
        /*
            r4 = this;
            r3.n.a()
            r3.f.b(r5)
            int r0 = r4.f8393a
            r1 = 2048(0x800, float:2.87E-42)
            boolean r0 = n3.a.h(r0, r1)
            if (r0 != 0) goto L6d
            android.widget.ImageView$ScaleType r0 = r5.getScaleType()
            if (r0 == 0) goto L6d
            int[] r0 = com.bumptech.glide.k.f3535a
            android.widget.ImageView$ScaleType r1 = r5.getScaleType()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r1 = 1
            switch(r0) {
                case 1: goto L5d;
                case 2: goto L4b;
                case 3: goto L39;
                case 4: goto L39;
                case 5: goto L39;
                case 6: goto L27;
                default: goto L26;
            }
        L26:
            goto L6d
        L27:
            com.bumptech.glide.l r0 = r4.clone()
            e3.n r2 = e3.n.f6513c
            e3.i r3 = new e3.i
            r3.<init>()
            n3.a r0 = r0.i(r2, r3)
            r0.f8409s = r1
            goto L6e
        L39:
            com.bumptech.glide.l r0 = r4.clone()
            e3.n r2 = e3.n.f6512b
            e3.u r3 = new e3.u
            r3.<init>()
            n3.a r0 = r0.i(r2, r3)
            r0.f8409s = r1
            goto L6e
        L4b:
            com.bumptech.glide.l r0 = r4.clone()
            e3.n r2 = e3.n.f6513c
            e3.i r3 = new e3.i
            r3.<init>()
            n3.a r0 = r0.i(r2, r3)
            r0.f8409s = r1
            goto L6e
        L5d:
            com.bumptech.glide.l r0 = r4.clone()
            e3.n r1 = e3.n.d
            e3.h r2 = new e3.h
            r2.<init>()
            n3.a r0 = r0.i(r1, r2)
            goto L6e
        L6d:
            r0 = r4
        L6e:
            com.bumptech.glide.f r1 = r4.f3540x
            x4.e r1 = r1.f3517c
            r1.getClass()
            java.lang.Class<android.graphics.Bitmap> r1 = android.graphics.Bitmap.class
            java.lang.Class r2 = r4.f3539w
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L86
            o3.a r1 = new o3.a
            r2 = 0
            r1.<init>(r5, r2)
            goto L94
        L86:
            java.lang.Class<android.graphics.drawable.Drawable> r1 = android.graphics.drawable.Drawable.class
            boolean r1 = r1.isAssignableFrom(r2)
            if (r1 == 0) goto L98
            o3.a r1 = new o3.a
            r2 = 1
            r1.<init>(r5, r2)
        L94:
            r4.C(r1, r0)
            return
        L98:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Unhandled class: "
            r0.<init>(r1)
            r0.append(r2)
            java.lang.String r1 = ", try .as*(Class).transcode(ResourceTranscoder)"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.l.B(android.widget.ImageView):void");
    }

    public final void C(o3.h hVar, n3.a aVar) {
        r3.f.b(hVar);
        if (!this.E) {
            throw new IllegalArgumentException("You must call #load() before calling #into()");
        }
        n3.c cVarZ = z(new Object(), hVar, null, this.f3541y, aVar.f8395c, aVar.f8400j, aVar.f8399i, aVar);
        n3.c request = hVar.getRequest();
        if (cVarZ.d(request) && (aVar.f8398h || !request.i())) {
            r3.f.c(request, "Argument must not be null");
            if (request.isRunning()) {
                return;
            }
            request.e();
            return;
        }
        this.f3538v.l(hVar);
        hVar.a(cVarZ);
        o oVar = this.f3538v;
        synchronized (oVar) {
            oVar.f.f7736a.add(hVar);
            t tVar = oVar.d;
            ((Set) tVar.f7735c).add(cVarZ);
            if (tVar.f7734b) {
                cVarZ.clear();
                if (Log.isLoggable("RequestTracker", 2)) {
                    Log.v("RequestTracker", "Paused, delaying request");
                }
                ((HashSet) tVar.d).add(cVarZ);
            } else {
                cVarZ.e();
            }
        }
    }

    public final l D(Object obj) {
        if (this.f8408r) {
            return clone().D(obj);
        }
        this.f3542z = obj;
        this.E = true;
        o();
        return this;
    }

    public final l E(g3.b bVar) {
        if (this.f8408r) {
            return clone().E(bVar);
        }
        this.f3541y = bVar;
        this.D = false;
        o();
        return this;
    }

    @Override // n3.a
    public final boolean equals(Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (super.equals(lVar)) {
            return Objects.equals(this.f3539w, lVar.f3539w) && this.f3541y.equals(lVar.f3541y) && Objects.equals(this.f3542z, lVar.f3542z) && Objects.equals(this.A, lVar.A) && Objects.equals(this.B, lVar.B) && Objects.equals(this.C, lVar.C) && this.D == lVar.D && this.E == lVar.E;
        }
        return false;
    }

    @Override // n3.a
    public final int hashCode() {
        return r3.n.g(this.E ? 1 : 0, r3.n.g(this.D ? 1 : 0, r3.n.h(r3.n.h(r3.n.h(r3.n.h(r3.n.h(r3.n.h(r3.n.h(super.hashCode(), this.f3539w), this.f3541y), this.f3542z), this.A), this.B), this.C), null)));
    }

    public final l x(ka.h hVar) {
        if (this.f8408r) {
            return clone().x(hVar);
        }
        if (hVar != null) {
            if (this.A == null) {
                this.A = new ArrayList();
            }
            this.A.add(hVar);
        }
        o();
        return this;
    }

    @Override // n3.a
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public final l a(n3.a aVar) {
        r3.f.b(aVar);
        return (l) super.a(aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0145  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final n3.c z(java.lang.Object r25, o3.h r26, n3.d r27, com.bumptech.glide.p r28, com.bumptech.glide.g r29, int r30, int r31, n3.a r32) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.l.z(java.lang.Object, o3.h, n3.d, com.bumptech.glide.p, com.bumptech.glide.g, int, int, n3.a):n3.c");
    }
}
