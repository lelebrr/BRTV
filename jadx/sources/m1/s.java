package m1;

import android.text.TextUtils;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    public final String f8148a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8149b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8150c;

    public s(String str, int i6, int i10) {
        this.f8148a = str;
        this.f8149b = i6;
        this.f8150c = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        int i6 = this.f8150c;
        String str = this.f8148a;
        int i10 = this.f8149b;
        return (i10 < 0 || sVar.f8149b < 0) ? TextUtils.equals(str, sVar.f8148a) && i6 == sVar.f8150c : TextUtils.equals(str, sVar.f8148a) && i10 == sVar.f8149b && i6 == sVar.f8150c;
    }

    public final int hashCode() {
        return Objects.hash(this.f8148a, Integer.valueOf(this.f8150c));
    }
}
