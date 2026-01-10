package androidx.appcompat.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class q {

    /* renamed from: a, reason: collision with root package name */
    public static final n0 f341a = new n0(new o0());

    /* renamed from: b, reason: collision with root package name */
    public static final int f342b = -100;

    /* renamed from: c, reason: collision with root package name */
    public static j0.i f343c = null;
    public static j0.i d = null;

    /* renamed from: e, reason: collision with root package name */
    public static Boolean f344e = null;
    public static boolean f = false;

    /* renamed from: g, reason: collision with root package name */
    public static final p.f f345g = new p.f(0);

    /* renamed from: h, reason: collision with root package name */
    public static final Object f346h = new Object();

    /* renamed from: i, reason: collision with root package name */
    public static final Object f347i = new Object();

    public static boolean c(Context context) {
        if (f344e == null) {
            try {
                int i6 = AppLocalesMetadataHolderService.f220a;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) AppLocalesMetadataHolderService.class), Build.VERSION.SDK_INT >= 24 ? l0.a() | 128 : 640).metaData;
                if (bundle != null) {
                    f344e = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                f344e = Boolean.FALSE;
            }
        }
        return f344e.booleanValue();
    }

    public static void f(g0 g0Var) {
        synchronized (f346h) {
            try {
                p.f fVar = f345g;
                fVar.getClass();
                p.a aVar = new p.a(fVar);
                while (aVar.hasNext()) {
                    q qVar = (q) ((WeakReference) aVar.next()).get();
                    if (qVar == g0Var || qVar == null) {
                        aVar.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void a();

    public abstract void b();

    public abstract void d();

    public abstract void e();

    public abstract boolean g(int i6);

    public abstract void h(int i6);

    public abstract void i(View view);

    public abstract void k(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void l(CharSequence charSequence);
}
