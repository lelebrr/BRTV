package androidx.media3.exoplayer.rtsp.reader;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.rtsp.RtpPayloadFormat;
import androidx.media3.extractor.ExtractorOutput;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface RtpPayloadReader {

    /* compiled from: MyApplication */
    public interface Factory {
        RtpPayloadReader createPayloadReader(RtpPayloadFormat rtpPayloadFormat);
    }

    void consume(ParsableByteArray parsableByteArray, long j10, int i6, boolean z7) throws ParserException;

    void createTracks(ExtractorOutput extractorOutput, int i6);

    void onReceivingFirstPacket(long j10, int i6);

    void seek(long j10, long j11);
}
