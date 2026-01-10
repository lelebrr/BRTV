package n7;

import java.math.BigDecimal;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends Number {

    /* renamed from: a, reason: collision with root package name */
    public final String f8480a;

    public h(String str) {
        this.f8480a = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f8480a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        Object obj2 = ((h) obj).f8480a;
        String str = this.f8480a;
        return str == obj2 || str.equals(obj2);
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f8480a);
    }

    public final int hashCode() {
        return this.f8480a.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        String str = this.f8480a;
        try {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                return new BigDecimal(str).intValue();
            }
        } catch (NumberFormatException unused2) {
            return (int) Long.parseLong(str);
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        String str = this.f8480a;
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return new BigDecimal(str).longValue();
        }
    }

    public final String toString() {
        return this.f8480a;
    }
}
