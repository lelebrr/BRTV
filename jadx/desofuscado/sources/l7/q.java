package l7;

import java.io.Serializable;
import java.math.BigInteger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q extends m {

    /* renamed from: a, reason: collision with root package name */
    public final Serializable f8076a;

    public q(Boolean bool) {
        bool.getClass();
        this.f8076a = bool;
    }

    public static boolean e(q qVar) {
        Serializable serializable = qVar.f8076a;
        if (!(serializable instanceof Number)) {
            return false;
        }
        Number number = (Number) serializable;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    public final Number c() {
        Serializable serializable = this.f8076a;
        return serializable instanceof String ? new n7.h((String) serializable) : (Number) serializable;
    }

    public final String d() {
        Serializable serializable = this.f8076a;
        return serializable instanceof Number ? c().toString() : serializable instanceof Boolean ? ((Boolean) serializable).toString() : (String) serializable;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q.class != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        Serializable serializable = this.f8076a;
        Serializable serializable2 = qVar.f8076a;
        if (serializable == null) {
            return serializable2 == null;
        }
        if (e(this) && e(qVar)) {
            return c().longValue() == qVar.c().longValue();
        }
        if (!(serializable instanceof Number) || !(serializable2 instanceof Number)) {
            return serializable.equals(serializable2);
        }
        double dDoubleValue = c().doubleValue();
        double dDoubleValue2 = qVar.c().doubleValue();
        if (dDoubleValue != dDoubleValue2) {
            return Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2);
        }
        return true;
    }

    public final int hashCode() {
        long jDoubleToLongBits;
        Serializable serializable = this.f8076a;
        if (serializable == null) {
            return 31;
        }
        if (e(this)) {
            jDoubleToLongBits = c().longValue();
        } else {
            if (!(serializable instanceof Number)) {
                return serializable.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(c().doubleValue());
        }
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    public q(Number number) {
        number.getClass();
        this.f8076a = number;
    }

    public q(String str) {
        str.getClass();
        this.f8076a = str;
    }
}
