package com.bumptech.glide;

import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Looper;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.j0;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import b3.x;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import k3.t;
import ka.i0;
import q1.f0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements ComponentCallbacks2 {

    /* renamed from: h, reason: collision with root package name */
    public static volatile b f3492h;

    /* renamed from: i, reason: collision with root package name */
    public static volatile boolean f3493i;

    /* renamed from: a, reason: collision with root package name */
    public final y2.a f3494a;

    /* renamed from: b, reason: collision with root package name */
    public final z2.e f3495b;

    /* renamed from: c, reason: collision with root package name */
    public final f f3496c;
    public final y2.f d;

    /* renamed from: e, reason: collision with root package name */
    public final k3.l f3497e;
    public final u6.e f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f3498g = new ArrayList();

    public b(Context context, x2.l lVar, z2.e eVar, y2.a aVar, y2.f fVar, k3.l lVar2, u6.e eVar2, int i6, u6.e eVar3, p.e eVar4, List list, ArrayList arrayList, n5.d dVar, a0.b bVar) {
        this.f3494a = aVar;
        this.d = fVar;
        this.f3495b = eVar;
        this.f3497e = lVar2;
        this.f = eVar2;
        this.f3496c = new f(context, fVar, new t(this, arrayList, dVar), new x4.e(28), eVar3, eVar4, list, lVar, bVar, i6);
    }

    public static b a(Context context) {
        GeneratedAppGlideModule generatedAppGlideModule;
        if (f3492h == null) {
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException unused) {
                if (Log.isLoggable("Glide", 5)) {
                    Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
                }
                generatedAppGlideModule = null;
            } catch (IllegalAccessException e5) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e5);
            } catch (InstantiationException e10) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e10);
            } catch (NoSuchMethodException e11) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e11);
            } catch (InvocationTargetException e12) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e12);
            }
            synchronized (b.class) {
                if (f3492h == null) {
                    if (f3493i) {
                        throw new IllegalStateException("Glide has been called recursively, this is probably an internal library error!");
                    }
                    f3493i = true;
                    try {
                        c(context, generatedAppGlideModule);
                        f3493i = false;
                    } catch (Throwable th) {
                        f3493i = false;
                        throw th;
                    }
                }
            }
        }
        return f3492h;
    }

    public static k3.l b(Context context) {
        r3.f.c(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return a(context).f3497e;
    }

    public static void c(Context context, GeneratedAppGlideModule generatedAppGlideModule) throws PackageManager.NameNotFoundException {
        e eVar = new e();
        Context applicationContext = context.getApplicationContext();
        Collections.emptyList();
        if (Log.isLoggable("ManifestParser", 3)) {
            Log.d("ManifestParser", "Loading Glide modules");
        }
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                if (Log.isLoggable("ManifestParser", 2)) {
                    Log.v("ManifestParser", "Got app info metadata: " + applicationInfo.metaData);
                }
                for (String str : applicationInfo.metaData.keySet()) {
                    if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                        arrayList.add(o9.d.w(str));
                        if (Log.isLoggable("ManifestParser", 3)) {
                            Log.d("ManifestParser", "Loaded Glide module: " + str);
                        }
                    }
                }
                if (Log.isLoggable("ManifestParser", 3)) {
                    Log.d("ManifestParser", "Finished loading Glide modules");
                }
            } else if (Log.isLoggable("ManifestParser", 3)) {
                Log.d("ManifestParser", "Got null app info metadata");
            }
        } catch (PackageManager.NameNotFoundException e5) {
            if (Log.isLoggable("ManifestParser", 6)) {
                Log.e("ManifestParser", "Failed to parse glide modules", e5);
            }
        }
        if (generatedAppGlideModule != null && !new HashSet().isEmpty()) {
            HashSet hashSet = new HashSet();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                l3.a aVar = (l3.a) it.next();
                if (hashSet.contains(aVar.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        Log.d("Glide", "AppGlideModule excludes manifest GlideModule: " + aVar);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Log.d("Glide", "Discovered GlideModule from manifest: " + ((l3.a) it2.next()).getClass());
            }
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((l3.a) it3.next()).b(applicationContext, eVar);
        }
        if (eVar.f3505g == null) {
            a3.b bVar = new a3.b();
            if (a3.f.f100c == 0) {
                a3.f.f100c = Math.min(4, Runtime.getRuntime().availableProcessors());
            }
            int i6 = a3.f.f100c;
            if (TextUtils.isEmpty("source")) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: source");
            }
            eVar.f3505g = new a3.f(new ThreadPoolExecutor(i6, i6, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a3.d(bVar, "source", false)));
        }
        if (eVar.f3506h == null) {
            int i10 = a3.f.f100c;
            a3.b bVar2 = new a3.b();
            if (TextUtils.isEmpty("disk-cache")) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: disk-cache");
            }
            eVar.f3506h = new a3.f(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a3.d(bVar2, "disk-cache", true)));
        }
        if (eVar.f3512n == null) {
            if (a3.f.f100c == 0) {
                a3.f.f100c = Math.min(4, Runtime.getRuntime().availableProcessors());
            }
            int i11 = a3.f.f100c >= 4 ? 2 : 1;
            a3.b bVar3 = new a3.b();
            if (TextUtils.isEmpty("animation")) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: animation");
            }
            eVar.f3512n = new a3.f(new ThreadPoolExecutor(i11, i11, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a3.d(bVar3, "animation", true)));
        }
        if (eVar.f3508j == null) {
            z2.f fVar = new z2.f(applicationContext);
            n5.b bVar4 = new n5.b();
            Context context2 = fVar.f11519a;
            ActivityManager activityManager = fVar.f11520b;
            int i12 = activityManager.isLowRamDevice() ? 2097152 : 4194304;
            bVar4.f8449c = i12;
            int iRound = Math.round(activityManager.getMemoryClass() * ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES * (activityManager.isLowRamDevice() ? 0.33f : 0.4f));
            DisplayMetrics displayMetrics = (DisplayMetrics) fVar.f11521c.f9745b;
            float f = displayMetrics.widthPixels * displayMetrics.heightPixels * 4;
            float f3 = fVar.d;
            int iRound2 = Math.round(f * f3);
            int iRound3 = Math.round(f * 2.0f);
            int i13 = iRound - i12;
            int i14 = iRound3 + iRound2;
            if (i14 <= i13) {
                bVar4.f8448b = iRound3;
                bVar4.f8447a = iRound2;
            } else {
                float f4 = i13 / (f3 + 2.0f);
                bVar4.f8448b = Math.round(2.0f * f4);
                bVar4.f8447a = Math.round(f4 * f3);
            }
            if (Log.isLoggable("MemorySizeCalculator", 3)) {
                StringBuilder sb = new StringBuilder("Calculation complete, Calculated memory cache size: ");
                sb.append(Formatter.formatFileSize(context2, bVar4.f8448b));
                sb.append(", pool size: ");
                sb.append(Formatter.formatFileSize(context2, bVar4.f8447a));
                sb.append(", byte array size: ");
                sb.append(Formatter.formatFileSize(context2, i12));
                sb.append(", memory class limited? ");
                sb.append(i14 > iRound);
                sb.append(", max size: ");
                sb.append(Formatter.formatFileSize(context2, iRound));
                sb.append(", memoryClass: ");
                sb.append(activityManager.getMemoryClass());
                sb.append(", isLowMemoryDevice: ");
                sb.append(activityManager.isLowRamDevice());
                Log.d("MemorySizeCalculator", sb.toString());
            }
            eVar.f3508j = bVar4;
        }
        if (eVar.f3509k == null) {
            eVar.f3509k = new u6.e(16);
        }
        if (eVar.d == null) {
            int i15 = eVar.f3508j.f8447a;
            if (i15 > 0) {
                eVar.d = new y2.g(i15);
            } else {
                eVar.d = new f0(10);
            }
        }
        if (eVar.f3504e == null) {
            eVar.f3504e = new y2.f(eVar.f3508j.f8449c);
        }
        if (eVar.f == null) {
            eVar.f = new z2.e(eVar.f3508j.f8448b);
        }
        if (eVar.f3507i == null) {
            eVar.f3507i = new z2.d(new a4.k(applicationContext, 5), 262144000L);
        }
        if (eVar.f3503c == null) {
            eVar.f3503c = new x2.l(eVar.f, eVar.f3507i, eVar.f3506h, eVar.f3505g, new a3.f(new ThreadPoolExecutor(0, Integer.MAX_VALUE, a3.f.f99b, TimeUnit.MILLISECONDS, new SynchronousQueue(), new a3.d(new a3.b(), "source-unlimited", false))), eVar.f3512n);
        }
        List list = eVar.f3513o;
        if (list == null) {
            eVar.f3513o = Collections.emptyList();
        } else {
            eVar.f3513o = Collections.unmodifiableList(list);
        }
        x xVar = eVar.f3502b;
        xVar.getClass();
        b bVar5 = new b(applicationContext, eVar.f3503c, eVar.f, eVar.d, eVar.f3504e, new k3.l(), eVar.f3509k, eVar.f3510l, eVar.f3511m, eVar.f3501a, eVar.f3513o, arrayList, generatedAppGlideModule, new a0.b(xVar));
        applicationContext.registerComponentCallbacks(bVar5);
        f3492h = bVar5;
    }

    public static o e(Context context) {
        return b(context).b(context);
    }

    public static o f(i0 i0Var) {
        View view;
        k3.l lVarB = b(i0Var.j());
        lVarB.getClass();
        r3.f.c(i0Var.j(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        char[] cArr = r3.n.f9510a;
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            return lVarB.b(i0Var.j().getApplicationContext());
        }
        if (i0Var.h() != null) {
            lVarB.f7719b.a(i0Var.h());
        }
        j0 j0VarI = i0Var.i();
        Context contextJ = i0Var.j();
        return lVarB.f7720c.C(contextJ, a(contextJ.getApplicationContext()), i0Var.M, j0VarI, (!i0Var.o() || i0Var.f1543z || (view = i0Var.F) == null || view.getWindowToken() == null || i0Var.F.getVisibility() != 0) ? false : true);
    }

    public final void d(o oVar) {
        synchronized (this.f3498g) {
            try {
                if (!this.f3498g.contains(oVar)) {
                    throw new IllegalStateException("Cannot unregister not yet registered manager");
                }
                this.f3498g.remove(oVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        r3.n.a();
        this.f3495b.e(0L);
        this.f3494a.j();
        this.d.a();
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i6) {
        r3.n.a();
        synchronized (this.f3498g) {
            try {
                Iterator it = this.f3498g.iterator();
                while (it.hasNext()) {
                    ((o) it.next()).getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f3495b.f(i6);
        this.f3494a.a(i6);
        this.d.i(i6);
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }
}
