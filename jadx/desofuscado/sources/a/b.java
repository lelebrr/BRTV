package a;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Trace;
import androidx.activity.ComponentActivity;
import androidx.appcompat.app.i0;
import androidx.lifecycle.y;
import androidx.media3.common.x;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.smoothstreaming.SsMediaSource;
import androidx.media3.exoplayer.source.preload.DefaultPreloadManager;
import com.tencent.mars.xlog.Log;
import java.lang.reflect.Method;
import java.nio.MappedByteBuffer;
import java.util.concurrent.TimeUnit;
import ka.w;
import okhttp3.Request;
import org.bitspark.android.Spark;
import q1.q0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2b;

    public /* synthetic */ b(int i6, Object obj) {
        this.f1a = i6;
        this.f2b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        Object obj;
        int i6 = 2;
        boolean z7 = false;
        switch (this.f1a) {
            case 0:
                ((ComponentActivity) this.f2b).invalidateOptionsMenu();
                return;
            case 1:
                i0.b((i0) this.f2b);
                return;
            case 2:
                ((q) this.f2b).c();
                return;
            case 3:
                Activity activity = (Activity) this.f2b;
                if (activity.isFinishing()) {
                    return;
                }
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 28) {
                    Class cls = androidx.core.app.e.f1161a;
                    activity.recreate();
                    return;
                }
                Class cls2 = androidx.core.app.e.f1161a;
                boolean z10 = i10 == 26 || i10 == 27;
                Method method = androidx.core.app.e.f;
                if ((!z10 || method != null) && (androidx.core.app.e.f1164e != null || androidx.core.app.e.d != null)) {
                    try {
                        Object obj2 = androidx.core.app.e.f1163c.get(activity);
                        if (obj2 != null && (obj = androidx.core.app.e.f1162b.get(activity)) != null) {
                            Application application = activity.getApplication();
                            androidx.core.app.d dVar = new androidx.core.app.d(activity);
                            application.registerActivityLifecycleCallbacks(dVar);
                            Handler handler = androidx.core.app.e.f1165g;
                            handler.post(new a3.c(i6, dVar, obj2, z7));
                            try {
                                if (i10 == 26 || i10 == 27) {
                                    Boolean bool = Boolean.FALSE;
                                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                                } else {
                                    activity.recreate();
                                }
                                handler.post(new a3.c(3, application, dVar, z7));
                                return;
                            } catch (Throwable th) {
                                handler.post(new a3.c(3, application, dVar, z7));
                                throw th;
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
                activity.recreate();
                return;
            case 4:
                androidx.lifecycle.i0 i0Var = (androidx.lifecycle.i0) this.f2b;
                j9.i.f(i0Var, "this$0");
                int i11 = i0Var.f1965b;
                y yVar = i0Var.f;
                if (i11 == 0) {
                    i0Var.f1966c = true;
                    yVar.f(androidx.lifecycle.n.ON_PAUSE);
                }
                if (i0Var.f1964a == 0 && i0Var.f1966c) {
                    yVar.f(androidx.lifecycle.n.ON_STOP);
                    i0Var.d = true;
                    return;
                }
                return;
            case 5:
                ((DefaultAnalyticsCollector) this.f2b).releaseInternal();
                return;
            case 6:
                ((SsMediaSource) this.f2b).startLoadingManifest();
                return;
            case 7:
                ((DefaultPreloadManager) this.f2b).lambda$releaseInternal$1();
                return;
            case 8:
                b1.o oVar = (b1.o) this.f2b;
                synchronized (oVar.d) {
                    try {
                        if (oVar.f3130h == null) {
                            return;
                        }
                        try {
                            k0.g gVarD = oVar.d();
                            int i12 = gVarD.f7694e;
                            if (i12 == 2) {
                                synchronized (oVar.d) {
                                }
                            }
                            if (i12 != 0) {
                                throw new RuntimeException("fetchFonts result is not OK. (" + i12 + ")");
                            }
                            try {
                                Method method2 = j0.n.f7426b;
                                Trace.beginSection("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                                x4.e eVar = oVar.f3127c;
                                Context context = oVar.f3125a;
                                eVar.getClass();
                                Typeface typefaceM = f0.g.f6760a.m(context, new k0.g[]{gVarD}, 0);
                                MappedByteBuffer mappedByteBufferD = n5.d.D(oVar.f3125a, gVarD.f7691a);
                                if (mappedByteBufferD == null || typefaceM == null) {
                                    throw new RuntimeException("Unable to open file.");
                                }
                                try {
                                    Trace.beginSection("EmojiCompat.MetadataRepo.create");
                                    a0.f fVar = new a0.f(typefaceM, com.bumptech.glide.c.k(mappedByteBufferD));
                                    Trace.endSection();
                                    Trace.endSection();
                                    synchronized (oVar.d) {
                                        try {
                                            a2.a aVar = oVar.f3130h;
                                            if (aVar != null) {
                                                aVar.I(fVar);
                                            }
                                        } finally {
                                        }
                                    }
                                    oVar.b();
                                    return;
                                } finally {
                                    Method method3 = j0.n.f7426b;
                                    Trace.endSection();
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        } catch (Throwable th3) {
                            synchronized (oVar.d) {
                                try {
                                    a2.a aVar2 = oVar.f3130h;
                                    if (aVar2 != null) {
                                        aVar2.H(th3);
                                    }
                                    oVar.b();
                                    return;
                                } finally {
                                }
                            }
                        }
                    } finally {
                    }
                }
            case 9:
                ((Spark) this.f2b).f8701j0.setVisibility(8);
                return;
            case 10:
                h4.j jVar = (h4.j) this.f2b;
                jVar.getClass();
                ((i4.g) jVar.d).e(new x(14, jVar));
                return;
            case 11:
                String strD = org.bitspark.android.utils.k.d(0L, 1L, false);
                j7.c cVar = (j7.c) this.f2b;
                switch (cVar.f7443a) {
                    case 6:
                        ka.y yVar2 = ((w) cVar.f7444b).f7873b;
                        yVar2.getClass();
                        yVar2.Q(strD);
                        return;
                    default:
                        la.d dVar2 = ((la.b) cVar.f7444b).f8079b;
                        dVar2.getClass();
                        dVar2.T(strD);
                        return;
                }
            case 12:
                org.bitspark.android.utils.q qVar = (org.bitspark.android.utils.q) this.f2b;
                qVar.getClass();
                String str = org.bitspark.android.utils.q.d;
                try {
                    TimeUnit.SECONDS.sleep(6L);
                    String strS = a2.a.s("x7tYfQv4lrDht1V1S7jd\n", "ld47EmWW89M=\n");
                    boolean z11 = org.bitspark.android.utils.m.f8784b;
                    Log.i(str, strS);
                    String str2 = qVar.f8796c;
                    qVar.f8796c = str2;
                    qVar.f8795b.newWebSocket(new Request.Builder().url(qVar.f8794a).build(), new org.bitspark.android.utils.p(qVar, str2));
                    return;
                } catch (InterruptedException e5) {
                    String str3 = a2.a.s("Y6k77yGgF8BF7DHuO6sA0US8LOUr9FI=\n", "McxYgE/OcqM=\n") + e5.getMessage();
                    boolean z12 = org.bitspark.android.utils.m.f8784b;
                    Log.i(str, str3);
                    return;
                }
            case 13:
                ((q1.h) this.f2b).l();
                return;
            case 14:
                ((q1.l) this.f2b).f9052n = -1;
                return;
            default:
                ((q0) this.f2b).a();
                return;
        }
    }
}
