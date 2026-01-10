package l5;

import a.e;
import a4.h;
import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.PopupWindow;
import android.widget.SeekBar;
import androidx.core.widget.m;
import androidx.fragment.app.q;
import c2.c;
import c2.f;
import c2.l;
import com.p2elite.brtv2.R;
import j9.i;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.zip.ZipException;
import n0.r0;
import n0.s0;
import n0.x0;
import n2.g;
import org.bitspark.android.Spark;
import u7.d;
import x8.k;
import x8.r;
import z4.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static Context f7970a;

    /* renamed from: b, reason: collision with root package name */
    public static Boolean f7971b;

    /* renamed from: c, reason: collision with root package name */
    public static Method f7972c;
    public static boolean d;

    /* renamed from: e, reason: collision with root package name */
    public static Field f7973e;
    public static boolean f;

    /* renamed from: g, reason: collision with root package name */
    public static Boolean f7974g;

    /* renamed from: h, reason: collision with root package name */
    public static Boolean f7975h;

    /* renamed from: i, reason: collision with root package name */
    public static Boolean f7976i;

    /* renamed from: j, reason: collision with root package name */
    public static Boolean f7977j;

    /* renamed from: k, reason: collision with root package name */
    public static Boolean f7978k;

    /* renamed from: l, reason: collision with root package name */
    public static Boolean f7979l;

    /* renamed from: m, reason: collision with root package name */
    public static Boolean f7980m;

    /* renamed from: n, reason: collision with root package name */
    public static boolean f7981n;

    /* renamed from: o, reason: collision with root package name */
    public static Method f7982o;

    /* renamed from: p, reason: collision with root package name */
    public static boolean f7983p;

    /* renamed from: q, reason: collision with root package name */
    public static Field f7984q;

    public a() {
        new ConcurrentHashMap();
    }

    public static boolean A(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f7980m == null) {
            f7980m = Boolean.valueOf(packageManager.hasSystemFeature("com.google.android.tv") || packageManager.hasSystemFeature("android.hardware.type.television") || packageManager.hasSystemFeature("android.software.leanback"));
        }
        return f7980m.booleanValue();
    }

    public static void M(PopupWindow popupWindow, boolean z7) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        if (Build.VERSION.SDK_INT >= 23) {
            m.c(popupWindow, z7);
            return;
        }
        if (!f) {
            try {
                Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                f7973e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e5) {
                Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e5);
            }
            f = true;
        }
        Field field = f7973e;
        if (field != null) {
            try {
                field.set(popupWindow, Boolean.valueOf(z7));
            } catch (IllegalAccessException e10) {
                Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e10);
            }
        }
    }

    public static void Q(PopupWindow popupWindow, int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 23) {
            m.d(popupWindow, i6);
            return;
        }
        if (!d) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f7972c = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception unused) {
            }
            d = true;
        }
        Method method = f7972c;
        if (method != null) {
            try {
                method.invoke(popupWindow, Integer.valueOf(i6));
            } catch (Exception unused2) {
            }
        }
    }

    public static void a(Throwable th, Throwable th2) {
        i.f(th, "<this>");
        i.f(th2, "exception");
        if (th != th2) {
            Integer num = e9.a.f6599a;
            if (num == null || num.intValue() >= 19) {
                th.addSuppressed(th2);
                return;
            }
            Method method = d9.a.f6336a;
            if (method != null) {
                method.invoke(th, th2);
            }
        }
    }

    public static void b(Spark spark, SeekBar seekBar) {
        int i6 = d.i(spark, R.color.seekbar_second);
        int i10 = d.i(spark, R.color.player_sub_option_text_color_selected);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        float fQ = n5.d.q(spark, 2);
        gradientDrawable.setCornerRadius(fQ);
        gradientDrawable.setColor(i6);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(0);
        gradientDrawable2.setCornerRadius(fQ);
        gradientDrawable2.setColor(i6);
        ClipDrawable clipDrawable = new ClipDrawable(gradientDrawable2, 8388611, 1);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        gradientDrawable3.setShape(0);
        gradientDrawable3.setCornerRadius(fQ);
        gradientDrawable3.setColor(i10);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, clipDrawable, new ClipDrawable(gradientDrawable3, 8388611, 1)});
        layerDrawable.setId(0, android.R.id.background);
        layerDrawable.setId(1, android.R.id.secondaryProgress);
        layerDrawable.setId(2, android.R.id.progress);
        seekBar.setProgressDrawable(layerDrawable);
    }

    public static final void e(View view) {
        i.f(view, "<this>");
        x0 x0Var = new x0(view, null);
        q9.d dVar = new q9.d();
        dVar.d = x0Var.create(dVar, dVar);
        while (dVar.hasNext()) {
            View view2 = (View) dVar.next();
            u0.a aVar = (u0.a) view2.getTag(R.id.pooling_container_listener_holder_tag);
            if (aVar == null) {
                aVar = new u0.a();
                view2.setTag(R.id.pooling_container_listener_holder_tag, aVar);
            }
            ArrayList arrayList = aVar.f10321a;
            int iO = k.O(arrayList);
            if (-1 < iO) {
                throw e.k(iO, arrayList);
            }
        }
    }

    public static int g(int i6, int i10, int i11) {
        return i6 < i10 ? i10 : i6 > i11 ? i11 : i6;
    }

    public static final double j(int i6, int i10, int i11, int i12, g gVar) {
        double d10 = i11 / i6;
        double d11 = i12 / i10;
        int iOrdinal = gVar.ordinal();
        if (iOrdinal == 0) {
            return Math.max(d10, d11);
        }
        if (iOrdinal == 1) {
            return Math.min(d10, d11);
        }
        throw new q(13);
    }

    public static final l k(Context context) {
        c2.g gVar = new c2.g(context);
        w8.i iVar = new w8.i(new c2.e(gVar, 0));
        w8.i iVar2 = new w8.i(new c2.e(gVar, 1));
        w8.i iVar3 = new w8.i(f.f3350a);
        r rVar = r.f11098a;
        return new l(gVar.f3351a, gVar.f3352b, iVar, iVar2, iVar3, new c(rVar, rVar, rVar, rVar, rVar), gVar.f3353c);
    }

    public static boolean p(View view, KeyEvent keyEvent) {
        ArrayList arrayList;
        int size;
        int iIndexOfKey;
        WeakHashMap weakHashMap = s0.f8353a;
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList2 = r0.d;
        r0 r0Var = (r0) view.getTag(R.id.tag_unhandled_key_event_manager);
        WeakReference weakReference = null;
        if (r0Var == null) {
            r0Var = new r0();
            r0Var.f8348a = null;
            r0Var.f8349b = null;
            r0Var.f8350c = null;
            view.setTag(R.id.tag_unhandled_key_event_manager, r0Var);
        }
        WeakReference weakReference2 = r0Var.f8350c;
        if (weakReference2 != null && weakReference2.get() == keyEvent) {
            return false;
        }
        r0Var.f8350c = new WeakReference(keyEvent);
        if (r0Var.f8349b == null) {
            r0Var.f8349b = new SparseArray();
        }
        SparseArray sparseArray = r0Var.f8349b;
        if (keyEvent.getAction() == 1 && (iIndexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
            weakReference = (WeakReference) sparseArray.valueAt(iIndexOfKey);
            sparseArray.removeAt(iIndexOfKey);
        }
        if (weakReference == null) {
            weakReference = (WeakReference) sparseArray.get(keyEvent.getKeyCode());
        }
        if (weakReference == null) {
            return false;
        }
        View view2 = (View) weakReference.get();
        if (view2 == null || !view2.isAttachedToWindow() || (arrayList = (ArrayList) view2.getTag(R.id.tag_unhandled_key_listeners)) == null || (size = arrayList.size() - 1) < 0) {
            return true;
        }
        throw e.k(size, arrayList);
    }

    public static boolean q(n0.l lVar, View view, Window.Callback callback, KeyEvent keyEvent) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException, InvocationTargetException {
        DialogInterface.OnKeyListener onKeyListener;
        boolean zBooleanValue = false;
        if (lVar == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return lVar.b(keyEvent);
        }
        if (!(callback instanceof Activity)) {
            if (!(callback instanceof Dialog)) {
                return (view != null && s0.c(view, keyEvent)) || lVar.b(keyEvent);
            }
            Dialog dialog = (Dialog) callback;
            if (!f7983p) {
                try {
                    Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                    f7984q = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException unused) {
                }
                f7983p = true;
            }
            Field field = f7984q;
            if (field != null) {
                try {
                    onKeyListener = (DialogInterface.OnKeyListener) field.get(dialog);
                } catch (IllegalAccessException unused2) {
                }
            } else {
                onKeyListener = null;
            }
            if (onKeyListener != null && onKeyListener.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
                return true;
            }
            Window window = dialog.getWindow();
            if (window.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
            View decorView = window.getDecorView();
            if (s0.c(decorView, keyEvent)) {
                return true;
            }
            return keyEvent.dispatch(dialog, decorView != null ? decorView.getKeyDispatcherState() : null, dialog);
        }
        Activity activity = (Activity) callback;
        activity.onUserInteraction();
        Window window2 = activity.getWindow();
        if (window2.hasFeature(8)) {
            ActionBar actionBar = activity.getActionBar();
            if (keyEvent.getKeyCode() == 82 && actionBar != null) {
                if (!f7981n) {
                    try {
                        f7982o = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
                    } catch (NoSuchMethodException unused3) {
                    }
                    f7981n = true;
                }
                Method method = f7982o;
                if (method != null) {
                    try {
                        Object objInvoke = method.invoke(actionBar, keyEvent);
                        if (objInvoke != null) {
                            zBooleanValue = ((Boolean) objInvoke).booleanValue();
                        }
                    } catch (IllegalAccessException | InvocationTargetException unused4) {
                    }
                }
                if (zBooleanValue) {
                    return true;
                }
            }
        }
        if (window2.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView2 = window2.getDecorView();
        if (s0.c(decorView2, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(activity, decorView2 != null ? decorView2.getKeyDispatcherState() : null, activity);
    }

    public static r1.e t(RandomAccessFile randomAccessFile) throws IOException {
        long length = randomAccessFile.length();
        long j10 = length - 22;
        if (j10 < 0) {
            throw new ZipException("File too short to be a zip file: " + randomAccessFile.length());
        }
        long j11 = length - 65558;
        long j12 = j11 >= 0 ? j11 : 0L;
        int iReverseBytes = Integer.reverseBytes(101010256);
        do {
            randomAccessFile.seek(j10);
            if (randomAccessFile.readInt() == iReverseBytes) {
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                r1.e eVar = new r1.e();
                eVar.f9459b = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                eVar.f9458a = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                return eVar;
            }
            j10--;
        } while (j10 >= j12);
        throw new ZipException("End Of Central Directory signature not found");
    }

    public static boolean x(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f7979l == null) {
            f7979l = Boolean.valueOf(Build.VERSION.SDK_INT >= 26 && packageManager.hasSystemFeature("android.hardware.type.automotive"));
        }
        return f7979l.booleanValue();
    }

    public static boolean y(Resources resources) {
        boolean z7 = false;
        if (resources == null) {
            return false;
        }
        if (f7977j == null) {
            Configuration configuration = resources.getConfiguration();
            if ((configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600) {
                z7 = true;
            }
            f7977j = Boolean.valueOf(z7);
        }
        return f7977j.booleanValue();
    }

    public static boolean z(Context context) {
        Resources resources = context.getResources();
        if (resources == null) {
            return false;
        }
        if (f7975h == null) {
            f7975h = Boolean.valueOf((resources.getConfiguration().screenLayout & 15) > 3 || y(resources));
        }
        return f7975h.booleanValue();
    }

    public abstract void B();

    public abstract void D(int i6);

    public abstract void E(Typeface typeface, boolean z7);

    public abstract boolean F(int i6, KeyEvent keyEvent);

    public boolean G(KeyEvent keyEvent) {
        return false;
    }

    public boolean H() {
        return false;
    }

    public abstract void J(boolean z7);

    public abstract void K(boolean z7);

    public abstract void L();

    public abstract void N(boolean z7);

    public abstract void O(String str);

    public abstract void P(String str);

    public abstract void R(CharSequence charSequence);

    public abstract void S();

    public j.a T(a7.f fVar) {
        return null;
    }

    public abstract void U();

    public y4.c c(Context context, Looper looper, h hVar, Object obj, y4.h hVar2, y4.i iVar) {
        return d(context, looper, hVar, obj, (n) hVar2, (n) iVar);
    }

    public y4.c d(Context context, Looper looper, h hVar, Object obj, n nVar, n nVar2) {
        throw new UnsupportedOperationException("buildClient must be implemented");
    }

    public boolean f() {
        return false;
    }

    public boolean h() {
        return false;
    }

    public abstract boolean i();

    public abstract Typeface l(Context context, e0.f fVar, Resources resources, int i6);

    public abstract Typeface m(Context context, k0.g[] gVarArr, int i6);

    public Typeface n(Context context, InputStream inputStream) {
        File fileX = n5.d.x(context);
        if (fileX == null) {
            return null;
        }
        try {
            if (n5.d.d(fileX, inputStream)) {
                return Typeface.createFromFile(fileX.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileX.delete();
        }
    }

    public Typeface o(Context context, Resources resources, int i6, String str, int i10) {
        File fileX = n5.d.x(context);
        if (fileX == null) {
            return null;
        }
        try {
            if (n5.d.c(fileX, resources, i6)) {
                return Typeface.createFromFile(fileX.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileX.delete();
        }
    }

    public abstract void r(boolean z7);

    public k0.g s(int i6, k0.g[] gVarArr) {
        new x4.e(12);
        int i10 = (i6 & 1) == 0 ? 400 : 700;
        boolean z7 = (i6 & 2) != 0;
        k0.g gVar = null;
        int i11 = Integer.MAX_VALUE;
        for (k0.g gVar2 : gVarArr) {
            int iAbs = (Math.abs(gVar2.f7693c - i10) * 2) + (gVar2.d == z7 ? 0 : 1);
            if (gVar == null || i11 > iAbs) {
                gVar = gVar2;
                i11 = iAbs;
            }
        }
        return gVar;
    }

    public abstract int u();

    public abstract Context v();

    public boolean w() {
        return false;
    }

    public void C() {
    }

    public void I() {
    }
}
