package androidx.media3.exoplayer.rtsp;

import androidx.media3.exoplayer.rtsp.RtpPacketReorderingQueue;
import java.util.Comparator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return RtpPacketReorderingQueue.lambda$new$0((RtpPacketReorderingQueue.RtpPacketContainer) obj, (RtpPacketReorderingQueue.RtpPacketContainer) obj2);
    }
}
