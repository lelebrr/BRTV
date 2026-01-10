package androidx.media3.exoplayer.rtsp;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import d7.d0;
import d7.z1;
import java.util.Map;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class RtpPayloadFormat {
    public static final String RTP_MEDIA_AC3 = "AC3";
    public static final String RTP_MEDIA_AMR = "AMR";
    public static final String RTP_MEDIA_AMR_WB = "AMR-WB";
    public static final String RTP_MEDIA_H263_1998 = "H263-1998";
    public static final String RTP_MEDIA_H263_2000 = "H263-2000";
    public static final String RTP_MEDIA_H264 = "H264";
    public static final String RTP_MEDIA_H265 = "H265";
    public static final String RTP_MEDIA_MPEG4_GENERIC = "MPEG4-GENERIC";
    public static final String RTP_MEDIA_MPEG4_LATM_AUDIO = "MP4A-LATM";
    public static final String RTP_MEDIA_MPEG4_VIDEO = "MP4V-ES";
    public static final String RTP_MEDIA_OPUS = "OPUS";
    public static final String RTP_MEDIA_PCMA = "PCMA";
    public static final String RTP_MEDIA_PCMU = "PCMU";
    public static final String RTP_MEDIA_PCM_L16 = "L16";
    public static final String RTP_MEDIA_PCM_L8 = "L8";
    public static final String RTP_MEDIA_VP8 = "VP8";
    public static final String RTP_MEDIA_VP9 = "VP9";
    public final int clockRate;
    public final z1 fmtpParameters;
    public final Format format;
    public final String mediaEncoding;
    public final int rtpPayloadType;

    public RtpPayloadFormat(Format format, int i6, int i10, Map<String, String> map, String str) {
        this.rtpPayloadType = i6;
        this.clockRate = i10;
        this.format = format;
        this.fmtpParameters = z1.b(map);
        this.mediaEncoding = str;
    }

    public static String getMimeTypeFromRtpMediaType(String str) {
        String strX = b7.b.x(str);
        strX.getClass();
        switch (strX) {
            case "MPEG4-GENERIC":
            case "MP4A-LATM":
                return MimeTypes.AUDIO_AAC;
            case "L8":
            case "L16":
                return MimeTypes.AUDIO_RAW;
            case "AC3":
                return MimeTypes.AUDIO_AC3;
            case "AMR":
                return MimeTypes.AUDIO_AMR_NB;
            case "VP8":
                return MimeTypes.VIDEO_VP8;
            case "VP9":
                return MimeTypes.VIDEO_VP9;
            case "H264":
                return MimeTypes.VIDEO_H264;
            case "H265":
                return MimeTypes.VIDEO_H265;
            case "OPUS":
                return MimeTypes.AUDIO_OPUS;
            case "PCMA":
                return MimeTypes.AUDIO_ALAW;
            case "PCMU":
                return MimeTypes.AUDIO_MLAW;
            case "AMR-WB":
                return MimeTypes.AUDIO_AMR_WB;
            case "MP4V-ES":
                return MimeTypes.VIDEO_MP4V;
            case "H263-1998":
            case "H263-2000":
                return MimeTypes.VIDEO_H263;
            default:
                throw new IllegalArgumentException(str);
        }
    }

    public static int getRawPcmEncodingType(String str) {
        Assertions.checkArgument(str.equals(RTP_MEDIA_PCM_L8) || str.equals(RTP_MEDIA_PCM_L16));
        return str.equals(RTP_MEDIA_PCM_L8) ? 3 : 268435456;
    }

    public static boolean isFormatSupported(MediaDescription mediaDescription) {
        String strX = b7.b.x(mediaDescription.rtpMapAttribute.mediaEncoding);
        strX.getClass();
        switch (strX) {
            case "MPEG4-GENERIC":
            case "L8":
            case "AC3":
            case "AMR":
            case "L16":
            case "VP8":
            case "VP9":
            case "H264":
            case "H265":
            case "OPUS":
            case "PCMA":
            case "PCMU":
            case "MP4A-LATM":
            case "AMR-WB":
            case "MP4V-ES":
            case "H263-1998":
            case "H263-2000":
                return true;
            default:
                return false;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || RtpPayloadFormat.class != obj.getClass()) {
            return false;
        }
        RtpPayloadFormat rtpPayloadFormat = (RtpPayloadFormat) obj;
        if (this.rtpPayloadType == rtpPayloadFormat.rtpPayloadType && this.clockRate == rtpPayloadFormat.clockRate && this.format.equals(rtpPayloadFormat.format)) {
            z1 z1Var = this.fmtpParameters;
            z1 z1Var2 = rtpPayloadFormat.fmtpParameters;
            z1Var.getClass();
            if (d0.i(z1Var, z1Var2) && this.mediaEncoding.equals(rtpPayloadFormat.mediaEncoding)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.mediaEncoding.hashCode() + ((this.fmtpParameters.hashCode() + ((this.format.hashCode() + ((((217 + this.rtpPayloadType) * 31) + this.clockRate) * 31)) * 31)) * 31);
    }
}
