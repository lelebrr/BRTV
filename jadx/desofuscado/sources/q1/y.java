package q1;

import android.media.AudioTrack;
import android.os.Handler;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class y implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9180a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9181b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f9182c;
    public final /* synthetic */ Object d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f9183e;

    public /* synthetic */ y(Object obj, Object obj2, Object obj3, Object obj4, int i6) {
        this.f9180a = i6;
        this.f9181b = obj;
        this.f9182c = obj2;
        this.d = obj3;
        this.f9183e = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9180a) {
            case 0:
                b0 b0Var = (b0) this.f9181b;
                b0Var.getClass();
                ((a0) this.f9182c).c(b0Var, (w) this.d, (ArrayList) this.f9183e);
                break;
            case 1:
                b0 b0Var2 = (b0) this.f9181b;
                b0Var2.getClass();
                ((a0) this.f9182c).c(b0Var2, (w) this.d, (ArrayList) this.f9183e);
                break;
            default:
                DefaultAudioSink.lambda$releaseAudioTrackAsync$1((AudioTrack) this.f9181b, (AudioSink.Listener) this.f9182c, (Handler) this.d, (AudioSink.AudioTrackConfig) this.f9183e);
                break;
        }
    }
}
