package f7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f6795a = 0;

    static {
        Math.log(2.0d);
    }

    public static boolean a(double d) {
        return r4.b.C(d) && (d == 0.0d || 52 - Long.numberOfTrailingZeros(r4.b.t(d)) <= Math.getExponent(d));
    }

    public static boolean b(double d) {
        if (d <= 0.0d || !r4.b.C(d)) {
            return false;
        }
        long jT = r4.b.t(d);
        return (jT & (jT - 1)) == 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int c(double r6, java.math.RoundingMode r8) {
        /*
            r0 = 0
            r2 = 0
            r3 = 1
            int r4 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r4 <= 0) goto L10
            boolean r0 = r4.b.C(r6)
            if (r0 == 0) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            java.lang.String r1 = "x must be positive and finite"
            b7.b.e(r1, r0)
            int r0 = java.lang.Math.getExponent(r6)
            int r1 = java.lang.Math.getExponent(r6)
            r4 = -1022(0xfffffffffffffc02, float:NaN)
            if (r1 < r4) goto L73
            int[] r1 = f7.a.f6794a
            int r8 = r8.ordinal()
            r8 = r1[r8]
            switch(r8) {
                case 1: goto L67;
                case 2: goto L6e;
                case 3: goto L60;
                case 4: goto L58;
                case 5: goto L4e;
                case 6: goto L33;
                case 7: goto L33;
                case 8: goto L33;
                default: goto L2d;
            }
        L2d:
            java.lang.AssertionError r6 = new java.lang.AssertionError
            r6.<init>()
            throw r6
        L33:
            long r6 = java.lang.Double.doubleToRawLongBits(r6)
            r4 = 4503599627370495(0xfffffffffffff, double:2.225073858507201E-308)
            long r6 = r6 & r4
            r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            long r6 = r6 | r4
            double r6 = java.lang.Double.longBitsToDouble(r6)
            double r6 = r6 * r6
            r4 = 4611686018427387904(0x4000000000000000, double:2.0)
            int r8 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r8 <= 0) goto L6e
            r2 = 1
            goto L6e
        L4e:
            if (r0 < 0) goto L51
            r2 = 1
        L51:
            boolean r6 = b(r6)
        L55:
            r6 = r6 ^ r3
            r2 = r2 & r6
            goto L6e
        L58:
            if (r0 >= 0) goto L5b
            r2 = 1
        L5b:
            boolean r6 = b(r6)
            goto L55
        L60:
            boolean r6 = b(r6)
            r2 = r6 ^ 1
            goto L6e
        L67:
            boolean r6 = b(r6)
            com.bumptech.glide.c.d(r6)
        L6e:
            if (r2 == 0) goto L72
            int r0 = r0 + 1
        L72:
            return r0
        L73:
            r0 = 4841369599423283200(0x4330000000000000, double:4.503599627370496E15)
            double r6 = r6 * r0
            int r6 = c(r6, r8)
            int r6 = r6 + (-52)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: f7.b.c(double, java.math.RoundingMode):int");
    }
}
