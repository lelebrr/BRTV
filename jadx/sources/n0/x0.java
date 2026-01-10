package n0;

import android.view.View;
import android.view.ViewGroup;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x0 extends c9.h implements i9.p {

    /* renamed from: a, reason: collision with root package name */
    public int f8366a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f8367b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f8368c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x0(View view, a9.d dVar) {
        super(dVar);
        this.f8368c = view;
    }

    @Override // c9.a
    public final a9.d create(Object obj, a9.d dVar) {
        x0 x0Var = new x0(this.f8368c, dVar);
        x0Var.f8367b = obj;
        return x0Var;
    }

    @Override // i9.p
    public final Object invoke(Object obj, Object obj2) {
        return ((x0) create((q9.e) obj, (a9.d) obj2)).invokeSuspend(w8.l.f10832a);
    }

    @Override // c9.a
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        Object obj3 = b9.a.f3322a;
        int i6 = this.f8366a;
        View view = this.f8368c;
        if (i6 == 0) {
            o9.d.I(obj);
            q9.e eVar = (q9.e) this.f8367b;
            this.f8367b = eVar;
            this.f8366a = 1;
            q9.d dVar = (q9.d) eVar;
            dVar.f9369b = view;
            dVar.f9368a = 3;
            dVar.d = this;
            return obj3;
        }
        Object obj4 = w8.l.f10832a;
        if (i6 == 1) {
            q9.e eVar2 = (q9.e) this.f8367b;
            o9.d.I(obj);
            if (view instanceof ViewGroup) {
                this.f8367b = null;
                this.f8366a = 2;
                eVar2.getClass();
                x xVar = new x(new j9.a(1, (ViewGroup) view));
                q9.d dVar2 = (q9.d) eVar2;
                if (xVar.f8364b.hasNext()) {
                    dVar2.f9370c = xVar;
                    dVar2.f9368a = 2;
                    dVar2.d = this;
                    obj2 = obj3;
                } else {
                    obj2 = obj4;
                }
                if (obj2 != obj3) {
                    obj2 = obj4;
                }
                if (obj2 == obj3) {
                    return obj3;
                }
            }
        } else {
            if (i6 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            o9.d.I(obj);
        }
        return obj4;
    }
}
