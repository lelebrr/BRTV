package n5;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.Process;
import android.os.StrictMode;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.n;
import androidx.core.widget.o;
import androidx.core.widget.p;
import androidx.core.widget.q;
import com.p2elite.brtv2.R;
import g0.i;
import j9.j;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import org.bitspark.android.SpkApplication;
import org.xmlpull.v1.XmlSerializer;
import u6.w;
import w8.k;
import w8.m;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static ClassLoader f8460a;

    /* renamed from: b, reason: collision with root package name */
    public static Thread f8461b;

    /* renamed from: c, reason: collision with root package name */
    public static Method f8462c;
    public static boolean d;

    /* renamed from: e, reason: collision with root package name */
    public static Method f8463e;
    public static boolean f;

    public static final boolean A(Bitmap.Config config) {
        return Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static w8.c B(i9.a aVar) {
        k kVar = k.f10831a;
        m mVar = new m();
        mVar.f10833a = (j) aVar;
        mVar.f10834b = kVar;
        return mVar;
    }

    public static Typeface C(Configuration configuration, Typeface typeface) {
        if (Build.VERSION.SDK_INT < 31 || configuration.fontWeightAdjustment == Integer.MAX_VALUE || configuration.fontWeightAdjustment == 0) {
            return null;
        }
        return Typeface.create(typeface, l5.a.g(configuration.fontWeightAdjustment + typeface.getWeight(), 1, 1000), typeface.isItalic());
    }

    public static MappedByteBuffer D(Context context, Uri uri) throws IOException {
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r", null);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                }
                return null;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                try {
                    FileChannel channel = fileInputStream.getChannel();
                    MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                    fileInputStream.close();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return map;
                } finally {
                }
            } finally {
            }
        } catch (IOException unused) {
            return null;
        }
    }

    public static void E(Context context, String str) throws IOException {
        if (str.equals("")) {
            context.deleteFile("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
            return;
        }
        try {
            FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file", 0);
            XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
            try {
                try {
                    xmlSerializerNewSerializer.setOutput(fileOutputStreamOpenFileOutput, null);
                    xmlSerializerNewSerializer.startDocument("UTF-8", Boolean.TRUE);
                    xmlSerializerNewSerializer.startTag(null, "locales");
                    xmlSerializerNewSerializer.attribute(null, "application_locales", str);
                    xmlSerializerNewSerializer.endTag(null, "locales");
                    xmlSerializerNewSerializer.endDocument();
                    Log.d("AppLocalesStorageHelper", "Storing App Locales : app-locales: " + str + " persisted successfully.");
                } catch (Exception e5) {
                    Log.w("AppLocalesStorageHelper", "Storing App Locales : Failed to persist app-locales: ".concat(str), e5);
                    if (fileOutputStreamOpenFileOutput != null) {
                    }
                }
                if (fileOutputStreamOpenFileOutput != null) {
                    try {
                        fileOutputStreamOpenFileOutput.close();
                    } catch (IOException unused) {
                    }
                }
            } catch (Throwable th) {
                if (fileOutputStreamOpenFileOutput != null) {
                    try {
                        fileOutputStreamOpenFileOutput.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException unused3) {
            Log.w("AppLocalesStorageHelper", "Storing App Locales : FileNotFoundException: Cannot open file androidx.appcompat.app.AppCompatDelegate.application_locales_record_file for writing ");
        }
    }

    public static boolean F(Parcel parcel, int i6) {
        a0(parcel, i6, 4);
        return parcel.readInt() != 0;
    }

    public static Boolean G(Parcel parcel, int i6) {
        int iN = N(parcel, i6);
        if (iN == 0) {
            return null;
        }
        Z(parcel, iN, 4);
        return Boolean.valueOf(parcel.readInt() != 0);
    }

    public static double H(Parcel parcel, int i6) {
        a0(parcel, i6, 8);
        return parcel.readDouble();
    }

    public static float I(Parcel parcel, int i6) {
        a0(parcel, i6, 4);
        return parcel.readFloat();
    }

    public static IBinder J(Parcel parcel, int i6) {
        int iN = N(parcel, i6);
        int iDataPosition = parcel.dataPosition();
        if (iN == 0) {
            return null;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(iDataPosition + iN);
        return strongBinder;
    }

    public static int K(Parcel parcel, int i6) {
        a0(parcel, i6, 4);
        return parcel.readInt();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003c, code lost:
    
        r2 = r4.getAttributeValue(null, "application_locales");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String L(android.content.Context r9) throws java.io.IOException {
        /*
            java.lang.String r0 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            java.lang.String r1 = "AppLocalesStorageHelper"
            java.lang.String r2 = ""
            java.io.FileInputStream r3 = r9.openFileInput(r0)     // Catch: java.io.FileNotFoundException -> L6d
            org.xmlpull.v1.XmlPullParser r4 = android.util.Xml.newPullParser()     // Catch: java.lang.Throwable -> L28 java.lang.Throwable -> L4b
            java.lang.String r5 = "UTF-8"
            r4.setInput(r3, r5)     // Catch: java.lang.Throwable -> L28 java.lang.Throwable -> L4b
            int r5 = r4.getDepth()     // Catch: java.lang.Throwable -> L28 java.lang.Throwable -> L4b
        L17:
            int r6 = r4.next()     // Catch: java.lang.Throwable -> L28 java.lang.Throwable -> L4b
            r7 = 1
            if (r6 == r7) goto L43
            r7 = 3
            if (r6 != r7) goto L2a
            int r8 = r4.getDepth()     // Catch: java.lang.Throwable -> L28 java.lang.Throwable -> L4b
            if (r8 <= r5) goto L43
            goto L2a
        L28:
            r9 = move-exception
            goto L67
        L2a:
            if (r6 == r7) goto L17
            r7 = 4
            if (r6 != r7) goto L30
            goto L17
        L30:
            java.lang.String r6 = r4.getName()     // Catch: java.lang.Throwable -> L28 java.lang.Throwable -> L4b
            java.lang.String r7 = "locales"
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L28 java.lang.Throwable -> L4b
            if (r6 == 0) goto L17
            java.lang.String r5 = "application_locales"
            r6 = 0
            java.lang.String r2 = r4.getAttributeValue(r6, r5)     // Catch: java.lang.Throwable -> L28 java.lang.Throwable -> L4b
        L43:
            if (r3 == 0) goto L53
        L45:
            r3.close()     // Catch: java.io.IOException -> L49
            goto L53
        L49:
            goto L53
        L4b:
            java.lang.String r4 = "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            android.util.Log.w(r1, r4)     // Catch: java.lang.Throwable -> L28
            if (r3 == 0) goto L53
            goto L45
        L53:
            boolean r3 = r2.isEmpty()
            if (r3 != 0) goto L63
            java.lang.String r9 = "Reading app Locales : Locales read from file: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file , appLocales: "
            java.lang.String r9 = r9.concat(r2)
            android.util.Log.d(r1, r9)
            goto L66
        L63:
            r9.deleteFile(r0)
        L66:
            return r2
        L67:
            if (r3 == 0) goto L6c
            r3.close()     // Catch: java.io.IOException -> L6c
        L6c:
            throw r9
        L6d:
            java.lang.String r9 = "Reading app Locales : Locales record file not found: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            android.util.Log.w(r1, r9)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: n5.d.L(android.content.Context):java.lang.String");
    }

    public static long M(Parcel parcel, int i6) {
        a0(parcel, i6, 8);
        return parcel.readLong();
    }

    public static int N(Parcel parcel, int i6) {
        return (i6 & (-65536)) != -65536 ? (char) (i6 >> 16) : parcel.readInt();
    }

    public static void O(TextView textView, int i6) {
        a2.a.o(i6);
        if (Build.VERSION.SDK_INT >= 28) {
            p.d(textView, i6);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i10 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i6 > Math.abs(i10)) {
            textView.setPadding(textView.getPaddingLeft(), i6 + i10, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static void P(TextView textView, int i6) {
        a2.a.o(i6);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i10 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i6 > Math.abs(i10)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i6 - i10);
        }
    }

    public static boolean Q(Drawable drawable, int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 23) {
            return g0.b.b(drawable, i6);
        }
        if (!d) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                f8462c = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e5) {
                Log.i("DrawableCompat", "Failed to retrieve setLayoutDirection(int) method", e5);
            }
            d = true;
        }
        Method method = f8462c;
        if (method != null) {
            try {
                method.invoke(drawable, Integer.valueOf(i6));
                return true;
            } catch (Exception e10) {
                Log.i("DrawableCompat", "Failed to invoke setLayoutDirection(int) via reflection", e10);
                f8462c = null;
            }
        }
        return false;
    }

    public static void R(TextView textView, int i6) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i6);
        } else {
            textView.setTextAppearance(textView.getContext(), i6);
        }
    }

    public static void S(Drawable drawable, int i6) {
        g0.a.g(drawable, i6);
    }

    public static void T(Parcel parcel, int i6) {
        parcel.setDataPosition(parcel.dataPosition() + N(parcel, i6));
    }

    public static ActionMode.Callback U(ActionMode.Callback callback) {
        return (!(callback instanceof q) || Build.VERSION.SDK_INT < 26) ? callback : ((q) callback).f1314a;
    }

    public static int V(Parcel parcel) {
        int i6 = parcel.readInt();
        int iN = N(parcel, i6);
        char c5 = (char) i6;
        int iDataPosition = parcel.dataPosition();
        if (c5 != 20293) {
            throw new androidx.fragment.app.q("Expected object header. Got 0x".concat(String.valueOf(Integer.toHexString(i6))), parcel);
        }
        int i10 = iN + iDataPosition;
        if (i10 < iDataPosition || i10 > parcel.dataSize()) {
            throw new androidx.fragment.app.q(a.e.m(iDataPosition, i10, "Size read is invalid start=", " end="), parcel);
        }
        return i10;
    }

    public static Drawable W(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 23 || (drawable instanceof g0.h)) {
            return drawable;
        }
        g0.j jVar = new g0.j();
        jVar.d = jVar.c();
        jVar.h(drawable);
        g0.j.a();
        return jVar;
    }

    public static ActionMode.Callback X(ActionMode.Callback callback, TextView textView) {
        int i6 = Build.VERSION.SDK_INT;
        return (i6 < 26 || i6 > 27 || (callback instanceof q) || callback == null) ? callback : new q(callback, textView);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00ab A[Catch: all -> 0x00a7, PHI: r1
  0x00ab: PHI (r1v4 java.lang.Thread) = (r1v3 java.lang.Thread), (r1v15 java.lang.Thread) binds: [B:7:0x000a, B:47:0x00a4] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000c, B:46:0x00a2, B:61:0x00d1, B:12:0x001f, B:52:0x00aa, B:53:0x00ab, B:64:0x00d5, B:65:0x00d6, B:54:0x00ac, B:60:0x00d0, B:59:0x00b6, B:13:0x0020, B:15:0x002d, B:25:0x0047, B:26:0x004e, B:28:0x0059, B:34:0x006e, B:35:0x0075, B:43:0x0086, B:44:0x00a0, B:18:0x003c), top: B:77:0x0003, inners: #2, #6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized java.lang.ClassLoader Y() {
        /*
            Method dump skipped, instructions count: 220
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: n5.d.Y():java.lang.ClassLoader");
    }

    public static void Z(Parcel parcel, int i6, int i10) {
        if (i6 == i10) {
            return;
        }
        throw new androidx.fragment.app.q(a.e.t(a.e.v("Expected size ", i10, " got ", i6, " (0x"), Integer.toHexString(i6), ")"), parcel);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        if (Build.VERSION.SDK_INT >= 23) {
            drawable.clearColorFilter();
            return;
        }
        drawable.clearColorFilter();
        if (drawable instanceof InsetDrawable) {
            a(((InsetDrawable) drawable).getDrawable());
            return;
        }
        if (drawable instanceof i) {
            a(((g0.j) ((i) drawable)).f);
            return;
        }
        if (!(drawable instanceof DrawableContainer) || (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) == null) {
            return;
        }
        int childCount = drawableContainerState.getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            Drawable child = drawableContainerState.getChild(i6);
            if (child != null) {
                a(child);
            }
        }
    }

    public static void a0(Parcel parcel, int i6, int i10) {
        int iN = N(parcel, i6);
        if (iN == i10) {
            return;
        }
        throw new androidx.fragment.app.q(a.e.t(a.e.v("Expected size ", i10, " got ", iN, " (0x"), Integer.toHexString(iN), ")"), parcel);
    }

    public static void b(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static boolean c(File file, Resources resources, int i6) throws Throwable {
        InputStream inputStreamOpenRawResource;
        try {
            inputStreamOpenRawResource = resources.openRawResource(i6);
        } catch (Throwable th) {
            th = th;
            inputStreamOpenRawResource = null;
        }
        try {
            boolean zD = d(file, inputStreamOpenRawResource);
            b(inputStreamOpenRawResource);
            return zD;
        } catch (Throwable th2) {
            th = th2;
            b(inputStreamOpenRawResource);
            throw th;
        }
    }

    public static boolean d(File file, InputStream inputStream) throws Throwable {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file, false);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i6 = inputStream.read(bArr);
                        if (i6 == -1) {
                            b(fileOutputStream2);
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                            return true;
                        }
                        fileOutputStream2.write(bArr, 0, i6);
                    }
                } catch (IOException e5) {
                    e = e5;
                    fileOutputStream = fileOutputStream2;
                    Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
                    b(fileOutputStream);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    return false;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    b(fileOutputStream);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e10) {
            e = e10;
        }
    }

    public static BigDecimal e(Parcel parcel, int i6) {
        int iN = N(parcel, i6);
        int iDataPosition = parcel.dataPosition();
        if (iN == 0) {
            return null;
        }
        byte[] bArrCreateByteArray = parcel.createByteArray();
        int i10 = parcel.readInt();
        parcel.setDataPosition(iDataPosition + iN);
        return new BigDecimal(new BigInteger(bArrCreateByteArray), i10);
    }

    public static Bundle f(Parcel parcel, int i6) {
        int iN = N(parcel, i6);
        int iDataPosition = parcel.dataPosition();
        if (iN == 0) {
            return null;
        }
        Bundle bundle = parcel.readBundle();
        parcel.setDataPosition(iDataPosition + iN);
        return bundle;
    }

    public static byte[] g(Parcel parcel, int i6) {
        int iN = N(parcel, i6);
        int iDataPosition = parcel.dataPosition();
        if (iN == 0) {
            return null;
        }
        byte[] bArrCreateByteArray = parcel.createByteArray();
        parcel.setDataPosition(iDataPosition + iN);
        return bArrCreateByteArray;
    }

    public static int[] h(Parcel parcel, int i6) {
        int iN = N(parcel, i6);
        int iDataPosition = parcel.dataPosition();
        if (iN == 0) {
            return null;
        }
        int[] iArrCreateIntArray = parcel.createIntArray();
        parcel.setDataPosition(iDataPosition + iN);
        return iArrCreateIntArray;
    }

    public static long[] i(Parcel parcel, int i6) {
        int iN = N(parcel, i6);
        int iDataPosition = parcel.dataPosition();
        if (iN == 0) {
            return null;
        }
        long[] jArrCreateLongArray = parcel.createLongArray();
        parcel.setDataPosition(iDataPosition + iN);
        return jArrCreateLongArray;
    }

    public static Parcelable j(Parcel parcel, int i6, Parcelable.Creator creator) {
        int iN = N(parcel, i6);
        int iDataPosition = parcel.dataPosition();
        if (iN == 0) {
            return null;
        }
        Parcelable parcelable = (Parcelable) creator.createFromParcel(parcel);
        parcel.setDataPosition(iDataPosition + iN);
        return parcelable;
    }

    public static String k(Parcel parcel, int i6) {
        int iN = N(parcel, i6);
        int iDataPosition = parcel.dataPosition();
        if (iN == 0) {
            return null;
        }
        String string = parcel.readString();
        parcel.setDataPosition(iDataPosition + iN);
        return string;
    }

    public static String[] l(Parcel parcel, int i6) {
        int iN = N(parcel, i6);
        int iDataPosition = parcel.dataPosition();
        if (iN == 0) {
            return null;
        }
        String[] strArrCreateStringArray = parcel.createStringArray();
        parcel.setDataPosition(iDataPosition + iN);
        return strArrCreateStringArray;
    }

    public static String[] m(int i6, int i10) {
        String[] strArr = new String[(i10 - i6) + 1];
        for (int i11 = i6; i11 <= i10; i11++) {
            strArr[i11 - i6] = String.format("%02d", Integer.valueOf(i11));
        }
        return strArr;
    }

    public static ArrayList n(Parcel parcel, int i6) {
        int iN = N(parcel, i6);
        int iDataPosition = parcel.dataPosition();
        if (iN == 0) {
            return null;
        }
        ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(iDataPosition + iN);
        return arrayListCreateStringArrayList;
    }

    public static Object[] o(Parcel parcel, int i6, Parcelable.Creator creator) {
        int iN = N(parcel, i6);
        int iDataPosition = parcel.dataPosition();
        if (iN == 0) {
            return null;
        }
        Object[] objArrCreateTypedArray = parcel.createTypedArray(creator);
        parcel.setDataPosition(iDataPosition + iN);
        return objArrCreateTypedArray;
    }

    public static ArrayList p(Parcel parcel, int i6, Parcelable.Creator creator) {
        int iN = N(parcel, i6);
        int iDataPosition = parcel.dataPosition();
        if (iN == 0) {
            return null;
        }
        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(iDataPosition + iN);
        return arrayListCreateTypedArrayList;
    }

    public static int q(Context context, int i6) {
        if (context == null) {
            context = SpkApplication.f8737c.getApplicationContext();
        }
        return context == null ? i6 : (int) TypedValue.applyDimension(1, i6, context.getResources().getDisplayMetrics());
    }

    public static void r(Parcel parcel, int i6) {
        if (parcel.dataPosition() != i6) {
            throw new androidx.fragment.app.q(a.e.n(i6, "Overread allowed size end="), parcel);
        }
    }

    public static final int s(Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (Exception unused) {
                int height = bitmap.getHeight() * bitmap.getWidth();
                Bitmap.Config config = bitmap.getConfig();
                return (config == Bitmap.Config.ALPHA_8 ? 1 : (config == Bitmap.Config.RGB_565 || config == Bitmap.Config.ARGB_4444) ? 2 : (Build.VERSION.SDK_INT < 26 || config != Bitmap.Config.RGBA_F16) ? 4 : 8) * height;
            }
        }
        throw new IllegalStateException(("Cannot obtain size for recycled bitmap: " + bitmap + " [" + bitmap.getWidth() + " x " + bitmap.getHeight() + "] + " + bitmap.getConfig()).toString());
    }

    public static Calendar t(Calendar calendar, Locale locale) {
        if (calendar == null) {
            return Calendar.getInstance(locale);
        }
        long timeInMillis = calendar.getTimeInMillis();
        Calendar calendar2 = Calendar.getInstance(locale);
        calendar2.setTimeInMillis(timeInMillis);
        return calendar2;
    }

    public static int v(Context context) throws Resources.NotFoundException {
        float fraction;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        boolean z7 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        TypedValue typedValue = new TypedValue();
        context.getResources().getValue(z7 ? R.dimen.mr_dialog_fixed_width_minor : R.dimen.mr_dialog_fixed_width_major, typedValue, true);
        int i6 = typedValue.type;
        if (i6 == 5) {
            fraction = typedValue.getDimension(displayMetrics);
        } else {
            if (i6 != 6) {
                return -2;
            }
            int i10 = displayMetrics.widthPixels;
            fraction = typedValue.getFraction(i10, i10);
        }
        return (int) fraction;
    }

    public static int w(Drawable drawable) throws NoSuchMethodException, SecurityException {
        if (Build.VERSION.SDK_INT >= 23) {
            return g0.b.a(drawable);
        }
        if (!f) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", null);
                f8463e = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e5) {
                Log.i("DrawableCompat", "Failed to retrieve getLayoutDirection() method", e5);
            }
            f = true;
        }
        Method method = f8463e;
        if (method == null) {
            return 0;
        }
        try {
            return ((Integer) method.invoke(drawable, null)).intValue();
        } catch (Exception e10) {
            Log.i("DrawableCompat", "Failed to invoke getLayoutDirection() via reflection", e10);
            f8463e = null;
            return 0;
        }
    }

    public static File x(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i6 = 0; i6 < 100; i6++) {
            File file = new File(cacheDir, str + i6);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    public static l0.g y(AppCompatTextView appCompatTextView) {
        int iA;
        int iD;
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 28) {
            return new l0.g(p.c(appCompatTextView));
        }
        TextPaint textPaint = new TextPaint(appCompatTextView.getPaint());
        if (i6 >= 23) {
            iA = 1;
            iD = 1;
        } else {
            iA = 0;
            iD = 0;
        }
        TextDirectionHeuristic textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
        if (i6 >= 23) {
            iA = n.a(appCompatTextView);
            iD = n.d(appCompatTextView);
        }
        if (appCompatTextView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        } else if (i6 < 28 || (appCompatTextView.getInputType() & 15) != 3) {
            boolean z7 = appCompatTextView.getLayoutDirection() == 1;
            switch (appCompatTextView.getTextDirection()) {
                case 2:
                    textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                    break;
                case 3:
                    textDirectionHeuristic = TextDirectionHeuristics.LTR;
                    break;
                case 4:
                    textDirectionHeuristic = TextDirectionHeuristics.RTL;
                    break;
                case 5:
                    textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                    break;
                case 6:
                    break;
                case 7:
                    textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                    break;
                default:
                    if (z7) {
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                        break;
                    }
                    break;
            }
        } else {
            byte directionality = Character.getDirectionality(p.b(o.a(appCompatTextView.getTextLocale()))[0].codePointAt(0));
            textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
        }
        return new l0.g(textPaint, textDirectionHeuristic, iA, iD);
    }

    public static boolean z(MotionEvent motionEvent, int i6) {
        return (motionEvent.getSource() & i6) == i6;
    }

    public abstract void u(w wVar, float f3, float f4);
}
