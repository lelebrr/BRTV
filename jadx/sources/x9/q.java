package x9;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class q {
    private volatile AtomicReferenceArray<Object> array;

    public q(int i6) {
        this.array = new AtomicReferenceArray<>(i6);
    }

    public final int a() {
        return this.array.length();
    }

    public final Object b(int i6) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        if (i6 < atomicReferenceArray.length()) {
            return atomicReferenceArray.get(i6);
        }
        return null;
    }

    public final void c(int i6, z9.a aVar) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        int length = atomicReferenceArray.length();
        if (i6 < length) {
            atomicReferenceArray.set(i6, aVar);
            return;
        }
        int i10 = i6 + 1;
        int i11 = length * 2;
        if (i10 < i11) {
            i10 = i11;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(i10);
        for (int i12 = 0; i12 < length; i12++) {
            atomicReferenceArray2.set(i12, atomicReferenceArray.get(i12));
        }
        atomicReferenceArray2.set(i6, aVar);
        this.array = atomicReferenceArray2;
    }
}
