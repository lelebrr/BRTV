package com.google.common.util.concurrent;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLongArray;
import okhttp3.HttpUrl;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
public class AtomicDoubleArray implements Serializable {
    private static final long serialVersionUID = 0;
    private transient AtomicLongArray longs;

    public AtomicDoubleArray(int i6) {
        this.longs = new AtomicLongArray(i6);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i6 = objectInputStream.readInt();
        long[] jArrCopyOf = new long[10];
        int i10 = 0;
        int i11 = 0;
        while (i10 < i6) {
            long jDoubleToRawLongBits = Double.doubleToRawLongBits(objectInputStream.readDouble());
            int i12 = i11 + 1;
            if (i12 > jArrCopyOf.length) {
                int length = jArrCopyOf.length;
                if (i12 < 0) {
                    throw new AssertionError("cannot store more than MAX_VALUE elements");
                }
                int iHighestOneBit = length + (length >> 1) + 1;
                if (iHighestOneBit < i12) {
                    iHighestOneBit = Integer.highestOneBit(i11) << 1;
                }
                if (iHighestOneBit < 0) {
                    iHighestOneBit = Integer.MAX_VALUE;
                }
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, iHighestOneBit);
            }
            jArrCopyOf[i11] = jDoubleToRawLongBits;
            i10++;
            i11 = i12;
        }
        g7.b bVar = i11 == 0 ? g7.b.f7106c : new g7.b(jArrCopyOf, i11);
        this.longs = new AtomicLongArray(Arrays.copyOfRange(bVar.f7107a, 0, bVar.f7108b));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        int length = length();
        objectOutputStream.writeInt(length);
        for (int i6 = 0; i6 < length; i6++) {
            objectOutputStream.writeDouble(get(i6));
        }
    }

    public double addAndGet(int i6, double d) {
        long j10;
        double dLongBitsToDouble;
        do {
            j10 = this.longs.get(i6);
            dLongBitsToDouble = Double.longBitsToDouble(j10) + d;
        } while (!this.longs.compareAndSet(i6, j10, Double.doubleToRawLongBits(dLongBitsToDouble)));
        return dLongBitsToDouble;
    }

    public final boolean compareAndSet(int i6, double d, double d10) {
        return this.longs.compareAndSet(i6, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d10));
    }

    public final double get(int i6) {
        return Double.longBitsToDouble(this.longs.get(i6));
    }

    public final double getAndAdd(int i6, double d) {
        long j10;
        double dLongBitsToDouble;
        do {
            j10 = this.longs.get(i6);
            dLongBitsToDouble = Double.longBitsToDouble(j10);
        } while (!this.longs.compareAndSet(i6, j10, Double.doubleToRawLongBits(dLongBitsToDouble + d)));
        return dLongBitsToDouble;
    }

    public final double getAndSet(int i6, double d) {
        return Double.longBitsToDouble(this.longs.getAndSet(i6, Double.doubleToRawLongBits(d)));
    }

    public final void lazySet(int i6, double d) {
        this.longs.lazySet(i6, Double.doubleToRawLongBits(d));
    }

    public final int length() {
        return this.longs.length();
    }

    public final void set(int i6, double d) {
        this.longs.set(i6, Double.doubleToRawLongBits(d));
    }

    public String toString() {
        int length = length();
        int i6 = length - 1;
        if (i6 == -1) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder(length * 19);
        sb.append('[');
        int i10 = 0;
        while (true) {
            sb.append(Double.longBitsToDouble(this.longs.get(i10)));
            if (i10 == i6) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
            i10++;
        }
    }

    public final boolean weakCompareAndSet(int i6, double d, double d10) {
        return this.longs.weakCompareAndSet(i6, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d10));
    }

    public AtomicDoubleArray(double[] dArr) {
        int length = dArr.length;
        long[] jArr = new long[length];
        for (int i6 = 0; i6 < length; i6++) {
            jArr[i6] = Double.doubleToRawLongBits(dArr[i6]);
        }
        this.longs = new AtomicLongArray(jArr);
    }
}
