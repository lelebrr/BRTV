package q1;

import android.os.Handler;
import android.os.Looper;
import androidx.media3.exoplayer.smoothstreaming.SsMediaSource;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v0 {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f9166a = new Handler(Looper.getMainLooper());

    /* renamed from: b, reason: collision with root package name */
    public final Runnable f9167b;

    /* renamed from: c, reason: collision with root package name */
    public long f9168c;
    public long d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f9169e;

    public v0(Runnable runnable) {
        this.f9167b = runnable;
    }

    public final void a(long j10, boolean z7) {
        if (z7) {
            long j11 = this.d;
            if (j11 - j10 >= SsMediaSource.DEFAULT_LIVE_PRESENTATION_DELAY_MS) {
                return;
            }
            this.f9168c = Math.max(this.f9168c, (j10 + SsMediaSource.DEFAULT_LIVE_PRESENTATION_DELAY_MS) - j11);
            this.f9169e = true;
        }
    }
}
