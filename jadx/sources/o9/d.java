package o9;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.LongSparseArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ProgressBar;
import androidx.appcompat.app.p0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.p1;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import e0.n;
import ea.q;
import fa.i0;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import n0.b1;
import n0.g0;
import n0.s0;
import org.bitspark.android.utils.m;
import u6.k;
import x8.j;
import x8.r;
import x8.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class d implements b1 {

    /* renamed from: a, reason: collision with root package name */
    public static Field f8640a = null;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f8641b = false;

    /* renamed from: c, reason: collision with root package name */
    public static Class f8642c = null;
    public static boolean d = false;

    /* renamed from: e, reason: collision with root package name */
    public static Field f8643e = null;
    public static boolean f = false;

    /* renamed from: g, reason: collision with root package name */
    public static Field f8644g = null;

    /* renamed from: h, reason: collision with root package name */
    public static boolean f8645h = false;

    /* renamed from: i, reason: collision with root package name */
    public static volatile boolean f8646i = true;

    public static void A(RecyclerView recyclerView, i0 i0Var, int i6) {
        recyclerView.scrollToPosition(i6);
        p1 p1VarFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(i6);
        String strS = a2.a.s("YkttWHSEYt1RUA==\n", "NCIILzzhDq0=\n");
        String str = a2.a.s("z/vAbsgOFz3J+9whjV0=\n", "vZ6xG619Y3Q=\n") + i6 + a2.a.s("rlq1ecTlKg==\n", "xynmEauSROs=\n") + p1VarFindViewHolderForAdapterPosition;
        boolean z7 = m.f8784b;
        Log.i(strS, str);
        if (p1VarFindViewHolderForAdapterPosition != null) {
            y(p1VarFindViewHolderForAdapterPosition.itemView);
        } else {
            i0Var.f6873a = i6;
        }
    }

    public static void B(ViewGroup viewGroup, float f3) {
        Drawable background = viewGroup.getBackground();
        if (background instanceof u6.h) {
            ((u6.h) background).m(f3);
        }
    }

    public static void C(Context context, ProgressBar progressBar) {
        if (progressBar.isIndeterminate()) {
            progressBar.getIndeterminateDrawable().setColorFilter(u7.d.i(context, t(context) ? R.color.mr_cast_progressbar_progress_and_thumb_light : R.color.mr_cast_progressbar_progress_and_thumb_dark), PorterDuff.Mode.SRC_IN);
        }
    }

    public static void D(View view, u6.h hVar) {
        j6.a aVar = hVar.f10367a.f10351b;
        if (aVar == null || !aVar.f7437a) {
            return;
        }
        float fI = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            WeakHashMap weakHashMap = s0.f8353a;
            fI += g0.i((View) parent);
        }
        u6.g gVar = hVar.f10367a;
        if (gVar.f10359l != fI) {
            gVar.f10359l = fI;
            hVar.v();
        }
    }

    public static void E(ViewGroup viewGroup) {
        Drawable background = viewGroup.getBackground();
        if (background instanceof u6.h) {
            D(viewGroup, (u6.h) background);
        }
    }

    public static void H(Class cls, ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException(a.e.q(cls, "Unable to instantiate GlideModule implementation for "), reflectiveOperationException);
    }

    public static final void I(Object obj) {
        if (obj instanceof w8.g) {
            throw ((w8.g) obj).f10827a;
        }
    }

    public static final List J(List list) {
        int size = list.size();
        return size != 0 ? size != 1 ? Collections.unmodifiableList(new ArrayList(list)) : Collections.singletonList(j.U(list)) : r.f11098a;
    }

    public static final Map K(Map map) {
        int size = map.size();
        if (size == 0) {
            return s.f11099a;
        }
        if (size != 1) {
            return Collections.unmodifiableMap(new LinkedHashMap(map));
        }
        Map.Entry entry = (Map.Entry) j.T(map.entrySet());
        return Collections.singletonMap(entry.getKey(), entry.getValue());
    }

    public static void L(Parcel parcel, int i6, Boolean bool) {
        if (bool == null) {
            return;
        }
        X(parcel, i6, 4);
        parcel.writeInt(bool.booleanValue() ? 1 : 0);
    }

    public static void M(Parcel parcel, int i6, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        int iV = V(parcel, i6);
        parcel.writeBundle(bundle);
        W(parcel, iV);
    }

    public static void N(Parcel parcel, int i6, IBinder iBinder) {
        if (iBinder == null) {
            return;
        }
        int iV = V(parcel, i6);
        parcel.writeStrongBinder(iBinder);
        W(parcel, iV);
    }

    public static void O(Parcel parcel, int i6, int[] iArr) {
        if (iArr == null) {
            return;
        }
        int iV = V(parcel, i6);
        parcel.writeIntArray(iArr);
        W(parcel, iV);
    }

    public static void P(Parcel parcel, int i6, long[] jArr) {
        if (jArr == null) {
            return;
        }
        int iV = V(parcel, i6);
        parcel.writeLongArray(jArr);
        W(parcel, iV);
    }

    public static void Q(Parcel parcel, int i6, Parcelable parcelable, int i10) {
        if (parcelable == null) {
            return;
        }
        int iV = V(parcel, i6);
        parcelable.writeToParcel(parcel, i10);
        W(parcel, iV);
    }

    public static void R(Parcel parcel, int i6, String str) {
        if (str == null) {
            return;
        }
        int iV = V(parcel, i6);
        parcel.writeString(str);
        W(parcel, iV);
    }

    public static void S(Parcel parcel, int i6, List list) {
        if (list == null) {
            return;
        }
        int iV = V(parcel, i6);
        parcel.writeStringList(list);
        W(parcel, iV);
    }

    public static void T(Parcel parcel, int i6, Parcelable[] parcelableArr, int i10) {
        if (parcelableArr == null) {
            return;
        }
        int iV = V(parcel, i6);
        parcel.writeInt(parcelableArr.length);
        for (Parcelable parcelable : parcelableArr) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                int iDataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int iDataPosition2 = parcel.dataPosition();
                parcelable.writeToParcel(parcel, i10);
                int iDataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(iDataPosition);
                parcel.writeInt(iDataPosition3 - iDataPosition2);
                parcel.setDataPosition(iDataPosition3);
            }
        }
        W(parcel, iV);
    }

    public static void U(Parcel parcel, int i6, List list) {
        if (list == null) {
            return;
        }
        int iV = V(parcel, i6);
        int size = list.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            Parcelable parcelable = (Parcelable) list.get(i10);
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                int iDataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int iDataPosition2 = parcel.dataPosition();
                parcelable.writeToParcel(parcel, 0);
                int iDataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(iDataPosition);
                parcel.writeInt(iDataPosition3 - iDataPosition2);
                parcel.setDataPosition(iDataPosition3);
            }
        }
        W(parcel, iV);
    }

    public static int V(Parcel parcel, int i6) {
        parcel.writeInt(i6 | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static void W(Parcel parcel, int i6) {
        int iDataPosition = parcel.dataPosition();
        parcel.setDataPosition(i6 - 4);
        parcel.writeInt(iDataPosition - i6);
        parcel.setDataPosition(iDataPosition);
    }

    public static void X(Parcel parcel, int i6, int i10) {
        parcel.writeInt(i6 | (i10 << 16));
    }

    public static void d(int i6) {
        if (2 > i6 || i6 >= 37) {
            StringBuilder sbU = a.e.u(i6, "radix ", " was not in valid range ");
            sbU.append(new h(2, 36, 1));
            throw new IllegalArgumentException(sbU.toString());
        }
    }

    public static n5.d e(int i6) {
        return i6 != 0 ? i6 != 1 ? new k() : new u6.d() : new k();
    }

    public static final w8.g f(Throwable th) {
        j9.i.f(th, "exception");
        return new w8.g(th);
    }

    public static ContextThemeWrapper g(Context context, boolean z7) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, s(context, !z7 ? R.attr.dialogTheme : R.attr.alertDialogTheme));
        return s(contextThemeWrapper, R.attr.mediaRouteTheme) != 0 ? new ContextThemeWrapper(contextThemeWrapper, q(contextThemeWrapper)) : contextThemeWrapper;
    }

    public static int h(ContextThemeWrapper contextThemeWrapper) {
        int iS = s(contextThemeWrapper, R.attr.mediaRouteTheme);
        return iS == 0 ? q(contextThemeWrapper) : iS;
    }

    public static void i(String str, String str2, Object obj) {
        android.util.Log.d("TransportRuntime.".concat(str), String.format(str2, obj));
    }

    public static final boolean j(char c5, char c8, boolean z7) {
        if (c5 == c8) {
            return true;
        }
        if (!z7) {
            return false;
        }
        char upperCase = Character.toUpperCase(c5);
        char upperCase2 = Character.toUpperCase(c8);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static void k(Object obj) {
        LongSparseArray longSparseArray;
        if (!d) {
            try {
                f8642c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e5) {
                android.util.Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e5);
            }
            d = true;
        }
        Class cls = f8642c;
        if (cls == null) {
            return;
        }
        if (!f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f8643e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e10) {
                android.util.Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e10);
            }
            f = true;
        }
        Field field = f8643e;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e11) {
            android.util.Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e11);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            p0.a(longSparseArray);
        }
    }

    public static int l(Context context, int i6) {
        return f0.a.c(-1, r(context, i6, R.attr.colorPrimary)) >= 3.0d ? -1 : -570425344;
    }

    public static float m(Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(android.R.attr.disabledAlpha, typedValue, true)) {
            return typedValue.getFloat();
        }
        return 0.5f;
    }

    public static Drawable n(Context context, Context context2, int i6, Resources.Theme theme) {
        try {
            if (f8646i) {
                return u(context2, i6, theme);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e5) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e5;
            }
            return d0.a.b(context2, i6);
        } catch (NoClassDefFoundError unused2) {
            f8646i = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        Resources resources = context2.getResources();
        ThreadLocal threadLocal = n.f6394a;
        return e0.i.a(resources, i6, theme);
    }

    public static Drawable o(Context context, int i6) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{i6});
        Drawable drawableW = n5.d.W(com.bumptech.glide.c.h(context, typedArrayObtainStyledAttributes.getResourceId(0, 0)));
        if (t(context)) {
            g0.a.g(drawableW, u7.d.i(context, R.color.mr_dynamic_dialog_icon_light));
        }
        typedArrayObtainStyledAttributes.recycle();
        return drawableW;
    }

    public static final int p(int i6, int i10, int i11) {
        if (i11 > 0) {
            if (i6 >= i10) {
                return i10;
            }
            int i12 = i10 % i11;
            if (i12 < 0) {
                i12 += i11;
            }
            int i13 = i6 % i11;
            if (i13 < 0) {
                i13 += i11;
            }
            int i14 = (i12 - i13) % i11;
            if (i14 < 0) {
                i14 += i11;
            }
            return i10 - i14;
        }
        if (i11 >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        }
        if (i6 <= i10) {
            return i10;
        }
        int i15 = -i11;
        int i16 = i6 % i15;
        if (i16 < 0) {
            i16 += i15;
        }
        int i17 = i10 % i15;
        if (i17 < 0) {
            i17 += i15;
        }
        int i18 = (i16 - i17) % i15;
        if (i18 < 0) {
            i18 += i15;
        }
        return i10 + i18;
    }

    public static int q(Context context) {
        return t(context) ? l(context, 0) == -570425344 ? R.style.Theme_MediaRouter_Light : R.style.Theme_MediaRouter_Light_DarkControlPanel : l(context, 0) == -570425344 ? R.style.Theme_MediaRouter_LightControlPanel : R.style.Theme_MediaRouter;
    }

    public static int r(Context context, int i6, int i10) throws Resources.NotFoundException {
        if (i6 != 0) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i6, new int[]{i10});
            int color = typedArrayObtainStyledAttributes.getColor(0, 0);
            typedArrayObtainStyledAttributes.recycle();
            if (color != 0) {
                return color;
            }
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i10, typedValue, true);
        return typedValue.resourceId != 0 ? context.getResources().getColor(typedValue.resourceId) : typedValue.data;
    }

    public static int s(Context context, int i6) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i6, typedValue, true)) {
            return typedValue.resourceId;
        }
        return 0;
    }

    public static boolean t(Context context) {
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(R.attr.isLightTheme, typedValue, true) && typedValue.data != 0;
    }

    public static Drawable u(Context context, int i6, Resources.Theme theme) {
        if (theme != null) {
            j.d dVar = new j.d(context);
            dVar.f7370b = theme;
            dVar.a(theme.getResources().getConfiguration());
            context = dVar;
        }
        return com.bumptech.glide.c.h(context, i6);
    }

    public static l3.a w(String str) throws IllegalAccessException, InstantiationException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName(str);
            try {
                Object objNewInstance = cls.getDeclaredConstructor(null).newInstance(null);
                if (objNewInstance instanceof l3.a) {
                    return (l3.a) objNewInstance;
                }
                throw new RuntimeException(q.g(objNewInstance, "Expected instanceof GlideModule, but found: "));
            } catch (IllegalAccessException e5) {
                H(cls, e5);
                throw null;
            } catch (InstantiationException e10) {
                H(cls, e10);
                throw null;
            } catch (NoSuchMethodException e11) {
                H(cls, e11);
                throw null;
            } catch (InvocationTargetException e12) {
                H(cls, e12);
                throw null;
            }
        } catch (ClassNotFoundException e13) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e13);
        }
    }

    public static void x(AnimatorSet animatorSet, ArrayList arrayList) {
        int size = arrayList.size();
        long jMax = 0;
        for (int i6 = 0; i6 < size; i6++) {
            Animator animator = (Animator) arrayList.get(i6);
            jMax = Math.max(jMax, animator.getDuration() + animator.getStartDelay());
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 0);
        valueAnimatorOfInt.setDuration(jMax);
        arrayList.add(0, valueAnimatorOfInt);
        animatorSet.playTogether(arrayList);
    }

    public static boolean y(View view) {
        if (view == null) {
            return false;
        }
        boolean zRequestFocus = view.requestFocus();
        String strS = a2.a.s("WWBxIh1kZn1qew==\n", "DwkUVVUBCg0=\n");
        String str = a2.a.s("jX/towxQjCC+ZKimIUSVNahizrsnQJNq+w==\n", "2xaI1EQ14FA=\n") + zRequestFocus + a2.a.s("Uy8NA7pM4qBTLw0Dug==\n", "bhIwPodx350=\n") + view + a2.a.s("ENwOt4EgNJkQ3A==\n", "LeEzirwdCaQ=\n") + view.getId();
        boolean z7 = m.f8784b;
        Log.i(strS, str);
        return zRequestFocus;
    }

    public static void z(RecyclerView recyclerView, int i6) {
        if (i6 < recyclerView.getAdapter().getItemCount()) {
            recyclerView.scrollToPosition(i6);
            p1 p1VarFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(i6);
            String strS = a2.a.s("GcyE5M5hjdcq1w==\n", "T6Xhk4YE4ac=\n");
            String str = a2.a.s("/9lEZ1o41Vv52VgoH2s=\n", "jbw1Ej9LoRI=\n") + i6 + a2.a.s("33utR/5LPg==\n", "tgj+L5E8UAs=\n") + p1VarFindViewHolderForAdapterPosition;
            boolean z7 = m.f8784b;
            Log.i(strS, str);
            if (p1VarFindViewHolderForAdapterPosition != null) {
                y(p1VarFindViewHolderForAdapterPosition.itemView);
            }
        }
    }

    public void F(i8.c cVar) {
        try {
            G(cVar);
        } catch (NullPointerException e5) {
            throw e5;
        } catch (Throwable th) {
            com.bumptech.glide.d.G(th);
            com.bumptech.glide.d.y(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public abstract void G(i8.c cVar);

    public p8.e v(i8.f fVar) {
        int i6 = i8.a.f7358a;
        if (i6 > 0) {
            return new p8.e(this, fVar, i6);
        }
        throw new IllegalArgumentException(a.e.n(i6, "bufferSize > 0 required but it was "));
    }

    @Override // n0.b1
    public void b() {
    }

    @Override // n0.b1
    public void c() {
    }
}
