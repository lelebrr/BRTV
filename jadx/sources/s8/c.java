package s8;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements b {

    /* renamed from: i, reason: collision with root package name */
    public static final int f9830i = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* renamed from: j, reason: collision with root package name */
    public static final Object f9831j = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final AtomicLong f9832a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9833b;

    /* renamed from: c, reason: collision with root package name */
    public long f9834c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public AtomicReferenceArray f9835e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public AtomicReferenceArray f9836g;

    /* renamed from: h, reason: collision with root package name */
    public final AtomicLong f9837h;

    public c(int i6) {
        AtomicLong atomicLong = new AtomicLong();
        this.f9832a = atomicLong;
        this.f9837h = new AtomicLong();
        int iNumberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros(Math.max(8, i6) - 1));
        int i10 = iNumberOfLeadingZeros - 1;
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(iNumberOfLeadingZeros + 1);
        this.f9835e = atomicReferenceArray;
        this.d = i10;
        this.f9833b = Math.min(iNumberOfLeadingZeros / 4, f9830i);
        this.f9836g = atomicReferenceArray;
        this.f = i10;
        this.f9834c = iNumberOfLeadingZeros - 2;
        atomicLong.lazySet(0L);
    }

    @Override // s8.b
    public final void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // s8.b
    public final boolean isEmpty() {
        return this.f9832a.get() == this.f9837h.get();
    }

    @Override // s8.b
    public final boolean offer(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        AtomicReferenceArray atomicReferenceArray = this.f9835e;
        AtomicLong atomicLong = this.f9832a;
        long j10 = atomicLong.get();
        int i6 = this.d;
        int i10 = ((int) j10) & i6;
        if (j10 < this.f9834c) {
            atomicReferenceArray.lazySet(i10, obj);
            atomicLong.lazySet(j10 + 1);
            return true;
        }
        long j11 = this.f9833b + j10;
        if (atomicReferenceArray.get(((int) j11) & i6) == null) {
            this.f9834c = j11 - 1;
            atomicReferenceArray.lazySet(i10, obj);
            atomicLong.lazySet(j10 + 1);
            return true;
        }
        long j12 = j10 + 1;
        if (atomicReferenceArray.get(((int) j12) & i6) == null) {
            atomicReferenceArray.lazySet(i10, obj);
            atomicLong.lazySet(j12);
            return true;
        }
        AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(atomicReferenceArray.length());
        this.f9835e = atomicReferenceArray2;
        this.f9834c = (j10 + i6) - 1;
        atomicReferenceArray2.lazySet(i10, obj);
        atomicReferenceArray.lazySet(atomicReferenceArray.length() - 1, atomicReferenceArray2);
        atomicReferenceArray.lazySet(i10, f9831j);
        atomicLong.lazySet(j12);
        return true;
    }

    @Override // s8.b
    public final Object poll() {
        AtomicReferenceArray atomicReferenceArray = this.f9836g;
        AtomicLong atomicLong = this.f9837h;
        long j10 = atomicLong.get();
        int i6 = this.f;
        int i10 = ((int) j10) & i6;
        Object obj = atomicReferenceArray.get(i10);
        boolean z7 = obj == f9831j;
        if (obj != null && !z7) {
            atomicReferenceArray.lazySet(i10, null);
            atomicLong.lazySet(j10 + 1);
            return obj;
        }
        if (!z7) {
            return null;
        }
        int i11 = i6 + 1;
        AtomicReferenceArray atomicReferenceArray2 = (AtomicReferenceArray) atomicReferenceArray.get(i11);
        atomicReferenceArray.lazySet(i11, null);
        this.f9836g = atomicReferenceArray2;
        Object obj2 = atomicReferenceArray2.get(i10);
        if (obj2 != null) {
            atomicReferenceArray2.lazySet(i10, null);
            atomicLong.lazySet(j10 + 1);
        }
        return obj2;
    }
}
