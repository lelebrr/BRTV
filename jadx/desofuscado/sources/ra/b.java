package ra;

import android.net.Uri;
import androidx.media3.common.MediaItem;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.ui.PlayerView;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements a {

    /* renamed from: a, reason: collision with root package name */
    public ExoPlayer f9628a;

    /* renamed from: b, reason: collision with root package name */
    public PlayerView f9629b;

    static {
        a2.a.s("Nc0Jtuie4g4B0T4=\n", "eLRMzofOjm8=\n");
    }

    @Override // ra.a
    public final void a() {
        this.f9628a.clearMediaItems();
        a2.a.s("0dCuCRmh\n", "orjBfiOB9fQ=\n");
        this.f9629b.setVisibility(0);
    }

    @Override // ra.a
    public final void b() {
        a2.a.s("ot0nRSuuWFmWwRAdNptASpaeQg1qzg==\n", "76RiPUT+NDg=\n");
        ExoPlayer exoPlayer = this.f9628a;
        MediaItem currentMediaItem = exoPlayer.getCurrentMediaItem();
        if (currentMediaItem == null) {
            return;
        }
        a2.a.s("+jbSrM+EYUrOKuX00rF5Wc51t+SO5S0=\n", "t0+X1KDUDSs=\n");
        exoPlayer.setMediaItem(currentMediaItem);
        exoPlayer.prepare();
        exoPlayer.setPlayWhenReady(true);
        a2.a.s("HpbUa0BFtOhCwoA=\n", "bPOgGTl/lNk=\n");
    }

    @Override // ra.a
    public final void c() {
        a2.a.s("kvMvS6mj9t6D5iNQw+9wDls=\n", "4YdAO/nPl6c=\n");
    }

    @Override // ra.a
    public final void d() {
        this.f9628a.setPlayWhenReady(true);
    }

    @Override // ra.a
    public final void e() {
        a2.a.s("vP2oeYgr\n", "z4nHCbIL8e0=\n");
        this.f9628a.stop();
    }

    @Override // ra.a
    public final void f() {
        o9.d.y(this.f9629b);
    }

    @Override // ra.a
    public final void g(Uri uri, HashMap map) {
        a2.a.s("er6TII3XsIJcia5MxFR8Vw==\n", "CdvnduSz1e0=\n");
    }

    @Override // ra.a
    public final int getBufferedPercentage() {
        return this.f9628a.getBufferedPercentage();
    }

    @Override // ra.a
    public final long getCurrentPosition() {
        return this.f9628a.getCurrentPosition();
    }

    @Override // ra.a
    public final long getDuration() {
        return this.f9628a.getDuration();
    }

    @Override // ra.a
    public final boolean getPlayWhenReady() {
        return this.f9628a.getPlayWhenReady();
    }

    @Override // ra.a
    public final void h(String str) {
        a2.a.s("DId9/NbTbYMvg33ChZfvRcU=\n", "f+IJqr+3COw=\n");
    }

    @Override // ra.a
    public final boolean i(int i6) {
        PlayerView playerView = this.f9629b;
        return playerView != null && i6 == playerView.getId();
    }

    @Override // ra.a
    public final boolean isPlaying() {
        ExoPlayer exoPlayer = this.f9628a;
        return exoPlayer.getPlayWhenReady() && (exoPlayer.getPlaybackState() == 3 || exoPlayer.getPlaybackState() == 2);
    }

    @Override // ra.a
    public final boolean isVisible() {
        a2.a.s("czgHcb8OI3R/cXE=\n", "GktRGMxnQRg=\n");
        return this.f9629b.getVisibility() == 0;
    }

    @Override // ra.a
    public final void j() {
        a2.a.s("a+MxyjFh\n", "A4pVrwtBsoY=\n");
        this.f9629b.setVisibility(8);
    }

    @Override // ra.a
    public final void pause() {
        this.f9628a.setPlayWhenReady(false);
    }

    @Override // ra.a
    public final void prepare() {
        a2.a.s("wQCC3AU4R/aR\n", "sXLnrGRKIsw=\n");
        this.f9628a.prepare();
    }

    @Override // ra.a
    public final void release() {
        a2.a.s("f1xC3SlAjm0t\n", "DTkuuEgz61c=\n");
        this.f9628a.release();
    }

    @Override // ra.a
    public final void seekTo(long j10) {
        this.f9628a.seekTo(j10);
    }

    @Override // ra.a
    public final void setPlayWhenReady(boolean z7) {
        this.f9628a.setPlayWhenReady(z7);
    }

    @Override // ra.a
    public final void start() {
        this.f9628a.setPlayWhenReady(true);
    }

    @Override // ra.a
    public final void stop() {
        a2.a.s("w6mDFqcF\n", "sN3sZp0ltfU=\n");
        this.f9628a.stop();
    }
}
