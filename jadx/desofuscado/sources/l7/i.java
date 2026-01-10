package l7;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i extends r {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8066a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f8067b;

    public /* synthetic */ i(r rVar, int i6) {
        this.f8066a = i6;
        this.f8067b = rVar;
    }

    @Override // l7.r
    public final Object a(t7.a aVar) throws IOException {
        switch (this.f8066a) {
            case 0:
                return new AtomicLong(((Number) this.f8067b.a(aVar)).longValue());
            case 1:
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.h()) {
                    arrayList.add(Long.valueOf(((Number) this.f8067b.a(aVar)).longValue()));
                }
                aVar.e();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i6 = 0; i6 < size; i6++) {
                    atomicLongArray.set(i6, ((Long) arrayList.get(i6)).longValue());
                }
                return atomicLongArray;
            default:
                if (aVar.u() != 9) {
                    return this.f8067b.a(aVar);
                }
                aVar.q();
                return null;
        }
    }

    @Override // l7.r
    public final void b(t7.b bVar, Object obj) throws IOException {
        switch (this.f8066a) {
            case 0:
                this.f8067b.b(bVar, Long.valueOf(((AtomicLong) obj).get()));
                break;
            case 1:
                AtomicLongArray atomicLongArray = (AtomicLongArray) obj;
                bVar.b();
                int length = atomicLongArray.length();
                for (int i6 = 0; i6 < length; i6++) {
                    this.f8067b.b(bVar, Long.valueOf(atomicLongArray.get(i6)));
                }
                bVar.e();
                break;
            default:
                if (obj == null) {
                    bVar.i();
                    break;
                } else {
                    this.f8067b.b(bVar, obj);
                    break;
                }
        }
    }
}
