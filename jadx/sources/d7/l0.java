package d7;

import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l0 extends b5 implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final androidx.media3.exoplayer.trackselection.a f6206a;

    public l0(androidx.media3.exoplayer.trackselection.a aVar) {
        this.f6206a = aVar;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f6206a.compare(obj, obj2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l0) {
            return this.f6206a.equals(((l0) obj).f6206a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f6206a.hashCode();
    }

    public final String toString() {
        return this.f6206a.toString();
    }
}
