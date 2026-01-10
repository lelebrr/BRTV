package r4;

import android.content.Context;
import android.icu.text.DateFormat;
import android.icu.util.TimeZone;
import android.os.Build;
import android.os.Trace;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.w3;
import androidx.appcompat.widget.y3;
import androidx.leanback.transition.FadeAndShortSlide;
import androidx.recyclerview.widget.d0;
import androidx.recyclerview.widget.l1;
import androidx.recyclerview.widget.x0;
import com.google.android.material.datepicker.g0;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static long f9524a;

    /* renamed from: b, reason: collision with root package name */
    public static Method f9525b;

    public static int A(int[] iArr, int i6, int i10, int i11) {
        while (i10 < i11) {
            if (iArr[i10] == i6) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static boolean B() {
        try {
            if (f9525b == null) {
                return Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        try {
            if (f9525b == null) {
                f9524a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f9525b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) f9525b.invoke(null, Long.valueOf(f9524a))).booleanValue();
        } catch (Exception e5) {
            if (!(e5 instanceof InvocationTargetException)) {
                Log.v("Trace", "Unable to call isTagEnabled via reflection", e5);
                return false;
            }
            Throwable cause = e5.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
    }

    public static boolean C(double d) {
        return Math.getExponent(d) <= 1023;
    }

    public static int J(double d) {
        if (Double.isNaN(d)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        if (d > 2.147483647E9d) {
            return Integer.MAX_VALUE;
        }
        if (d < -2.147483648E9d) {
            return Integer.MIN_VALUE;
        }
        return (int) Math.round(d);
    }

    public static int K(long j10) {
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j10 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j10;
    }

    public static void L(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            w3.a(view, charSequence);
            return;
        }
        y3 y3Var = y3.f896k;
        if (y3Var != null && y3Var.f898a == view) {
            y3.b(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new y3(view, charSequence);
            return;
        }
        y3 y3Var2 = y3.f897l;
        if (y3Var2 != null && y3Var2.f898a == view) {
            y3Var2.a();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void M(i9.p pVar, t9.a aVar, t9.a aVar2) {
        try {
            x9.a.f(com.bumptech.glide.d.r(((c9.a) pVar).create(aVar, aVar2)), w8.l.f10832a, null);
        } catch (Throwable th) {
            aVar2.resumeWith(o9.d.f(th));
            throw th;
        }
    }

    public static int[] N(Collection collection) {
        if (collection instanceof g7.c) {
            g7.c cVar = (g7.c) collection;
            return Arrays.copyOfRange(cVar.f7109a, cVar.f7110b, cVar.f7111c);
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i6 = 0; i6 < length; i6++) {
            Object obj = array[i6];
            obj.getClass();
            iArr[i6] = ((Number) obj).intValue();
        }
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Integer P(java.lang.String r21) {
        /*
            r0 = r21
            r1 = 1
            r21.getClass()
            boolean r2 = r21.isEmpty()
            if (r2 == 0) goto Lf
        Lc:
            r0 = 0
            goto L7e
        Lf:
            r2 = 0
            char r4 = r0.charAt(r2)
            r5 = 45
            if (r4 != r5) goto L19
            r2 = 1
        L19:
            int r4 = r21.length()
            if (r2 != r4) goto L20
            goto Lc
        L20:
            int r4 = r2 + 1
            char r5 = r0.charAt(r2)
            r6 = -1
            r7 = 128(0x80, float:1.8E-43)
            if (r5 >= r7) goto L30
            byte[] r8 = g7.d.f7112a
            r5 = r8[r5]
            goto L33
        L30:
            byte[] r5 = g7.d.f7112a
            r5 = -1
        L33:
            if (r5 < 0) goto Lc
            r8 = 10
            if (r5 < r8) goto L3a
            goto Lc
        L3a:
            int r5 = -r5
            long r9 = (long) r5
            long r11 = (long) r8
            r13 = -9223372036854775808
            long r15 = r13 / r11
        L41:
            int r5 = r21.length()
            if (r4 >= r5) goto L6d
            int r5 = r4 + 1
            char r4 = r0.charAt(r4)
            if (r4 >= r7) goto L54
            byte[] r17 = g7.d.f7112a
            r4 = r17[r4]
            goto L57
        L54:
            byte[] r4 = g7.d.f7112a
            r4 = -1
        L57:
            if (r4 < 0) goto Lc
            if (r4 >= r8) goto Lc
            int r17 = (r9 > r15 ? 1 : (r9 == r15 ? 0 : -1))
            if (r17 >= 0) goto L60
            goto Lc
        L60:
            long r9 = r9 * r11
            long r3 = (long) r4
            long r18 = r3 + r13
            int r20 = (r9 > r18 ? 1 : (r9 == r18 ? 0 : -1))
            if (r20 >= 0) goto L6a
            goto Lc
        L6a:
            long r9 = r9 - r3
            r4 = r5
            goto L41
        L6d:
            if (r2 == 0) goto L74
            java.lang.Long r0 = java.lang.Long.valueOf(r9)
            goto L7e
        L74:
            int r0 = (r9 > r13 ? 1 : (r9 == r13 ? 0 : -1))
            if (r0 != 0) goto L79
            goto Lc
        L79:
            long r0 = -r9
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
        L7e:
            if (r0 == 0) goto L97
            long r1 = r0.longValue()
            int r3 = r0.intValue()
            long r3 = (long) r3
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L8e
            goto L97
        L8e:
            int r0 = r0.intValue()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r0)
            goto L98
        L97:
            r3 = 0
        L98:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: r4.b.P(java.lang.String):java.lang.Integer");
    }

    public static void Q(StringBuilder sb, HashMap map) {
        sb.append("{");
        boolean z7 = true;
        for (String str : map.keySet()) {
            if (!z7) {
                sb.append(",");
            }
            String str2 = (String) map.get(str);
            sb.append("\"");
            sb.append(str);
            sb.append("\":");
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append("\"");
                sb.append(str2);
                sb.append("\"");
            }
            z7 = false;
        }
        sb.append("}");
    }

    public static List a(int... iArr) {
        return iArr.length == 0 ? Collections.emptyList() : new g7.c(0, iArr.length, iArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object b(androidx.lifecycle.p r6, c9.c r7) throws java.lang.Throwable {
        /*
            boolean r0 = r7 instanceof r2.b
            if (r0 == 0) goto L13
            r0 = r7
            r2.b r0 = (r2.b) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            r2.b r0 = new r2.b
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f9463c
            b9.a r1 = b9.a.f3322a
            int r2 = r0.d
            w8.l r3 = w8.l.f10832a
            r4 = 1
            if (r2 == 0) goto L37
            if (r2 != r4) goto L2f
            j9.n r6 = r0.f9462b
            androidx.lifecycle.p r0 = r0.f9461a
            o9.d.I(r7)     // Catch: java.lang.Throwable -> L2d
            goto L71
        L2d:
            r7 = move-exception
            goto L80
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            o9.d.I(r7)
            androidx.lifecycle.o r7 = r6.b()
            androidx.lifecycle.o r2 = androidx.lifecycle.o.d
            int r7 = r7.compareTo(r2)
            if (r7 < 0) goto L47
            return r3
        L47:
            j9.n r7 = new j9.n
            r7.<init>()
            r0.f9461a = r6     // Catch: java.lang.Throwable -> L7b
            r0.f9462b = r7     // Catch: java.lang.Throwable -> L7b
            r0.d = r4     // Catch: java.lang.Throwable -> L7b
            t9.e r2 = new t9.e     // Catch: java.lang.Throwable -> L7b
            a9.d r0 = com.bumptech.glide.d.r(r0)     // Catch: java.lang.Throwable -> L7b
            r2.<init>(r0, r4)     // Catch: java.lang.Throwable -> L7b
            r2.n()     // Catch: java.lang.Throwable -> L7b
            r2.c r0 = new r2.c     // Catch: java.lang.Throwable -> L7b
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L7b
            r7.f7476a = r0     // Catch: java.lang.Throwable -> L7b
            r6.a(r0)     // Catch: java.lang.Throwable -> L7b
            java.lang.Object r0 = r2.m()     // Catch: java.lang.Throwable -> L7b
            if (r0 != r1) goto L6f
            return r1
        L6f:
            r0 = r6
            r6 = r7
        L71:
            java.lang.Object r6 = r6.f7476a
            androidx.lifecycle.v r6 = (androidx.lifecycle.v) r6
            if (r6 == 0) goto L7a
            r0.c(r6)
        L7a:
            return r3
        L7b:
            r0 = move-exception
            r5 = r0
            r0 = r6
            r6 = r7
            r7 = r5
        L80:
            java.lang.Object r6 = r6.f7476a
            androidx.lifecycle.v r6 = (androidx.lifecycle.v) r6
            if (r6 == 0) goto L89
            r0.c(r6)
        L89:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: r4.b.b(androidx.lifecycle.p, c9.c):java.lang.Object");
    }

    public static int c(long j10) {
        int i6 = (int) j10;
        b7.b.g(((long) i6) == j10, "Out of range: %s", j10);
        return i6;
    }

    public static int f(l1 l1Var, d0 d0Var, View view, View view2, x0 x0Var, boolean z7) {
        if (x0Var.getChildCount() == 0 || l1Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z7) {
            return Math.abs(x0Var.getPosition(view) - x0Var.getPosition(view2)) + 1;
        }
        return Math.min(d0Var.l(), d0Var.b(view2) - d0Var.e(view));
    }

    public static int g(l1 l1Var, d0 d0Var, View view, View view2, x0 x0Var, boolean z7, boolean z10) {
        if (x0Var.getChildCount() == 0 || l1Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z10 ? Math.max(0, (l1Var.b() - Math.max(x0Var.getPosition(view), x0Var.getPosition(view2))) - 1) : Math.max(0, Math.min(x0Var.getPosition(view), x0Var.getPosition(view2)));
        if (z7) {
            return Math.round((iMax * (Math.abs(d0Var.b(view2) - d0Var.e(view)) / (Math.abs(x0Var.getPosition(view) - x0Var.getPosition(view2)) + 1))) + (d0Var.k() - d0Var.e(view)));
        }
        return iMax;
    }

    public static int h(l1 l1Var, d0 d0Var, View view, View view2, x0 x0Var, boolean z7) {
        if (x0Var.getChildCount() == 0 || l1Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z7) {
            return l1Var.b();
        }
        return (int) (((d0Var.b(view2) - d0Var.e(view)) / (Math.abs(x0Var.getPosition(view) - x0Var.getPosition(view2)) + 1)) * l1Var.b());
    }

    public static int i(int i6, int i10) {
        b7.b.d("min (%s) must be less than or equal to max (%s)", i10, 1073741823, i10 <= 1073741823);
        return Math.min(Math.max(i6, i10), 1073741823);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long[] j(Serializable serializable) {
        if (!(serializable instanceof int[])) {
            if (serializable instanceof long[]) {
                return (long[]) serializable;
            }
            return null;
        }
        int[] iArr = (int[]) serializable;
        long[] jArr = new long[iArr.length];
        for (int i6 = 0; i6 < iArr.length; i6++) {
            jArr[i6] = iArr[i6];
        }
        return jArr;
    }

    public static b k(int i6, double[] dArr, double[][] dArr2) {
        int i10 = dArr.length == 1 ? 2 : i6;
        double d = 0.0d;
        if (i10 != 0) {
            if (i10 == 2) {
                double d10 = dArr[0];
                double[] dArr3 = dArr2[0];
                s.c cVar = new s.c();
                cVar.f9679c = d10;
                cVar.d = dArr3;
                return cVar;
            }
            s.b bVar = new s.b();
            int length = dArr2[0].length;
            bVar.d = dArr;
            bVar.f9678e = dArr2;
            if (length > 2) {
                double d11 = 0.0d;
                int i11 = 0;
                while (i11 < dArr.length) {
                    double d12 = dArr2[i11][0];
                    if (i11 > 0) {
                        Math.hypot(d12 - d, d12 - d11);
                    }
                    i11++;
                    d11 = d12;
                    d = d11;
                }
            }
            return bVar;
        }
        s.f fVar = new s.f();
        int length2 = dArr.length;
        int length3 = dArr2[0].length;
        int i12 = length2 - 1;
        Class cls = Double.TYPE;
        double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) cls, i12, length3);
        double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) cls, length2, length3);
        for (int i13 = 0; i13 < length3; i13++) {
            int i14 = 0;
            while (i14 < i12) {
                int i15 = i14 + 1;
                double d13 = dArr[i15] - dArr[i14];
                double[] dArr6 = dArr4[i14];
                double d14 = (dArr2[i15][i13] - dArr2[i14][i13]) / d13;
                dArr6[i13] = d14;
                if (i14 == 0) {
                    dArr5[i14][i13] = d14;
                } else {
                    dArr5[i14][i13] = (dArr4[i14 - 1][i13] + d14) * 0.5d;
                }
                i14 = i15;
            }
            dArr5[i12][i13] = dArr4[length2 - 2][i13];
        }
        int i16 = 0;
        while (i16 < i12) {
            int i17 = 0;
            while (i17 < length3) {
                double d15 = dArr4[i16][i17];
                if (d15 == d) {
                    dArr5[i16][i17] = d;
                    dArr5[i16 + 1][i17] = d;
                } else {
                    double d16 = dArr5[i16][i17] / d15;
                    int i18 = i16 + 1;
                    double d17 = dArr5[i18][i17] / d15;
                    double dHypot = Math.hypot(d16, d17);
                    if (dHypot > 9.0d) {
                        double d18 = 3.0d / dHypot;
                        double[] dArr7 = dArr5[i16];
                        double[] dArr8 = dArr4[i16];
                        dArr7[i17] = d16 * d18 * dArr8[i17];
                        dArr5[i18][i17] = d18 * d17 * dArr8[i17];
                    }
                }
                i17++;
                d = 0.0d;
            }
            i16++;
            d = 0.0d;
        }
        fVar.f9685c = dArr;
        fVar.d = dArr2;
        fVar.f9686e = dArr5;
        return fVar;
    }

    public static String l(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), a2.a.s("F+X2qen4wcsf7w==\n", "douS24aRpZQ=\n"));
        return (string == null || string.isEmpty()) ? a2.a.s("ke1s\n", "9YQIdxtKtSU=\n") : string;
    }

    public static String m(long j10) {
        Calendar calendarG = g0.g();
        Calendar calendarH = g0.h(null);
        calendarH.setTimeInMillis(j10);
        return calendarG.get(1) == calendarH.get(1) ? p(j10, Locale.getDefault()) : z(j10, Locale.getDefault());
    }

    public static String p(long j10, Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            AtomicReference atomicReference = g0.f4838a;
            DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("MMMd", locale);
            instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
            return instanceForSkeleton.format(new Date(j10));
        }
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) g0.d(2, locale);
        String pattern = simpleDateFormat.toPattern();
        int iB = g0.b(1, 0, pattern, "yY");
        if (iB < pattern.length()) {
            int iB2 = g0.b(1, iB, pattern, "EMd");
            pattern = pattern.replace(pattern.substring(g0.b(-1, iB, pattern, iB2 < pattern.length() ? "EMd," : "EMd") + 1, iB2), " ").trim();
        }
        simpleDateFormat.applyPattern(pattern);
        return simpleDateFormat.format(new Date(j10));
    }

    public static long t(double d) {
        b7.b.e("not a normal value", C(d));
        int exponent = Math.getExponent(d);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d) & 4503599627370495L;
        return exponent == -1023 ? jDoubleToRawLongBits << 1 : jDoubleToRawLongBits | 4503599627370496L;
    }

    public static String z(long j10, Locale locale) {
        if (Build.VERSION.SDK_INT < 24) {
            return g0.d(2, locale).format(new Date(j10));
        }
        AtomicReference atomicReference = g0.f4838a;
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMd", locale);
        instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
        return instanceForSkeleton.format(new Date(j10));
    }

    public abstract void G(int i6);

    public abstract void H(View view, int i6, int i10);

    public abstract void I(View view, float f, float f3);

    public abstract boolean O(int i6, View view);

    public abstract int d(int i6, View view);

    public abstract int e(int i6, View view);

    public float n(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        return view.getTranslationX();
    }

    public float o(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        return view.getTranslationY();
    }

    public abstract double q(double d);

    public abstract void r(double d, double[] dArr);

    public abstract void s(double d, float[] fArr);

    public abstract double u(double d);

    public abstract void v(double d, double[] dArr);

    public abstract double[] w();

    public int x(View view) {
        return 0;
    }

    public int y() {
        return 0;
    }

    public void E() {
    }

    public void D(int i6, int i10) {
    }

    public void F(int i6, View view) {
    }
}
