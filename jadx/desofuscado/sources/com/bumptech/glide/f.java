package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import java.util.List;
import k3.t;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends ContextWrapper {

    /* renamed from: k, reason: collision with root package name */
    public static final a f3514k = new a();

    /* renamed from: a, reason: collision with root package name */
    public final y2.f f3515a;

    /* renamed from: b, reason: collision with root package name */
    public final b.a f3516b;

    /* renamed from: c, reason: collision with root package name */
    public final x4.e f3517c;
    public final u6.e d;

    /* renamed from: e, reason: collision with root package name */
    public final List f3518e;
    public final p.e f;

    /* renamed from: g, reason: collision with root package name */
    public final x2.l f3519g;

    /* renamed from: h, reason: collision with root package name */
    public final a0.b f3520h;

    /* renamed from: i, reason: collision with root package name */
    public final int f3521i;

    /* renamed from: j, reason: collision with root package name */
    public n3.e f3522j;

    public f(Context context, y2.f fVar, t tVar, x4.e eVar, u6.e eVar2, p.e eVar3, List list, x2.l lVar, a0.b bVar, int i6) {
        super(context.getApplicationContext());
        this.f3515a = fVar;
        this.f3517c = eVar;
        this.d = eVar2;
        this.f3518e = list;
        this.f = eVar3;
        this.f3519g = lVar;
        this.f3520h = bVar;
        this.f3521i = i6;
        this.f3516b = new b.a(tVar);
    }

    public final synchronized n3.e a() {
        try {
            if (this.f3522j == null) {
                this.d.getClass();
                n3.e eVar = new n3.e();
                eVar.f8406p = true;
                this.f3522j = eVar;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f3522j;
    }

    public final j b() {
        return (j) this.f3516b.get();
    }
}
