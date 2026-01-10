package com.google.common.util.concurrent;

import b7.e0;
import d7.c5;
import d7.d0;
import d7.g1;
import d7.j3;
import d7.k3;
import d7.u1;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import k3.t;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
public abstract class Striped<L> {
    private static final int ALL_SET = -1;
    private static final int LARGE_LAZY_CUTOFF = 1024;

    /* compiled from: MyApplication */
    public static class CompactStriped<L> extends PowerOfTwoStriped<L> {
        private final Object[] array;

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i6) {
            return (L) this.array[i6];
        }

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.array.length;
        }

        private CompactStriped(int i6, e0 e0Var) {
            super(i6);
            int i10 = 0;
            b7.b.e("Stripes must be <= 2^30)", i6 <= 1073741824);
            this.array = new Object[this.mask + 1];
            while (true) {
                Object[] objArr = this.array;
                if (i10 >= objArr.length) {
                    return;
                }
                objArr[i10] = e0Var.get();
                i10++;
            }
        }
    }

    /* compiled from: MyApplication */
    public static class LargeLazyStriped<L> extends PowerOfTwoStriped<L> {
        final ConcurrentMap<Integer, L> locks;
        final int size;
        final e0 supplier;

        public LargeLazyStriped(int i6, e0 e0Var) {
            super(i6);
            int i10 = this.mask;
            this.size = i10 == -1 ? Integer.MAX_VALUE : i10 + 1;
            this.supplier = e0Var;
            t tVar = new t(2);
            j3 j3Var = k3.f6200b;
            j3 j3Var2 = (j3) tVar.d;
            b7.b.m(j3Var2, "Value strength was already set to %s", j3Var2 == null);
            tVar.d = j3Var;
            tVar.f7734b = true;
            this.locks = tVar.c();
        }

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i6) {
            if (this.size != Integer.MAX_VALUE) {
                b7.b.h(i6, size());
            }
            L l9 = this.locks.get(Integer.valueOf(i6));
            if (l9 != null) {
                return l9;
            }
            Object obj = this.supplier.get();
            return (L) b7.b.r(this.locks.putIfAbsent(Integer.valueOf(i6), obj), obj);
        }

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.size;
        }
    }

    /* compiled from: MyApplication */
    public static class PaddedLock extends ReentrantLock {
        long unused1;
        long unused2;
        long unused3;

        public PaddedLock() {
            super(false);
        }
    }

    /* compiled from: MyApplication */
    public static class PaddedSemaphore extends Semaphore {
        long unused1;
        long unused2;
        long unused3;

        public PaddedSemaphore(int i6) {
            super(i6, false);
        }
    }

    /* compiled from: MyApplication */
    public static abstract class PowerOfTwoStriped<L> extends Striped<L> {
        final int mask;

        public PowerOfTwoStriped(int i6) {
            super();
            b7.b.e("Stripes must be positive", i6 > 0);
            this.mask = i6 > 1073741824 ? -1 : Striped.ceilToPowerOfTwo(i6) - 1;
        }

        @Override // com.google.common.util.concurrent.Striped
        public final L get(Object obj) {
            return getAt(indexFor(obj));
        }

        @Override // com.google.common.util.concurrent.Striped
        public final int indexFor(Object obj) {
            return Striped.smear(obj.hashCode()) & this.mask;
        }
    }

    /* compiled from: MyApplication */
    public static class SmallLazyStriped<L> extends PowerOfTwoStriped<L> {
        final AtomicReferenceArray<ArrayReference<? extends L>> locks;
        final ReferenceQueue<L> queue;
        final int size;
        final e0 supplier;

        /* compiled from: MyApplication */
        public static final class ArrayReference<L> extends WeakReference<L> {
            final int index;

            public ArrayReference(L l9, int i6, ReferenceQueue<L> referenceQueue) {
                super(l9, referenceQueue);
                this.index = i6;
            }
        }

        public SmallLazyStriped(int i6, e0 e0Var) {
            super(i6);
            this.queue = new ReferenceQueue<>();
            int i10 = this.mask;
            int i11 = i10 == -1 ? Integer.MAX_VALUE : i10 + 1;
            this.size = i11;
            this.locks = new AtomicReferenceArray<>(i11);
            this.supplier = e0Var;
        }

        private void drainQueue() {
            while (true) {
                Reference<? extends L> referencePoll = this.queue.poll();
                if (referencePoll == null) {
                    return;
                }
                ArrayReference<? extends L> arrayReference = (ArrayReference) referencePoll;
                AtomicReferenceArray<ArrayReference<? extends L>> atomicReferenceArray = this.locks;
                int i6 = arrayReference.index;
                while (!atomicReferenceArray.compareAndSet(i6, arrayReference, null) && atomicReferenceArray.get(i6) == arrayReference) {
                }
            }
        }

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i6) {
            L l9;
            if (this.size != Integer.MAX_VALUE) {
                b7.b.h(i6, size());
            }
            ArrayReference<? extends L> arrayReference = this.locks.get(i6);
            L l10 = arrayReference == null ? null : arrayReference.get();
            if (l10 != null) {
                return l10;
            }
            L l11 = (L) this.supplier.get();
            ArrayReference<? extends L> arrayReference2 = new ArrayReference<>(l11, i6, this.queue);
            do {
                AtomicReferenceArray<ArrayReference<? extends L>> atomicReferenceArray = this.locks;
                while (!atomicReferenceArray.compareAndSet(i6, arrayReference, arrayReference2)) {
                    if (atomicReferenceArray.get(i6) != arrayReference) {
                        arrayReference = this.locks.get(i6);
                        l9 = arrayReference == null ? null : arrayReference.get();
                    }
                }
                drainQueue();
                return l11;
            } while (l9 == null);
            return l9;
        }

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.size;
        }
    }

    /* compiled from: MyApplication */
    public static final class WeakSafeCondition extends ForwardingCondition {
        private final Condition delegate;
        private final WeakSafeReadWriteLock strongReference;

        public WeakSafeCondition(Condition condition, WeakSafeReadWriteLock weakSafeReadWriteLock) {
            this.delegate = condition;
            this.strongReference = weakSafeReadWriteLock;
        }

        @Override // com.google.common.util.concurrent.ForwardingCondition
        public Condition delegate() {
            return this.delegate;
        }
    }

    /* compiled from: MyApplication */
    public static final class WeakSafeLock extends ForwardingLock {
        private final Lock delegate;
        private final WeakSafeReadWriteLock strongReference;

        public WeakSafeLock(Lock lock, WeakSafeReadWriteLock weakSafeReadWriteLock) {
            this.delegate = lock;
            this.strongReference = weakSafeReadWriteLock;
        }

        @Override // com.google.common.util.concurrent.ForwardingLock
        public Lock delegate() {
            return this.delegate;
        }

        @Override // com.google.common.util.concurrent.ForwardingLock, java.util.concurrent.locks.Lock
        public Condition newCondition() {
            return new WeakSafeCondition(this.delegate.newCondition(), this.strongReference);
        }
    }

    /* compiled from: MyApplication */
    public static final class WeakSafeReadWriteLock implements ReadWriteLock {
        private final ReadWriteLock delegate = new ReentrantReadWriteLock();

        @Override // java.util.concurrent.locks.ReadWriteLock
        public Lock readLock() {
            return new WeakSafeLock(this.delegate.readLock(), this);
        }

        @Override // java.util.concurrent.locks.ReadWriteLock
        public Lock writeLock() {
            return new WeakSafeLock(this.delegate.writeLock(), this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int ceilToPowerOfTwo(int i6) {
        int iNumberOfLeadingZeros;
        RoundingMode roundingMode = RoundingMode.CEILING;
        if (i6 <= 0) {
            throw new IllegalArgumentException(ea.q.f(i6, "x (", ") must be > 0"));
        }
        switch (f7.c.f6796a[roundingMode.ordinal()]) {
            case 1:
                com.bumptech.glide.c.d((((i6 + (-1)) & i6) == 0) & (i6 > 0));
            case 2:
            case 3:
                iNumberOfLeadingZeros = 31 - Integer.numberOfLeadingZeros(i6);
                return 1 << iNumberOfLeadingZeros;
            case 4:
            case 5:
                iNumberOfLeadingZeros = 32 - Integer.numberOfLeadingZeros(i6 - 1);
                return 1 << iNumberOfLeadingZeros;
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros2 = Integer.numberOfLeadingZeros(i6);
                iNumberOfLeadingZeros = (31 - iNumberOfLeadingZeros2) + ((~(~(((-1257966797) >>> iNumberOfLeadingZeros2) - i6))) >>> 31);
                return 1 << iNumberOfLeadingZeros;
            default:
                throw new AssertionError();
        }
    }

    public static <L> Striped<L> custom(int i6, e0 e0Var) {
        return new CompactStriped(i6, e0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Lock lambda$lazyWeakLock$0() {
        return new ReentrantLock(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Semaphore lambda$lazyWeakSemaphore$2(int i6) {
        return new Semaphore(i6, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Semaphore lambda$semaphore$1(int i6) {
        return new PaddedSemaphore(i6);
    }

    public static <L> Striped<L> lazyWeakCustom(int i6, e0 e0Var) {
        return i6 < 1024 ? new SmallLazyStriped(i6, e0Var) : new LargeLazyStriped(i6, e0Var);
    }

    public static Striped<Lock> lazyWeakLock(int i6) {
        return lazyWeakCustom(i6, new q(2));
    }

    public static Striped<ReadWriteLock> lazyWeakReadWriteLock(int i6) {
        return lazyWeakCustom(i6, new q(0));
    }

    public static Striped<Semaphore> lazyWeakSemaphore(int i6, int i10) {
        return lazyWeakCustom(i6, new androidx.media3.exoplayer.mediacodec.b(i10, 3));
    }

    public static Striped<Lock> lock(int i6) {
        return custom(i6, new q(1));
    }

    public static Striped<ReadWriteLock> readWriteLock(int i6) {
        return custom(i6, new q(3));
    }

    public static Striped<Semaphore> semaphore(int i6, int i10) {
        return custom(i6, new androidx.media3.exoplayer.mediacodec.b(i10, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int smear(int i6) {
        int i10 = i6 ^ ((i6 >>> 20) ^ (i6 >>> 12));
        return (i10 >>> 4) ^ ((i10 >>> 7) ^ i10);
    }

    public Iterable<L> bulkGet(Iterable<? extends Object> iterable) {
        iterable.getClass();
        ArrayList arrayList = iterable instanceof Collection ? new ArrayList((Collection) iterable) : d0.s(iterable.iterator());
        if (arrayList.isEmpty()) {
            g1 g1Var = u1.f6276b;
            return c5.f6115e;
        }
        int[] iArr = new int[arrayList.size()];
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            iArr[i6] = indexFor(arrayList.get(i6));
        }
        Arrays.sort(iArr);
        int i10 = iArr[0];
        arrayList.set(0, getAt(i10));
        for (int i11 = 1; i11 < arrayList.size(); i11++) {
            int i12 = iArr[i11];
            if (i12 == i10) {
                arrayList.set(i11, arrayList.get(i11 - 1));
            } else {
                arrayList.set(i11, getAt(i12));
                i10 = i12;
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public abstract L get(Object obj);

    public abstract L getAt(int i6);

    public abstract int indexFor(Object obj);

    public abstract int size();

    private Striped() {
    }
}
