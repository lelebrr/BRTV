package a2;

import a0.f;
import android.animation.TimeInterpolator;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.media.MediaRoute2Info;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import android.util.Property;
import android.util.TypedValue;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.leanback.transition.e;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.versionedparcelable.ParcelImpl;
import com.p2elite.brtv2.R;
import ea.q;
import j9.i;
import java.io.Closeable;
import java.io.IOException;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a implements e {

    /* renamed from: a, reason: collision with root package name */
    public static Boolean f80a;

    public static Intent A(AppCompatActivity appCompatActivity) {
        Intent parentActivityIntent = appCompatActivity.getParentActivityIntent();
        if (parentActivityIntent != null) {
            return parentActivityIntent;
        }
        try {
            String strB = B(appCompatActivity, appCompatActivity.getComponentName());
            if (strB == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(appCompatActivity, strB);
            try {
                return B(appCompatActivity, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + strB + "' in manifest");
                return null;
            }
        } catch (PackageManager.NameNotFoundException e5) {
            throw new IllegalArgumentException(e5);
        }
    }

    public static String B(Context context, ComponentName componentName) {
        String string;
        PackageManager packageManager = context.getPackageManager();
        int i6 = Build.VERSION.SDK_INT;
        ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, i6 >= 29 ? 269222528 : i6 >= 24 ? 787072 : 640);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) != '.') {
            return string;
        }
        return context.getPackageName() + string;
    }

    public static ArrayList C(List list) {
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediaRoute2Info mediaRoute2InfoF = androidx.media3.common.d.f(it.next());
            if (mediaRoute2InfoF != null) {
                arrayList.add(mediaRoute2InfoF.getId());
            }
        }
        return arrayList;
    }

    public static d D(Bundle bundle) {
        try {
            Bundle bundle2 = (Bundle) bundle.getParcelable(MediaSessionCompat.KEY_SESSION2_TOKEN);
            if (bundle2 == null) {
                return null;
            }
            bundle2.setClassLoader(a.class.getClassLoader());
            Parcelable parcelable = bundle2.getParcelable(CmcdData.OBJECT_TYPE_AUDIO_ONLY);
            if (parcelable instanceof ParcelImpl) {
                return ((ParcelImpl) parcelable).f3037a;
            }
            throw new IllegalArgumentException("Invalid parcel");
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public static boolean E(String str, String str2) {
        return str.startsWith(str2.concat("(")) && str.endsWith(")");
    }

    public static List F(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        i.e(listSingletonList, "singletonList(...)");
        return listSingletonList;
    }

    public static TimeInterpolator K(Context context, g1.a aVar) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.motionEasingStandard, typedValue, true)) {
            return aVar;
        }
        if (typedValue.type != 3) {
            throw new IllegalArgumentException("Motion easing theme attribute must be a string");
        }
        String strValueOf = String.valueOf(typedValue.string);
        if (!E(strValueOf, "cubic-bezier")) {
            if (E(strValueOf, "path")) {
                return p0.a.c(com.bumptech.glide.d.g(strValueOf.substring(5, strValueOf.length() - 1)));
            }
            throw new IllegalArgumentException("Invalid motion easing type: ".concat(strValueOf));
        }
        String[] strArrSplit = strValueOf.substring(13, strValueOf.length() - 1).split(",");
        if (strArrSplit.length == 4) {
            return p0.a.b(v(strArrSplit, 0), v(strArrSplit, 1), v(strArrSplit, 2), v(strArrSplit, 3));
        }
        throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + strArrSplit.length);
    }

    public static long L(long j10, long j11) {
        int iNumberOfLeadingZeros = Long.numberOfLeadingZeros(~j11) + Long.numberOfLeadingZeros(j11) + Long.numberOfLeadingZeros(~j10) + Long.numberOfLeadingZeros(j10);
        if (iNumberOfLeadingZeros > 65) {
            return j10 * j11;
        }
        long j12 = ((j10 ^ j11) >>> 63) + Long.MAX_VALUE;
        if ((iNumberOfLeadingZeros < 64) || ((j11 == Long.MIN_VALUE) & (j10 < 0))) {
            return j12;
        }
        long j13 = j10 * j11;
        return (j10 == 0 || j13 / j10 == j11) ? j13 : j12;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static q1.w M(android.media.MediaRoute2Info r13) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.a.M(android.media.MediaRoute2Info):q1.w");
    }

    public static String N(Object... objArr) {
        int length;
        int length2;
        int iIndexOf;
        String string;
        int i6 = 0;
        int i10 = 0;
        while (true) {
            length = objArr.length;
            if (i10 >= length) {
                break;
            }
            Object obj = objArr[i10];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e5) {
                    String strI = q.i(obj.getClass().getName(), "@", Integer.toHexString(System.identityHashCode(obj)));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(strI), (Throwable) e5);
                    string = "<" + strI + " threw " + e5.getClass().getName() + ">";
                }
            }
            objArr[i10] = string;
            i10++;
        }
        StringBuilder sb = new StringBuilder((length * 16) + 29);
        int i11 = 0;
        while (true) {
            length2 = objArr.length;
            if (i6 >= length2 || (iIndexOf = "expected a non-null reference".indexOf("%s", i11)) == -1) {
                break;
            }
            sb.append((CharSequence) "expected a non-null reference", i11, iIndexOf);
            sb.append(objArr[i6]);
            i11 = iIndexOf + 2;
            i6++;
        }
        sb.append((CharSequence) "expected a non-null reference", i11, 29);
        if (i6 < length2) {
            sb.append(" [");
            sb.append(objArr[i6]);
            for (int i12 = i6 + 1; i12 < objArr.length; i12++) {
                sb.append(", ");
                sb.append(objArr[i12]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static y8.c m(y8.c cVar) {
        cVar.h();
        cVar.f11431c = true;
        return cVar.f11430b > 0 ? cVar : y8.c.d;
    }

    public static void n(String str, boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void o(int i6) {
        if (i6 < 0) {
            throw new IllegalArgumentException();
        }
    }

    public static void p(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static long q(long j10, long j11) {
        long j12 = j10 + j11;
        if (((j10 ^ j11) < 0) || ((j10 ^ j12) >= 0)) {
            return j12;
        }
        StringBuilder sb = new StringBuilder("overflow: checkedAdd(");
        sb.append(j10);
        sb.append(", ");
        throw new ArithmeticException(a.e.s(sb, j11, ")"));
    }

    public static final void r(Closeable closeable, Throwable th) throws IOException {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                l5.a.a(th, th2);
            }
        }
    }

    public static String s(String str, String str2) {
        byte[] bArrA = w3.a.a(str);
        byte[] bArrA2 = w3.a.a(str2);
        int length = bArrA.length;
        int length2 = bArrA2.length;
        int i6 = 0;
        int i10 = 0;
        while (i6 < length) {
            if (i10 >= length2) {
                i10 = 0;
            }
            bArrA[i6] = (byte) (bArrA[i6] ^ bArrA2[i10]);
            i6++;
            i10++;
        }
        return new String(bArrA, StandardCharsets.UTF_8);
    }

    public static long t(long j10, long j11, RoundingMode roundingMode) {
        roundingMode.getClass();
        long j12 = j10 / j11;
        long j13 = j10 - (j11 * j12);
        if (j13 == 0) {
            return j12;
        }
        int i6 = ((int) ((j10 ^ j11) >> 63)) | 1;
        switch (f7.d.f6797a[roundingMode.ordinal()]) {
            case 1:
                com.bumptech.glide.c.d(j13 == 0);
                return j12;
            case 2:
                return j12;
            case 3:
                if (i6 >= 0) {
                    return j12;
                }
                break;
            case 4:
                break;
            case 5:
                if (i6 <= 0) {
                    return j12;
                }
                break;
            case 6:
            case 7:
            case 8:
                long jAbs = Math.abs(j13);
                long jAbs2 = jAbs - (Math.abs(j11) - jAbs);
                if (jAbs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP && (roundingMode != RoundingMode.HALF_EVEN || (1 & j12) == 0)) {
                        return j12;
                    }
                } else if (jAbs2 <= 0) {
                    return j12;
                }
                break;
            default:
                throw new AssertionError();
        }
        return j12 + i6;
    }

    public static long u(long j10, long j11) {
        com.bumptech.glide.c.c(j10, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        com.bumptech.glide.c.c(j11, "b");
        if (j10 == 0) {
            return j11;
        }
        if (j11 == 0) {
            return j10;
        }
        int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j10);
        long jNumberOfTrailingZeros = j10 >> iNumberOfTrailingZeros;
        int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros(j11);
        long j12 = j11 >> iNumberOfTrailingZeros2;
        while (jNumberOfTrailingZeros != j12) {
            long j13 = jNumberOfTrailingZeros - j12;
            long j14 = (j13 >> 63) & j13;
            long j15 = (j13 - j14) - j14;
            j12 += j14;
            jNumberOfTrailingZeros = j15 >> Long.numberOfTrailingZeros(j15);
        }
        return jNumberOfTrailingZeros << Math.min(iNumberOfTrailingZeros, iNumberOfTrailingZeros2);
    }

    public static float v(String[] strArr, int i6) throws NumberFormatException {
        float f = Float.parseFloat(strArr[i6]);
        if (f >= 0.0f && f <= 1.0f) {
            return f;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + f);
    }

    public static String w() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
    }

    public static String x(Context context, int i6) {
        if (i6 == -1) {
            return "UNKNOWN";
        }
        try {
            return context.getResources().getResourceEntryName(i6);
        } catch (Exception unused) {
            return a.e.n(i6, "?");
        }
    }

    public static String y(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return "UNKNOWN";
        }
    }

    public static Intent z(Context context, ComponentName componentName) {
        String strB = B(context, componentName);
        if (strB == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), strB);
        return B(context, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    public void G() {
        synchronized (this) {
        }
    }

    public abstract void H(Throwable th);

    public abstract void I(f fVar);

    public abstract Object J(Intent intent, int i6);

    @Override // androidx.leanback.transition.e
    public float j(View view) {
        return view.getTranslationY();
    }

    @Override // androidx.leanback.transition.e
    public Property l() {
        return View.TRANSLATION_Y;
    }
}
