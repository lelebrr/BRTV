package androidx.media3.common.util;

import java.util.Arrays;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class LongArray {
    private static final int DEFAULT_INITIAL_CAPACITY = 32;
    private int size;
    private long[] values;

    public LongArray() {
        this(32);
    }

    public void add(long j10) {
        int i6 = this.size;
        long[] jArr = this.values;
        if (i6 == jArr.length) {
            this.values = Arrays.copyOf(jArr, i6 * 2);
        }
        long[] jArr2 = this.values;
        int i10 = this.size;
        this.size = i10 + 1;
        jArr2[i10] = j10;
    }

    public void addAll(long[] jArr) {
        int length = this.size + jArr.length;
        long[] jArr2 = this.values;
        if (length > jArr2.length) {
            this.values = Arrays.copyOf(jArr2, Math.max(jArr2.length * 2, length));
        }
        System.arraycopy(jArr, 0, this.values, this.size, jArr.length);
        this.size = length;
    }

    public long get(int i6) {
        if (i6 >= 0 && i6 < this.size) {
            return this.values[i6];
        }
        StringBuilder sbU = a.e.u(i6, "Invalid index ", ", size is ");
        sbU.append(this.size);
        throw new IndexOutOfBoundsException(sbU.toString());
    }

    public int size() {
        return this.size;
    }

    public long[] toArray() {
        return Arrays.copyOf(this.values, this.size);
    }

    public LongArray(int i6) {
        this.values = new long[i6];
    }
}
