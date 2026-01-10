package androidx.media3.common.util;

import java.util.NoSuchElementException;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class LongArrayQueue {
    public static final int DEFAULT_INITIAL_CAPACITY = 16;
    private long[] data;
    private int headIndex;
    private int size;
    private int tailIndex;
    private int wrapAroundMask;

    public LongArrayQueue() {
        this(16);
    }

    private void doubleArraySize() {
        long[] jArr = this.data;
        int length = jArr.length << 1;
        if (length < 0) {
            throw new IllegalStateException();
        }
        long[] jArr2 = new long[length];
        int length2 = jArr.length;
        int i6 = this.headIndex;
        int i10 = length2 - i6;
        System.arraycopy(jArr, i6, jArr2, 0, i10);
        System.arraycopy(this.data, 0, jArr2, i10, i6);
        this.headIndex = 0;
        this.tailIndex = this.size - 1;
        this.data = jArr2;
        this.wrapAroundMask = jArr2.length - 1;
    }

    public void add(long j10) {
        if (this.size == this.data.length) {
            doubleArraySize();
        }
        int i6 = (this.tailIndex + 1) & this.wrapAroundMask;
        this.tailIndex = i6;
        this.data[i6] = j10;
        this.size++;
    }

    public int capacity() {
        return this.data.length;
    }

    public void clear() {
        this.headIndex = 0;
        this.tailIndex = -1;
        this.size = 0;
    }

    public long element() {
        if (this.size != 0) {
            return this.data[this.headIndex];
        }
        throw new NoSuchElementException();
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public long remove() {
        int i6 = this.size;
        if (i6 == 0) {
            throw new NoSuchElementException();
        }
        long[] jArr = this.data;
        int i10 = this.headIndex;
        long j10 = jArr[i10];
        this.headIndex = this.wrapAroundMask & (i10 + 1);
        this.size = i6 - 1;
        return j10;
    }

    public int size() {
        return this.size;
    }

    public LongArrayQueue(int i6) {
        Assertions.checkArgument(i6 >= 0 && i6 <= 1073741824);
        i6 = i6 == 0 ? 1 : i6;
        i6 = Integer.bitCount(i6) != 1 ? Integer.highestOneBit(i6 - 1) << 1 : i6;
        this.headIndex = 0;
        this.tailIndex = -1;
        this.size = 0;
        long[] jArr = new long[i6];
        this.data = jArr;
        this.wrapAroundMask = jArr.length - 1;
    }
}
