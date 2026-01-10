package e0;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import com.google.android.gms.internal.cast.e0;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final float[][] f6375a = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};

    /* renamed from: b, reason: collision with root package name */
    public static final float[][] f6376b = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};

    /* renamed from: c, reason: collision with root package name */
    public static final float[] f6377c = {95.047f, 100.0f, 108.883f};
    public static final float[][] d = {new float[]{0.41233894f, 0.35762063f, 0.18051042f}, new float[]{0.2126f, 0.7152f, 0.0722f}, new float[]{0.01932141f, 0.11916382f, 0.9503448f}};

    /* renamed from: e, reason: collision with root package name */
    public static final Object f6378e = new Object();
    public static Method f;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f6379g;

    public static e0 b(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i6) {
        e0 e0VarA;
        boolean zE = e(xmlPullParser, str);
        Object obj = null;
        int i10 = 0;
        if (zE) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i6, typedValue);
            int i11 = typedValue.type;
            if (i11 >= 28 && i11 <= 31) {
                return new e0(obj, typedValue.data, obj);
            }
            try {
                e0VarA = e0.a(typedArray.getResources(), typedArray.getResourceId(i6, 0), theme);
            } catch (Exception e5) {
                Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e5);
                e0VarA = null;
            }
            if (e0VarA != null) {
                return e0VarA;
            }
        }
        return new e0(obj, i10, obj);
    }

    public static int c(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i6, int i10) {
        return !e(xmlPullParser, str) ? i10 : typedArray.getInt(i6, i10);
    }

    public static String d(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i6) {
        if (e(xmlPullParser, str)) {
            return typedArray.getString(i6);
        }
        return null;
    }

    public static boolean e(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    public static int f(float f3) {
        if (f3 < 1.0f) {
            return -16777216;
        }
        if (f3 > 99.0f) {
            return -1;
        }
        float f4 = (f3 + 16.0f) / 116.0f;
        float f5 = f3 > 8.0f ? f4 * f4 * f4 : f3 / 903.2963f;
        float f10 = f4 * f4 * f4;
        boolean z7 = f10 > 0.008856452f;
        float f11 = z7 ? f10 : ((f4 * 116.0f) - 16.0f) / 903.2963f;
        if (!z7) {
            f10 = ((f4 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = f6377c;
        return f0.a.b(f11 * fArr[0], f5 * fArr[1], f10 * fArr[2]);
    }

    public static float g(int i6) {
        float f3 = i6 / 255.0f;
        return (f3 <= 0.04045f ? f3 / 12.92f : (float) Math.pow((f3 + 0.055f) / 1.055f, 2.4000000953674316d)) * 100.0f;
    }

    public static TypedArray h(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public static e k(XmlResourceParser xmlResourceParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlResourceParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        xmlResourceParser.require(2, null, "font-family");
        if (xmlResourceParser.getName().equals("font-family")) {
            TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), b0.a.f3095b);
            String string = typedArrayObtainAttributes.getString(0);
            String string2 = typedArrayObtainAttributes.getString(4);
            String string3 = typedArrayObtainAttributes.getString(5);
            int resourceId = typedArrayObtainAttributes.getResourceId(1, 0);
            int integer = typedArrayObtainAttributes.getInteger(2, 1);
            int integer2 = typedArrayObtainAttributes.getInteger(3, 500);
            String string4 = typedArrayObtainAttributes.getString(6);
            typedArrayObtainAttributes.recycle();
            if (string != null && string2 != null && string3 != null) {
                while (xmlResourceParser.next() != 3) {
                    n(xmlResourceParser);
                }
                return new h(new c2.b(string, string2, string3, l(resources, resourceId)), integer, integer2, string4);
            }
            ArrayList arrayList = new ArrayList();
            while (xmlResourceParser.next() != 3) {
                if (xmlResourceParser.getEventType() == 2) {
                    if (xmlResourceParser.getName().equals("font")) {
                        TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), b0.a.f3096c);
                        int i6 = typedArrayObtainAttributes2.getInt(typedArrayObtainAttributes2.hasValue(8) ? 8 : 1, 400);
                        boolean z7 = 1 == typedArrayObtainAttributes2.getInt(typedArrayObtainAttributes2.hasValue(6) ? 6 : 2, 0);
                        int i10 = typedArrayObtainAttributes2.hasValue(9) ? 9 : 3;
                        String string5 = typedArrayObtainAttributes2.getString(typedArrayObtainAttributes2.hasValue(7) ? 7 : 4);
                        int i11 = typedArrayObtainAttributes2.getInt(i10, 0);
                        int i12 = typedArrayObtainAttributes2.hasValue(5) ? 5 : 0;
                        int resourceId2 = typedArrayObtainAttributes2.getResourceId(i12, 0);
                        String string6 = typedArrayObtainAttributes2.getString(i12);
                        typedArrayObtainAttributes2.recycle();
                        while (xmlResourceParser.next() != 3) {
                            n(xmlResourceParser);
                        }
                        arrayList.add(new g(string6, string5, i6, i11, resourceId2, z7));
                    } else {
                        n(xmlResourceParser);
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                return new f((g[]) arrayList.toArray(new g[0]));
            }
        } else {
            n(xmlResourceParser);
        }
        return null;
    }

    public static List l(Resources resources, int i6) throws Resources.NotFoundException {
        if (i6 == 0) {
            return Collections.emptyList();
        }
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i6);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (d.a(typedArrayObtainTypedArray, 0) == 1) {
                for (int i10 = 0; i10 < typedArrayObtainTypedArray.length(); i10++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i10, 0);
                    if (resourceId != 0) {
                        String[] stringArray = resources.getStringArray(resourceId);
                        ArrayList arrayList2 = new ArrayList();
                        for (String str : stringArray) {
                            arrayList2.add(Base64.decode(str, 0));
                        }
                        arrayList.add(arrayList2);
                    }
                }
            } else {
                String[] stringArray2 = resources.getStringArray(i6);
                ArrayList arrayList3 = new ArrayList();
                for (String str2 : stringArray2) {
                    arrayList3.add(Base64.decode(str2, 0));
                }
                arrayList.add(arrayList3);
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0035 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m(android.content.res.Resources.Theme r6) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 29
            if (r0 < r1) goto La
            e0.m.a(r6)
            goto L49
        La:
            r1 = 23
            if (r0 < r1) goto L49
            java.lang.Object r0 = e0.b.f6378e
            monitor-enter(r0)
            boolean r1 = e0.b.f6379g     // Catch: java.lang.Throwable -> L25
            r2 = 0
            if (r1 != 0) goto L31
            r1 = 1
            java.lang.Class<android.content.res.Resources$Theme> r3 = android.content.res.Resources.Theme.class
            java.lang.String r4 = "rebase"
            java.lang.reflect.Method r3 = r3.getDeclaredMethod(r4, r2)     // Catch: java.lang.Throwable -> L25 java.lang.NoSuchMethodException -> L27
            e0.b.f = r3     // Catch: java.lang.Throwable -> L25 java.lang.NoSuchMethodException -> L27
            r3.setAccessible(r1)     // Catch: java.lang.Throwable -> L25 java.lang.NoSuchMethodException -> L27
            goto L2f
        L25:
            r6 = move-exception
            goto L47
        L27:
            r3 = move-exception
            java.lang.String r4 = "ResourcesCompat"
            java.lang.String r5 = "Failed to retrieve rebase() method"
            android.util.Log.i(r4, r5, r3)     // Catch: java.lang.Throwable -> L25
        L2f:
            e0.b.f6379g = r1     // Catch: java.lang.Throwable -> L25
        L31:
            java.lang.reflect.Method r1 = e0.b.f     // Catch: java.lang.Throwable -> L25
            if (r1 == 0) goto L45
            r1.invoke(r6, r2)     // Catch: java.lang.Throwable -> L25 java.lang.reflect.InvocationTargetException -> L39 java.lang.IllegalAccessException -> L3b
            goto L45
        L39:
            r6 = move-exception
            goto L3c
        L3b:
            r6 = move-exception
        L3c:
            java.lang.String r1 = "ResourcesCompat"
            java.lang.String r3 = "Failed to invoke rebase() method via reflection"
            android.util.Log.i(r1, r3, r6)     // Catch: java.lang.Throwable -> L25
            e0.b.f = r2     // Catch: java.lang.Throwable -> L25
        L45:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L25
            goto L49
        L47:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L25
            throw r6
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e0.b.m(android.content.res.Resources$Theme):void");
    }

    public static void n(XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        int i6 = 1;
        while (i6 > 0) {
            int next = xmlResourceParser.next();
            if (next == 2) {
                i6++;
            } else if (next == 3) {
                i6--;
            }
        }
    }

    public static float o() {
        return ((float) Math.pow((50.0f + 16.0d) / 116.0d, 3.0d)) * 100.0f;
    }

    public void a(int i6) {
        new Handler(Looper.getMainLooper()).post(new q1.c(i6, 2, this));
    }

    public abstract void i(int i6);

    public abstract void j(Typeface typeface);
}
