package f0;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class j extends h {
    public final Method A;
    public final Method B;
    public final Method C;

    /* renamed from: w, reason: collision with root package name */
    public final Class f6771w;

    /* renamed from: x, reason: collision with root package name */
    public final Constructor f6772x;

    /* renamed from: y, reason: collision with root package name */
    public final Method f6773y;

    /* renamed from: z, reason: collision with root package name */
    public final Method f6774z;

    public j() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        Method methodE0;
        Constructor<?> constructor;
        Method methodD0;
        Method method;
        Method method2;
        Method method3;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(null);
            methodD0 = d0(cls2);
            Class<?> cls3 = Integer.TYPE;
            method = cls2.getMethod("addFontFromBuffer", ByteBuffer.class, cls3, FontVariationAxis[].class, cls3, cls3);
            method2 = cls2.getMethod("freeze", null);
            method3 = cls2.getMethod("abortCreation", null);
            methodE0 = e0(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e5) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class ".concat(e5.getClass().getName()), e5);
            methodE0 = null;
            constructor = null;
            methodD0 = null;
            method = null;
            method2 = null;
            method3 = null;
        }
        this.f6771w = cls;
        this.f6772x = constructor;
        this.f6773y = methodD0;
        this.f6774z = method;
        this.A = method2;
        this.B = method3;
        this.C = methodE0;
    }

    public static Method d0(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    public final void X(Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            this.B.invoke(obj, null);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    public final boolean Y(Context context, Object obj, String str, int i6, int i10, int i11, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f6773y.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i6), Integer.valueOf(i10), Integer.valueOf(i11), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Typeface Z(Object obj) throws ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) this.f6771w, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.C.invoke(null, objNewInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean a0(Object obj) {
        try {
            return ((Boolean) this.A.invoke(obj, null)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean b0() {
        Method method = this.f6773y;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return method != null;
    }

    public final Object c0() {
        try {
            return this.f6772x.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    public Method e0(Class cls) throws NoSuchMethodException, SecurityException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance((Class<?>) cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    @Override // f0.h, l5.a
    public final Typeface l(Context context, e0.f fVar, Resources resources, int i6) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (!b0()) {
            return super.l(context, fVar, resources, i6);
        }
        Object objC0 = c0();
        if (objC0 == null) {
            return null;
        }
        for (e0.g gVar : fVar.f6381a) {
            if (!Y(context, objC0, gVar.f6382a, gVar.f6385e, gVar.f6383b, gVar.f6384c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(gVar.d))) {
                X(objC0);
                return null;
            }
        }
        if (a0(objC0)) {
            return Z(objC0);
        }
        return null;
    }

    @Override // f0.h, l5.a
    public final Typeface m(Context context, k0.g[] gVarArr, int i6) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        Typeface typefaceZ;
        boolean zBooleanValue;
        if (gVarArr.length < 1) {
            return null;
        }
        if (!b0()) {
            k0.g gVarS = s(i6, gVarArr);
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(gVarS.f7691a, "r", null);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface typefaceBuild = new Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(gVarS.f7693c).setItalic(gVarS.d).build();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceBuild;
                } finally {
                }
            } catch (IOException unused) {
                return null;
            }
        }
        HashMap map = new HashMap();
        for (k0.g gVar : gVarArr) {
            if (gVar.f7694e == 0) {
                Uri uri = gVar.f7691a;
                if (!map.containsKey(uri)) {
                    map.put(uri, n5.d.D(context, uri));
                }
            }
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(map);
        Object objC0 = c0();
        if (objC0 == null) {
            return null;
        }
        boolean z7 = false;
        for (k0.g gVar2 : gVarArr) {
            ByteBuffer byteBuffer = (ByteBuffer) mapUnmodifiableMap.get(gVar2.f7691a);
            if (byteBuffer != null) {
                try {
                    zBooleanValue = ((Boolean) this.f6774z.invoke(objC0, byteBuffer, Integer.valueOf(gVar2.f7692b), null, Integer.valueOf(gVar2.f7693c), Integer.valueOf(gVar2.d ? 1 : 0))).booleanValue();
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                    zBooleanValue = false;
                }
                if (!zBooleanValue) {
                    X(objC0);
                    return null;
                }
                z7 = true;
            }
        }
        if (!z7) {
            X(objC0);
            return null;
        }
        if (a0(objC0) && (typefaceZ = Z(objC0)) != null) {
            return Typeface.create(typefaceZ, i6);
        }
        return null;
    }

    @Override // l5.a
    public final Typeface o(Context context, Resources resources, int i6, String str, int i10) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (!b0()) {
            return super.o(context, resources, i6, str, i10);
        }
        Object objC0 = c0();
        if (objC0 == null) {
            return null;
        }
        if (!Y(context, objC0, str, 0, -1, -1, null)) {
            X(objC0);
            return null;
        }
        if (a0(objC0)) {
            return Z(objC0);
        }
        return null;
    }
}
