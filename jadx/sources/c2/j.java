package c2;

import android.graphics.Bitmap;
import i9.p;
import java.util.ArrayList;
import t9.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j extends c9.i implements p {

    /* renamed from: b, reason: collision with root package name */
    public int f3362b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ m2.i f3363c;
    public final /* synthetic */ l d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ n2.h f3364e;
    public final /* synthetic */ d f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Bitmap f3365g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(m2.i iVar, l lVar, n2.h hVar, d dVar, Bitmap bitmap, a9.d dVar2) {
        super(dVar2);
        this.f3363c = iVar;
        this.d = lVar;
        this.f3364e = hVar;
        this.f = dVar;
        this.f3365g = bitmap;
    }

    @Override // c9.a
    public final a9.d create(Object obj, a9.d dVar) {
        return new j(this.f3363c, this.d, this.f3364e, this.f, this.f3365g, dVar);
    }

    @Override // i9.p
    public final Object invoke(Object obj, Object obj2) {
        return ((j) create((s) obj, (a9.d) obj2)).invokeSuspend(w8.l.f10832a);
    }

    @Override // c9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        b9.a aVar = b9.a.f3322a;
        int i6 = this.f3362b;
        if (i6 == 0) {
            o9.d.I(obj);
            ArrayList arrayList = this.d.f3372h;
            boolean z7 = this.f3365g != null;
            m2.i iVar = this.f3363c;
            h2.k kVar = new h2.k(iVar, arrayList, 0, iVar, this.f3364e, this.f, z7);
            this.f3362b = 1;
            obj = kVar.b(iVar, this);
            if (obj == aVar) {
                return aVar;
            }
        } else {
            if (i6 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            o9.d.I(obj);
        }
        return obj;
    }
}
