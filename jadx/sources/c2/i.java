package c2;

import android.graphics.Bitmap;
import m2.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i extends c9.c {

    /* renamed from: a, reason: collision with root package name */
    public l f3356a;

    /* renamed from: b, reason: collision with root package name */
    public p f3357b;

    /* renamed from: c, reason: collision with root package name */
    public m2.i f3358c;
    public d d;

    /* renamed from: e, reason: collision with root package name */
    public Bitmap f3359e;
    public /* synthetic */ Object f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ l f3360g;

    /* renamed from: h, reason: collision with root package name */
    public int f3361h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(l lVar, c9.c cVar) {
        super(cVar);
        this.f3360g = lVar;
    }

    @Override // c9.a
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.f3361h |= Integer.MIN_VALUE;
        return l.a(this.f3360g, null, this);
    }
}
