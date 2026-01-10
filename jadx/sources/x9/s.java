package x9;

import androidx.media3.common.C;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import t9.b1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class s extends c implements b1 {
    public static final AtomicIntegerFieldUpdater d = AtomicIntegerFieldUpdater.newUpdater(s.class, "cleanedAndPointers");

    /* renamed from: c, reason: collision with root package name */
    public final long f11130c;
    private volatile int cleanedAndPointers;

    public s(long j10, aa.g gVar, int i6) {
        super(gVar);
        this.f11130c = j10;
        this.cleanedAndPointers = i6 << 16;
    }

    @Override // x9.c
    public final boolean a() {
        if (d.get(this) == d()) {
            Object obj = c.f11106a.get(this);
            if ((obj == a.f11102b ? null : (c) obj) != null) {
                return true;
            }
        }
        return false;
    }

    public final boolean c() {
        if (d.addAndGet(this, -65536) == d()) {
            Object obj = c.f11106a.get(this);
            if ((obj == a.f11102b ? null : (c) obj) != null) {
                return true;
            }
        }
        return false;
    }

    public abstract int d();

    public abstract void e(int i6);

    public final boolean f() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i6;
        do {
            atomicIntegerFieldUpdater = d;
            i6 = atomicIntegerFieldUpdater.get(this);
            if (i6 == d()) {
                Object obj = c.f11106a.get(this);
                if ((obj == a.f11102b ? null : (c) obj) != null) {
                    return false;
                }
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i6, C.DEFAULT_BUFFER_SEGMENT_SIZE + i6));
        return true;
    }
}
