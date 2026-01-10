package f0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class h extends l5.a {

    /* renamed from: r, reason: collision with root package name */
    public static Class f6762r;

    /* renamed from: s, reason: collision with root package name */
    public static Constructor f6763s;

    /* renamed from: t, reason: collision with root package name */
    public static Method f6764t;

    /* renamed from: u, reason: collision with root package name */
    public static Method f6765u;

    /* renamed from: v, reason: collision with root package name */
    public static boolean f6766v;

    public static boolean V(Object obj, String str, int i6, boolean z7) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        W();
        try {
            return ((Boolean) f6764t.invoke(obj, str, Integer.valueOf(i6), Boolean.valueOf(z7))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e5) {
            throw new RuntimeException(e5);
        }
    }

    public static void W() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        Method method;
        Class<?> cls;
        Method method2;
        if (f6766v) {
            return;
        }
        f6766v = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e5) {
            Log.e("TypefaceCompatApi21Impl", e5.getClass().getName(), e5);
            method = null;
            cls = null;
            method2 = null;
        }
        f6763s = constructor;
        f6762r = cls;
        f6764t = method2;
        f6765u = method;
    }

    @Override // l5.a
    public Typeface l(Context context, e0.f fVar, Resources resources, int i6) throws IllegalAccessException, NoSuchMethodException, InstantiationException, ClassNotFoundException, SecurityException, ArrayIndexOutOfBoundsException, IllegalArgumentException, InvocationTargetException, NegativeArraySizeException {
        W();
        try {
            Object objNewInstance = f6763s.newInstance(null);
            for (e0.g gVar : fVar.f6381a) {
                File fileX = n5.d.x(context);
                if (fileX == null) {
                    return null;
                }
                try {
                    if (!n5.d.c(fileX, resources, gVar.f)) {
                        return null;
                    }
                    if (!V(objNewInstance, fileX.getPath(), gVar.f6383b, gVar.f6384c)) {
                        return null;
                    }
                    fileX.delete();
                } catch (RuntimeException unused) {
                    return null;
                } finally {
                    fileX.delete();
                }
            }
            W();
            try {
                Object objNewInstance2 = Array.newInstance((Class<?>) f6762r, 1);
                Array.set(objNewInstance2, 0, objNewInstance);
                return (Typeface) f6765u.invoke(null, objNewInstance2);
            } catch (IllegalAccessException | InvocationTargetException e5) {
                throw new RuntimeException(e5);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // l5.a
    public Typeface m(Context context, k0.g[] gVarArr, int i6) throws IOException {
        String str;
        if (gVarArr.length < 1) {
            return null;
        }
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(s(i6, gVarArr).f7691a, "r", null);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                }
                return null;
            }
            try {
                try {
                    str = Os.readlink("/proc/self/fd/" + parcelFileDescriptorOpenFileDescriptor.getFd());
                } finally {
                }
            } catch (ErrnoException unused) {
            }
            File file = OsConstants.S_ISREG(Os.stat(str).st_mode) ? new File(str) : null;
            if (file != null && file.canRead()) {
                Typeface typefaceCreateFromFile = Typeface.createFromFile(file);
                parcelFileDescriptorOpenFileDescriptor.close();
                return typefaceCreateFromFile;
            }
            FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
            try {
                Typeface typefaceN = n(context, fileInputStream);
                fileInputStream.close();
                parcelFileDescriptorOpenFileDescriptor.close();
                return typefaceN;
            } finally {
            }
        } catch (IOException unused2) {
            return null;
        }
    }
}
