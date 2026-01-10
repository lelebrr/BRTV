package androidx.media3.exoplayer.rtsp;

import androidx.media3.datasource.DataSource;
import androidx.media3.exoplayer.rtsp.RtspMessageChannel;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
interface RtpDataChannel extends DataSource {

    /* compiled from: MyApplication */
    public interface Factory {
        RtpDataChannel createAndOpenDataChannel(int i6) throws IOException;

        Factory createFallbackDataChannelFactory();
    }

    RtspMessageChannel.InterleavedBinaryDataListener getInterleavedBinaryDataListener();

    int getLocalPort();

    String getTransport();

    boolean needsClosingOnLoadCompletion();
}
