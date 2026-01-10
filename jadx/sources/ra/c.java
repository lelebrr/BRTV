package ra;

import android.net.Uri;
import android.widget.VideoView;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements a {

    /* renamed from: a, reason: collision with root package name */
    public VideoView f9630a;

    static {
        a2.a.s("ofRF9bMmZTaF6GQ=\n", "7I0TnNdDCmA=\n");
    }

    @Override // ra.a
    public final void a() {
        a2.a.s("EvkMJaWD\n", "YZFjUp+jZ0Q=\n");
        this.f9630a.setVisibility(0);
    }

    @Override // ra.a
    public final void b() {
        a2.a.s("iJWV7YltmDxTSg==\n", "+vDhn/BXuNs=\n");
    }

    @Override // ra.a
    public final void c() {
        this.f9630a.stopPlayback();
        a2.a.s("5pMs+kOUODH3hiDhKQ==\n", "ledDihP4WUg=\n");
    }

    @Override // ra.a
    public final void d() {
        this.f9630a.resume();
        a2.a.s("o1UIQqG18zo=\n", "0TB7N8zQyRo=\n");
    }

    @Override // ra.a
    public final void e() {
        a2.a.s("yUvSj6xv7tIA\n", "uj+9/5ZPCXs=\n");
    }

    @Override // ra.a
    public final void f() {
        o9.d.y(this.f9630a);
    }

    @Override // ra.a
    public final void g(Uri uri, HashMap map) {
        a2.a.s("+ywRtVjmKKHdGyzZEQ==\n", "iEll4zGCTc4=\n");
        this.f9630a.setVideoURI(uri, map);
    }

    @Override // ra.a
    public final int getBufferedPercentage() {
        a2.a.s("6pKQGyz6RlT/koAJPO5DVOODhT48pgDWJE0=\n", "jffkWVmcIDE=\n");
        return 0;
    }

    @Override // ra.a
    public final long getCurrentPosition() {
        return this.f9630a.getCurrentPosition();
    }

    @Override // ra.a
    public final long getDuration() {
        return this.f9630a.getDuration();
    }

    @Override // ra.a
    public final boolean getPlayWhenReady() {
        a2.a.s("1uFuSOboBAHZ4XRK7+gZL4uk/bEw\n", "sYQaGIqJfVY=\n");
        return false;
    }

    @Override // ra.a
    public final void h(String str) {
        this.f9630a.setVideoPath(str);
        a2.a.s("Hqgats9vvVQ9rBqInCs=\n", "bc1u4KYL2Ds=\n");
    }

    @Override // ra.a
    public final boolean i(int i6) {
        VideoView videoView = this.f9630a;
        return videoView != null && i6 == videoView.getId();
    }

    @Override // ra.a
    public final boolean isPlaying() {
        return this.f9630a.isPlaying();
    }

    @Override // ra.a
    public final boolean isVisible() {
        a2.a.s("r5L4h3h2VeCj244=\n", "xuGu7gsfN4w=\n");
        VideoView videoView = this.f9630a;
        videoView.getVisibility();
        return videoView.getVisibility() == 0;
    }

    @Override // ra.a
    public final void j() {
        a2.a.s("QvAowgde\n", "KplMpz1+zRQ=\n");
        this.f9630a.setVisibility(8);
    }

    @Override // ra.a
    public final void pause() {
        a2.a.s("25wWY1aIOA==\n", "q/1jEDOyGJA=\n");
        this.f9630a.pause();
    }

    @Override // ra.a
    public final void prepare() {
        a2.a.s("9bx17gITEIqlKbkk\n", "hc4QnmNhdbA=\n");
    }

    @Override // ra.a
    public final void release() {
        a2.a.s("qo7qZPhdEfH4DC+7\n", "2OuGAZkudMs=\n");
    }

    @Override // ra.a
    public final void seekTo(long j10) {
        this.f9630a.seekTo((int) j10);
    }

    @Override // ra.a
    public final void setPlayWhenReady(boolean z7) {
        a2.a.s("HbEhYEj/GC0GsTtiQf8FA1T0spme\n", "btRVMCSeYXo=\n");
    }

    @Override // ra.a
    public final void start() {
        this.f9630a.start();
        a2.a.s("Bhoz7KlX4Q==\n", "dW5Snt1twTk=\n");
    }

    @Override // ra.a
    public final void stop() {
        a2.a.s("hiUjy2YGS/pP\n", "9VFMu1wmrFM=\n");
    }
}
