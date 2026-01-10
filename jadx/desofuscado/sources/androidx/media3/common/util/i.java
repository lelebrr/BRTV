package androidx.media3.common.util;

import a4.k;
import a4.s;
import androidx.media3.common.Format;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.preload.BasePreloadManager;
import androidx.media3.exoplayer.source.preload.PreloadException;
import b1.o;
import b1.p;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.SettableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.logging.Logger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2094a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2095b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2096c;
    public final /* synthetic */ Object d;

    public /* synthetic */ i(SettableFuture settableFuture, Runnable runnable, Object obj) {
        this.f2094a = 1;
        this.f2095b = settableFuture;
        this.f2096c = runnable;
        this.d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2094a) {
            case 0:
                Util.lambda$transformFutureAsync$2((ListenableFuture) this.f2096c, (SettableFuture) this.f2095b, (AsyncFunction) this.d);
                return;
            case 1:
                Util.lambda$postOrRunWithCompletion$0((SettableFuture) this.f2095b, (Runnable) this.f2096c, this.d);
                return;
            case 2:
                ((AudioRendererEventListener.EventDispatcher) this.f2096c).lambda$inputFormatChanged$2((Format) this.f2095b, (DecoderReuseEvaluation) this.d);
                return;
            case 3:
                ((DrmSessionEventListener.EventDispatcher) this.f2096c).lambda$drmSessionManagerError$2((DrmSessionEventListener) this.f2095b, (Exception) this.d);
                return;
            case 4:
                ((BasePreloadManager) this.f2096c).lambda$onPreloadError$4((PreloadException) this.f2095b, (MediaSource) this.d);
                return;
            case 5:
                k kVar = (k) this.f2096c;
                a2.a aVar = (a2.a) this.f2095b;
                ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.d;
                kVar.getClass();
                try {
                    p pVarF = u7.d.f(kVar.f133b);
                    if (pVarF == null) {
                        throw new RuntimeException("EmojiCompat font provider not available on this device.");
                    }
                    o oVar = (o) pVarF.f3131a;
                    synchronized (oVar.d) {
                        oVar.f = threadPoolExecutor;
                    }
                    pVarF.f3131a.a(new b1.k(aVar, threadPoolExecutor));
                    return;
                } catch (Throwable th) {
                    aVar.H(th);
                    threadPoolExecutor.shutdown();
                    return;
                }
            default:
                a4.j jVar = (a4.j) this.f2095b;
                String str = jVar.f129a;
                a4.i iVar = (a4.i) this.d;
                g4.a aVar2 = (g4.a) this.f2096c;
                aVar2.getClass();
                Logger logger = g4.a.f;
                try {
                    b4.g gVarA = aVar2.f7101c.a(str);
                    if (gVarA == null) {
                        String str2 = "Transport backend '" + str + "' is not registered";
                        logger.warning(str2);
                        new IllegalArgumentException(str2);
                    } else {
                        ((i4.g) aVar2.f7102e).e(new androidx.media3.exoplayer.hls.b(aVar2, jVar, ((y3.d) gVarA).a(iVar), 4));
                    }
                    return;
                } catch (Exception e5) {
                    logger.warning("Error scheduling event " + e5.getMessage());
                    return;
                }
        }
    }

    public /* synthetic */ i(g4.a aVar, a4.j jVar, s sVar, a4.i iVar) {
        this.f2094a = 6;
        this.f2096c = aVar;
        this.f2095b = jVar;
        this.d = iVar;
    }

    public /* synthetic */ i(Object obj, Object obj2, Object obj3, int i6) {
        this.f2094a = i6;
        this.f2096c = obj;
        this.f2095b = obj2;
        this.d = obj3;
    }
}
