package g7;

import java.io.Serializable;
import okhttp3.HttpUrl;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final a f7103c = new a(new int[0]);

    /* renamed from: a, reason: collision with root package name */
    public final int[] f7104a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7105b;

    public a(int[] iArr) {
        int length = iArr.length;
        this.f7104a = iArr;
        this.f7105b = length;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        int i6 = aVar.f7105b;
        int i10 = this.f7105b;
        if (i10 != i6) {
            return false;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            b7.b.h(i11, i10);
            int i12 = this.f7104a[i11];
            b7.b.h(i11, aVar.f7105b);
            if (i12 != aVar.f7104a[i11]) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i6 = 1;
        for (int i10 = 0; i10 < this.f7105b; i10++) {
            i6 = (i6 * 31) + this.f7104a[i10];
        }
        return i6;
    }

    public final String toString() {
        int i6 = this.f7105b;
        if (i6 == 0) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder(i6 * 5);
        sb.append('[');
        int[] iArr = this.f7104a;
        sb.append(iArr[0]);
        for (int i10 = 1; i10 < i6; i10++) {
            sb.append(", ");
            sb.append(iArr[i10]);
        }
        sb.append(']');
        return sb.toString();
    }
}
