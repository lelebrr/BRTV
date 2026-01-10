package androidx.media3.exoplayer.rtsp;

import androidx.media3.exoplayer.rtsp.RtpDataChannel;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class TransferRtpDataChannelFactory implements RtpDataChannel.Factory {
    private static final int INTERLEAVED_CHANNELS_PER_TRACK = 2;
    private final long timeoutMs;

    public TransferRtpDataChannelFactory(long j10) {
        this.timeoutMs = j10;
    }

    @Override // androidx.media3.exoplayer.rtsp.RtpDataChannel.Factory
    public RtpDataChannel createAndOpenDataChannel(int i6) {
        TransferRtpDataChannel transferRtpDataChannel = new TransferRtpDataChannel(this.timeoutMs);
        transferRtpDataChannel.open(RtpUtils.getIncomingRtpDataSpec(i6 * 2));
        return transferRtpDataChannel;
    }

    @Override // androidx.media3.exoplayer.rtsp.RtpDataChannel.Factory
    public final /* synthetic */ RtpDataChannel.Factory createFallbackDataChannelFactory() {
        return a.a(this);
    }
}
