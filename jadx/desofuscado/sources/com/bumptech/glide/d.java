package com.bumptech.glide;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.TypedValue;
import android.view.View;
import android.widget.EdgeEffect;
import android.widget.LinearLayout;
import androidx.leanback.widget.e0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.p1;
import com.lzy.okgo.cache.CacheEntity;
import java.util.ArrayList;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class d {
    public static a9.i A(a9.g gVar, a9.i iVar) {
        j9.i.f(iVar, "context");
        return c.j(gVar, iVar);
    }

    public static final void D(RecyclerView recyclerView, int i6) {
        j9.i.f(recyclerView, a2.a.s("BA5bq87E\n", "OHozwr369mM=\n"));
        p1 p1VarFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(i6);
        if (p1VarFindViewHolderForAdapterPosition == null) {
            recyclerView.smoothScrollToPosition(i6);
            org.bitspark.android.utils.f fVar = new org.bitspark.android.utils.f(recyclerView, i6);
            recyclerView.clearOnScrollListeners();
            recyclerView.addOnScrollListener(fVar);
            return;
        }
        View view = p1VarFindViewHolderForAdapterPosition.itemView;
        if (view != null) {
            view.requestFocus();
        }
    }

    public static void G(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        }
        if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        }
        if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    public static final void H(a1.b bVar, ArrayList arrayList) {
        j9.i.f(bVar, a2.a.s("X6lt5nVLIA==\n", "Ps0MlgEuUjg=\n"));
        j9.i.f(arrayList, a2.a.s("vNstGA==\n", "0LJebFTJvb4=\n"));
        ArrayList arrayList2 = (ArrayList) bVar.d;
        int size = arrayList2.size();
        int size2 = arrayList.size();
        e0 e0Var = (e0) bVar.f47b;
        int i6 = 0;
        if (size > size2) {
            int size3 = arrayList.size();
            int iMin = Math.min(arrayList2.size(), arrayList2.size() - size3);
            if (iMin > 0) {
                for (int i10 = 0; i10 < iMin; i10++) {
                    arrayList2.remove(size3);
                }
                e0Var.d(size3, iMin);
            }
        }
        for (Object obj : arrayList) {
            int i11 = i6 + 1;
            if (i6 < 0) {
                x8.k.P();
                throw null;
            }
            if (i6 < arrayList2.size()) {
                arrayList2.set(i6, obj);
                e0Var.b(i6);
            } else {
                int size4 = arrayList2.size();
                arrayList2.add(size4, obj);
                e0Var.c(size4, 1);
            }
            i6 = i11;
        }
    }

    public static boolean a(f0.f[] fVarArr, f0.f[] fVarArr2) {
        if (fVarArr == null || fVarArr2 == null || fVarArr.length != fVarArr2.length) {
            return false;
        }
        for (int i6 = 0; i6 < fVarArr.length; i6++) {
            f0.f fVar = fVarArr[i6];
            char c5 = fVar.f6758a;
            f0.f fVar2 = fVarArr2[i6];
            if (c5 != fVar2.f6758a || fVar.f6759b.length != fVar2.f6759b.length) {
                return false;
            }
        }
        return true;
    }

    public static float[] e(float[] fArr, int i6) {
        if (i6 < 0) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int iMin = Math.min(i6, length);
        float[] fArr2 = new float[i6];
        System.arraycopy(fArr, 0, fArr2, 0, iMin);
        return fArr2;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0098 A[Catch: NumberFormatException -> 0x00ac, LOOP:3: B:25:0x006a->B:44:0x0098, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00ac, blocks: (B:22:0x0056, B:25:0x006a, B:27:0x0070, B:31:0x007c, B:44:0x0098, B:46:0x009e, B:52:0x00b3, B:53:0x00b6), top: B:68:0x0056 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x009e A[Catch: NumberFormatException -> 0x00ac, TryCatch #0 {NumberFormatException -> 0x00ac, blocks: (B:22:0x0056, B:25:0x006a, B:27:0x0070, B:31:0x007c, B:44:0x0098, B:46:0x009e, B:52:0x00b3, B:53:0x00b6), top: B:68:0x0056 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b3 A[Catch: NumberFormatException -> 0x00ac, TryCatch #0 {NumberFormatException -> 0x00ac, blocks: (B:22:0x0056, B:25:0x006a, B:27:0x0070, B:31:0x007c, B:44:0x0098, B:46:0x009e, B:52:0x00b3, B:53:0x00b6), top: B:68:0x0056 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00d9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0097 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static f0.f[] f(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.d.f(java.lang.String):f0.f[]");
    }

    public static Path g(String str) {
        Path path = new Path();
        try {
            f0.f.b(f(str), path);
            return path;
        } catch (RuntimeException e5) {
            throw new RuntimeException("Error in parsing ".concat(str), e5);
        }
    }

    public static f0.f[] h(f0.f[] fVarArr) {
        f0.f[] fVarArr2 = new f0.f[fVarArr.length];
        for (int i6 = 0; i6 < fVarArr.length; i6++) {
            fVarArr2[i6] = new f0.f(fVarArr[i6]);
        }
        return fVarArr2;
    }

    public static a9.g i(a9.g gVar, a9.h hVar) {
        j9.i.f(hVar, CacheEntity.KEY);
        if (j9.i.a(gVar.getKey(), hVar)) {
            return gVar;
        }
        return null;
    }

    public static ColorStateList j(Context context, a1.b bVar, int i6) {
        int resourceId;
        ColorStateList colorStateListK;
        TypedArray typedArray = (TypedArray) bVar.f48c;
        return (!typedArray.hasValue(i6) || (resourceId = typedArray.getResourceId(i6, 0)) == 0 || (colorStateListK = u7.d.k(context, resourceId)) == null) ? bVar.s(i6) : colorStateListK;
    }

    public static ColorStateList k(Context context, TypedArray typedArray, int i6) {
        int resourceId;
        ColorStateList colorStateListK;
        return (!typedArray.hasValue(i6) || (resourceId = typedArray.getResourceId(i6, 0)) == 0 || (colorStateListK = u7.d.k(context, resourceId)) == null) ? typedArray.getColorStateList(i6) : colorStateListK;
    }

    public static int l(Context context, TypedArray typedArray, int i6, int i10) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i6, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i6, i10);
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, i10);
        typedArrayObtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    public static float m(EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return androidx.core.widget.f.b(edgeEffect);
        }
        return 0.0f;
    }

    public static Drawable n(Context context, TypedArray typedArray, int i6) {
        int resourceId;
        Drawable drawableH;
        return (!typedArray.hasValue(i6) || (resourceId = typedArray.getResourceId(i6, 0)) == 0 || (drawableH = c.h(context, resourceId)) == null) ? typedArray.getDrawable(i6) : drawableH;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static final Class p(p9.b bVar) {
        j9.i.f(bVar, "<this>");
        Class clsA = ((j9.d) bVar).a();
        if (!clsA.isPrimitive()) {
            return clsA;
        }
        String name = clsA.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (!name.equals("double")) {
                }
                break;
            case 104431:
                if (!name.equals("int")) {
                }
                break;
            case 3039496:
                if (!name.equals("byte")) {
                }
                break;
            case 3052374:
                if (!name.equals("char")) {
                }
                break;
            case 3327612:
                if (!name.equals("long")) {
                }
                break;
            case 3625364:
                if (!name.equals("void")) {
                }
                break;
            case 64711720:
                if (!name.equals("boolean")) {
                }
                break;
            case 97526364:
                if (!name.equals("float")) {
                }
                break;
            case 109413500:
                if (!name.equals("short")) {
                }
                break;
        }
        return clsA;
    }

    public static final Locale q(Configuration configuration) {
        Locale locale;
        String str;
        j9.i.g(configuration, "$this$getLocaleCompat");
        if (Build.VERSION.SDK_INT >= 24) {
            locale = configuration.getLocales().get(0);
            str = "locales.get(0)";
        } else {
            locale = configuration.locale;
            str = "locale";
        }
        j9.i.b(locale, str);
        return locale;
    }

    public static a9.d r(a9.d dVar) {
        a9.d<Object> dVarIntercepted;
        j9.i.f(dVar, "<this>");
        c9.c cVar = dVar instanceof c9.c ? (c9.c) dVar : null;
        return (cVar == null || (dVarIntercepted = cVar.intercepted()) == null) ? dVar : dVarIntercepted;
    }

    public static boolean s(LinearLayout linearLayout, View view) {
        while (view != null) {
            if (view == linearLayout) {
                return true;
            }
            Object parent = view.getParent();
            if (!(parent instanceof View)) {
                return false;
            }
            view = (View) parent;
        }
        return false;
    }

    public static boolean u(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Integer v(java.lang.String r5) {
        /*
            if (r5 != 0) goto L3
            goto L40
        L3:
            int r0 = r5.hashCode()
            r1 = 0
            r2 = 3
            r3 = 2
            r4 = 1
            switch(r0) {
                case -1118317585: goto L2d;
                case -962896020: goto L23;
                case 1645938909: goto L19;
                case 1645952171: goto Lf;
                default: goto Le;
            }
        Le:
            goto L37
        Lf:
            java.lang.String r0 = "REPEAT_OFF"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L37
            r5 = 0
            goto L38
        L19:
            java.lang.String r0 = "REPEAT_ALL"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L37
            r5 = 1
            goto L38
        L23:
            java.lang.String r0 = "REPEAT_SINGLE"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L37
            r5 = 2
            goto L38
        L2d:
            java.lang.String r0 = "REPEAT_ALL_AND_SHUFFLE"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L37
            r5 = 3
            goto L38
        L37:
            r5 = -1
        L38:
            if (r5 == 0) goto L51
            if (r5 == r4) goto L4c
            if (r5 == r3) goto L47
            if (r5 == r2) goto L42
        L40:
            r5 = 0
            return r5
        L42:
            java.lang.Integer r5 = java.lang.Integer.valueOf(r2)
            return r5
        L47:
            java.lang.Integer r5 = java.lang.Integer.valueOf(r3)
            return r5
        L4c:
            java.lang.Integer r5 = java.lang.Integer.valueOf(r4)
            return r5
        L51:
            java.lang.Integer r5 = java.lang.Integer.valueOf(r1)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.d.v(java.lang.String):java.lang.Integer");
    }

    public static String w(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i6 = 0; i6 < str.length(); i6++) {
            sb.append(str.charAt(i6));
            if (str2.length() > i6) {
                sb.append(str2.charAt(i6));
            }
        }
        return sb.toString();
    }

    public static a9.i x(a9.g gVar, a9.h hVar) {
        j9.i.f(hVar, CacheEntity.KEY);
        return j9.i.a(gVar.getKey(), hVar) ? a9.j.f179a : gVar;
    }

    public static void y(Throwable th) {
        if (th == null) {
            th = r8.a.a("onError called with a null Throwable.");
        } else if (!(th instanceof k8.c) && !(th instanceof IllegalStateException) && !(th instanceof NullPointerException) && !(th instanceof IllegalArgumentException) && !(th instanceof k8.b)) {
            th = new k8.d("The exception could not be delivered to the consumer because it has already canceled/disposed the flow or the exception has nowhere to go to begin with. Further reading: https://github.com/ReactiveX/RxJava/wiki/What's-different-in-2.0#error-handling | " + th, th);
        }
        th.printStackTrace();
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
    }

    public static float z(EdgeEffect edgeEffect, float f, float f3) {
        if (Build.VERSION.SDK_INT >= 31) {
            return androidx.core.widget.f.c(edgeEffect, f, f3);
        }
        androidx.core.widget.e.a(edgeEffect, f, f3);
        return f;
    }

    public abstract void B(r.f fVar, r.f fVar2);

    public abstract void C(r.f fVar, Thread thread);

    public abstract void E(boolean z7);

    public abstract void F(boolean z7);

    public abstract TransformationMethod I(TransformationMethod transformationMethod);

    public abstract boolean b(r.g gVar, r.c cVar, r.c cVar2);

    public abstract boolean c(r.g gVar, Object obj, Object obj2);

    public abstract boolean d(r.g gVar, r.f fVar, r.f fVar2);

    public abstract InputFilter[] o(InputFilter[] inputFilterArr);

    public abstract boolean t();
}
