package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements MediaCodec.OnFrameRenderedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2308a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MediaCodecAdapter.OnFrameRenderedListener f2309b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaCodecAdapter f2310c;

    public /* synthetic */ a(MediaCodecAdapter mediaCodecAdapter, MediaCodecAdapter.OnFrameRenderedListener onFrameRenderedListener, int i6) {
        this.f2308a = i6;
        this.f2310c = mediaCodecAdapter;
        this.f2309b = onFrameRenderedListener;
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(MediaCodec mediaCodec, long j10, long j11) {
        switch (this.f2308a) {
            case 0:
                ((AsynchronousMediaCodecAdapter) this.f2310c).lambda$setOnFrameRenderedListener$0(this.f2309b, mediaCodec, j10, j11);
                break;
            default:
                ((SynchronousMediaCodecAdapter) this.f2310c).lambda$setOnFrameRenderedListener$0(this.f2309b, mediaCodec, j10, j11);
                break;
        }
    }
}
