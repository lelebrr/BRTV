package g7;

import java.io.Serializable;
import okhttp3.HttpUrl;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final b f7106c = new b(new long[0], 0);

    /* renamed from: a, reason: collision with root package name */
    public final long[] f7107a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7108b;

    public b(long[] jArr, int i6) {
        this.f7107a = jArr;
        this.f7108b = i6;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        int i6 = bVar.f7108b;
        int i10 = this.f7108b;
        if (i10 != i6) {
            return false;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            b7.b.h(i11, i10);
            long j10 = this.f7107a[i11];
            b7.b.h(i11, bVar.f7108b);
            if (j10 != bVar.f7107a[i11]) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int iR = 1;
        for (int i6 = 0; i6 < this.f7108b; i6++) {
            iR = (iR * 31) + u7.d.r(this.f7107a[i6]);
        }
        return iR;
    }

    public final String toString() {
        int i6 = this.f7108b;
        if (i6 == 0) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder(i6 * 5);
        sb.append('[');
        long[] jArr = this.f7107a;
        sb.append(jArr[0]);
        for (int i10 = 1; i10 < i6; i10++) {
            sb.append(", ");
            sb.append(jArr[i10]);
        }
        sb.append(']');
        return sb.toString();
    }
}
