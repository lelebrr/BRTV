package androidx.media3.exoplayer.rtsp;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import d7.d0;
import d7.h5;
import d7.y1;
import d7.z1;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class MediaDescription {
    public static final String MEDIA_TYPE_AUDIO = "audio";
    public static final String MEDIA_TYPE_VIDEO = "video";
    public static final String RTP_AVP_PROFILE = "RTP/AVP";
    public final z1 attributes;
    public final int bitrate;
    public final String connection;
    public final String key;
    public final String mediaTitle;
    public final String mediaType;
    public final int payloadType;
    public final int port;
    public final RtpMapAttribute rtpMapAttribute;
    public final String transportProtocol;

    /* compiled from: MyApplication */
    public static final class Builder {
        private static final String RTP_MAP_ATTR_AUDIO_FMT = "%d %s/%d/%d";
        private static final int RTP_STATIC_PAYLOAD_TYPE_L16_MONO = 11;
        private static final int RTP_STATIC_PAYLOAD_TYPE_L16_STEREO = 10;
        private static final int RTP_STATIC_PAYLOAD_TYPE_PCMA = 8;
        private static final int RTP_STATIC_PAYLOAD_TYPE_PCMU = 0;
        private final HashMap<String, String> attributes = new HashMap<>();
        private int bitrate = -1;
        private String connection;
        private String key;
        private String mediaTitle;
        private final String mediaType;
        private final int payloadType;
        private final int port;
        private final String transportProtocol;

        public Builder(String str, int i6, String str2, int i10) {
            this.mediaType = str;
            this.port = i6;
            this.transportProtocol = str2;
            this.payloadType = i10;
        }

        private static String constructAudioRtpMap(int i6, String str, int i10, int i11) {
            return Util.formatInvariant(RTP_MAP_ATTR_AUDIO_FMT, Integer.valueOf(i6), str, Integer.valueOf(i10), Integer.valueOf(i11));
        }

        private static String getRtpMapStringByPayloadType(int i6) {
            Assertions.checkArgument(i6 < 96);
            if (i6 == 0) {
                return constructAudioRtpMap(0, RtpPayloadFormat.RTP_MEDIA_PCMU, 8000, 1);
            }
            if (i6 == 8) {
                return constructAudioRtpMap(8, RtpPayloadFormat.RTP_MEDIA_PCMA, 8000, 1);
            }
            if (i6 == 10) {
                return constructAudioRtpMap(10, RtpPayloadFormat.RTP_MEDIA_PCM_L16, 44100, 2);
            }
            if (i6 == 11) {
                return constructAudioRtpMap(11, RtpPayloadFormat.RTP_MEDIA_PCM_L16, 44100, 1);
            }
            throw new IllegalStateException(a.e.n(i6, "Unsupported static paylod type "));
        }

        public Builder addAttribute(String str, String str2) {
            this.attributes.put(str, str2);
            return this;
        }

        public MediaDescription build() {
            try {
                return new MediaDescription(this, z1.b(this.attributes), this.attributes.containsKey(SessionDescription.ATTR_RTPMAP) ? RtpMapAttribute.parse((String) Util.castNonNull(this.attributes.get(SessionDescription.ATTR_RTPMAP))) : RtpMapAttribute.parse(getRtpMapStringByPayloadType(this.payloadType)));
            } catch (ParserException e5) {
                throw new IllegalStateException(e5);
            }
        }

        public Builder setBitrate(int i6) {
            this.bitrate = i6;
            return this;
        }

        public Builder setConnection(String str) {
            this.connection = str;
            return this;
        }

        public Builder setKey(String str) {
            this.key = str;
            return this;
        }

        public Builder setMediaTitle(String str) {
            this.mediaTitle = str;
            return this;
        }
    }

    /* compiled from: MyApplication */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface MediaType {
    }

    /* compiled from: MyApplication */
    public static final class RtpMapAttribute {
        public final int clockRate;
        public final int encodingParameters;
        public final String mediaEncoding;
        public final int payloadType;

        private RtpMapAttribute(int i6, String str, int i10, int i11) {
            this.payloadType = i6;
            this.mediaEncoding = str;
            this.clockRate = i10;
            this.encodingParameters = i11;
        }

        public static RtpMapAttribute parse(String str) throws ParserException {
            String[] strArrSplitAtFirst = Util.splitAtFirst(str, " ");
            Assertions.checkArgument(strArrSplitAtFirst.length == 2);
            int i6 = RtspMessageUtil.parseInt(strArrSplitAtFirst[0]);
            String[] strArrSplit = Util.split(strArrSplitAtFirst[1].trim(), "/");
            Assertions.checkArgument(strArrSplit.length >= 2);
            return new RtpMapAttribute(i6, strArrSplit[0], RtspMessageUtil.parseInt(strArrSplit[1]), strArrSplit.length == 3 ? RtspMessageUtil.parseInt(strArrSplit[2]) : -1);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || RtpMapAttribute.class != obj.getClass()) {
                return false;
            }
            RtpMapAttribute rtpMapAttribute = (RtpMapAttribute) obj;
            return this.payloadType == rtpMapAttribute.payloadType && this.mediaEncoding.equals(rtpMapAttribute.mediaEncoding) && this.clockRate == rtpMapAttribute.clockRate && this.encodingParameters == rtpMapAttribute.encodingParameters;
        }

        public int hashCode() {
            return ((a.e.h((217 + this.payloadType) * 31, 31, this.mediaEncoding) + this.clockRate) * 31) + this.encodingParameters;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || MediaDescription.class != obj.getClass()) {
            return false;
        }
        MediaDescription mediaDescription = (MediaDescription) obj;
        if (this.mediaType.equals(mediaDescription.mediaType) && this.port == mediaDescription.port && this.transportProtocol.equals(mediaDescription.transportProtocol) && this.payloadType == mediaDescription.payloadType && this.bitrate == mediaDescription.bitrate) {
            z1 z1Var = this.attributes;
            z1 z1Var2 = mediaDescription.attributes;
            z1Var.getClass();
            if (d0.i(z1Var, z1Var2) && this.rtpMapAttribute.equals(mediaDescription.rtpMapAttribute) && Objects.equals(this.mediaTitle, mediaDescription.mediaTitle) && Objects.equals(this.connection, mediaDescription.connection) && Objects.equals(this.key, mediaDescription.key)) {
                return true;
            }
        }
        return false;
    }

    public z1 getFmtpParametersAsMap() {
        String str = (String) this.attributes.get(SessionDescription.ATTR_FMTP);
        if (str == null) {
            return h5.f6165g;
        }
        String[] strArrSplitAtFirst = Util.splitAtFirst(str, " ");
        Assertions.checkArgument(strArrSplitAtFirst.length == 2, str);
        String[] strArrSplit = strArrSplitAtFirst[1].split(";\\s?", 0);
        y1 y1Var = new y1(4);
        for (String str2 : strArrSplit) {
            String[] strArrSplitAtFirst2 = Util.splitAtFirst(str2, "=");
            y1Var.b(strArrSplitAtFirst2[0], strArrSplitAtFirst2[1]);
        }
        return y1Var.a();
    }

    public int hashCode() {
        int iHashCode = (this.rtpMapAttribute.hashCode() + ((this.attributes.hashCode() + ((((a.e.h((a.e.h(217, 31, this.mediaType) + this.port) * 31, 31, this.transportProtocol) + this.payloadType) * 31) + this.bitrate) * 31)) * 31)) * 31;
        String str = this.mediaTitle;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.connection;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.key;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    private MediaDescription(Builder builder, z1 z1Var, RtpMapAttribute rtpMapAttribute) {
        this.mediaType = builder.mediaType;
        this.port = builder.port;
        this.transportProtocol = builder.transportProtocol;
        this.payloadType = builder.payloadType;
        this.mediaTitle = builder.mediaTitle;
        this.connection = builder.connection;
        this.bitrate = builder.bitrate;
        this.key = builder.key;
        this.attributes = z1Var;
        this.rtpMapAttribute = rtpMapAttribute;
    }
}
