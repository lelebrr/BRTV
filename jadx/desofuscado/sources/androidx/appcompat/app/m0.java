package androidx.appcompat.app;

import android.app.job.JobParameters;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.graphics.Typeface;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.exoplayer.analytics.MediaMetricsListener;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import androidx.media3.ui.PlayerView;
import androidx.mediarouter.media.MediaRouteProviderService;
import androidx.profileinstaller.ProfileInstallerInitializer;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Random;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class m0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f333a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f334b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f335c;

    public /* synthetic */ m0(Object obj, int i6, Object obj2) {
        this.f333a = i6;
        this.f334b = obj;
        this.f335c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        r0 r0Var;
        int i6 = 1;
        Object obj = this.f335c;
        Object obj2 = this.f334b;
        switch (this.f333a) {
            case 0:
                Runnable runnable = (Runnable) obj;
                n0 n0Var = (n0) obj2;
                n0Var.getClass();
                try {
                    runnable.run();
                    return;
                } finally {
                    n0Var.a();
                }
            case 1:
                ((SimpleBasePlayer) obj2).lambda$updateStateForPendingOperation$62((ListenableFuture) obj);
                return;
            case 2:
                AudioManagerCompat.lambda$getAudioManager$0((Context) obj2, (ConditionVariable) obj);
                return;
            case 3:
                ((MediaMetricsListener) obj2).lambda$reportTrackChangeEvent$3((TrackChangeEvent) obj);
                return;
            case 4:
                ((MediaMetricsListener) obj2).lambda$maybeReportNetworkChange$1((NetworkEvent) obj);
                return;
            case 5:
                ((MediaMetricsListener) obj2).lambda$maybeReportPlaybackError$0((PlaybackErrorEvent) obj);
                return;
            case 6:
                ((MediaMetricsListener) obj2).lambda$finishCurrentSession$4((PlaybackMetrics) obj);
                return;
            case 7:
                ((MediaMetricsListener) obj2).lambda$maybeReportPlaybackStateChange$2((PlaybackStateEvent) obj);
                return;
            case 8:
                ((AudioRendererEventListener.EventDispatcher) obj2).lambda$decoderReleased$5((String) obj);
                return;
            case 9:
                ((AudioSink.Listener) obj2).onAudioTrackReleased((AudioSink.AudioTrackConfig) obj);
                return;
            case 10:
                ((SphericalGLSurfaceView) obj2).lambda$onSurfaceTextureAvailable$1((SurfaceTexture) obj);
                return;
            case 11:
                ((PlayerView) obj2).lambda$onImageAvailable$1((Bitmap) obj);
                return;
            case 12:
                ((e0.b) obj2).j((Typeface) obj);
                return;
            case 13:
                int i10 = JobInfoSchedulerService.f3602a;
                ((JobInfoSchedulerService) obj2).jobFinished((JobParameters) obj, false);
                return;
            case 14:
                q1.g0 g0Var = (q1.g0) obj2;
                if (g0Var.f8982k.remove((String) obj) == null || (r0Var = g0Var.f8983l.f9030a.d.f8960g) == null) {
                    return;
                }
                MediaRouteProviderService.e(g0Var.f9022a, 5, 0, 0, g0Var.a(r0Var), null);
                return;
            case 15:
                ((m0.a) obj2).accept((ArrayList) obj);
                return;
            case 16:
                qa.g gVar = (qa.g) obj2;
                androidx.lifecycle.r rVarD = androidx.lifecycle.o0.d(gVar.f9390a);
                qa.f fVar = new qa.f(gVar, (String) obj, null);
                a2.a.s("h6sQaU6D\n", "u994AD29cKM=\n");
                a2.a.s("z5itirc=\n", "rfTC6dwi1S8=\n");
                t9.u.k(rVarD, t9.b0.f10181b, fVar, 2);
                return;
            default:
                ((ProfileInstallerInitializer) obj2).getClass();
                (Build.VERSION.SDK_INT >= 28 ? t1.g.a(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new n((Context) obj, i6), new Random().nextInt(Math.max(1000, 1)) + 5000);
                return;
        }
    }
}
