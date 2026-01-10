package q9;

import i9.p;
import java.util.Iterator;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g implements c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9371a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9372b;

    public /* synthetic */ g(int i6, Object obj) {
        this.f9371a = i6;
        this.f9372b = obj;
    }

    @Override // q9.c
    public final Iterator iterator() {
        switch (this.f9371a) {
            case 0:
                c9.h hVar = (c9.h) this.f9372b;
                d dVar = new d();
                dVar.d = hVar.create(dVar, dVar);
                return dVar;
            case 1:
                return (Iterator) this.f9372b;
            default:
                return ((List) this.f9372b).iterator();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g(p pVar) {
        this.f9371a = 0;
        this.f9372b = (c9.h) pVar;
    }
}
