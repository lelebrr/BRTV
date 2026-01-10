package com.bumptech.glide;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import k3.t;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n implements k3.a {

    /* renamed from: a, reason: collision with root package name */
    public final t f3568a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f3569b;

    public n(o oVar, t tVar) {
        this.f3569b = oVar;
        this.f3568a = tVar;
    }

    @Override // k3.a
    public final void a(boolean z7) {
        if (z7) {
            synchronized (this.f3569b) {
                t tVar = this.f3568a;
                Iterator it = r3.n.e((Set) tVar.f7735c).iterator();
                while (it.hasNext()) {
                    n3.c cVar = (n3.c) it.next();
                    if (!cVar.i() && !cVar.b()) {
                        cVar.clear();
                        if (tVar.f7734b) {
                            ((HashSet) tVar.d).add(cVar);
                        } else {
                            cVar.e();
                        }
                    }
                }
            }
        }
    }
}
