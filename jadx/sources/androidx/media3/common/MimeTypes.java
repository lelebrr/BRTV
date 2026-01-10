package androidx.media3.common;

import android.text.TextUtils;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ts.TsExtractor;
import com.alibaba.fastjson.asm.Opcodes;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class MimeTypes {
    public static final String APPLICATION_AIT = "application/vnd.dvb.ait";

    @UnstableApi
    public static final String APPLICATION_CAMERA_MOTION = "application/x-camera-motion";
    public static final String APPLICATION_CEA608 = "application/cea-608";
    public static final String APPLICATION_CEA708 = "application/cea-708";

    @UnstableApi
    public static final String APPLICATION_DEPTH_METADATA = "application/x-depth-metadata";
    public static final String APPLICATION_DVBSUBS = "application/dvbsubs";

    @UnstableApi
    public static final String APPLICATION_EMSG = "application/x-emsg";

    @UnstableApi
    public static final String APPLICATION_EXIF = "application/x-exif";

    @UnstableApi
    public static final String APPLICATION_EXTERNALLY_LOADED_IMAGE = "application/x-image-uri";

    @UnstableApi
    public static final String APPLICATION_ICY = "application/x-icy";
    public static final String APPLICATION_ID3 = "application/id3";
    public static final String APPLICATION_M3U8 = "application/x-mpegURL";
    public static final String APPLICATION_MATROSKA = "application/x-matroska";

    @UnstableApi
    public static final String APPLICATION_MEDIA3_CUES = "application/x-media3-cues";
    public static final String APPLICATION_MP4 = "application/mp4";
    public static final String APPLICATION_MP4CEA608 = "application/x-mp4-cea-608";
    public static final String APPLICATION_MP4VTT = "application/x-mp4-vtt";
    public static final String APPLICATION_MPD = "application/dash+xml";
    public static final String APPLICATION_PGS = "application/pgs";

    @Deprecated
    public static final String APPLICATION_RAWCC = "application/x-rawcc";
    public static final String APPLICATION_RTSP = "application/x-rtsp";

    @UnstableApi
    public static final String APPLICATION_SCTE35 = "application/x-scte35";
    public static final String APPLICATION_SDP = "application/sdp";
    public static final String APPLICATION_SS = "application/vnd.ms-sstr+xml";
    public static final String APPLICATION_SUBRIP = "application/x-subrip";
    public static final String APPLICATION_TTML = "application/ttml+xml";
    public static final String APPLICATION_TX3G = "application/x-quicktime-tx3g";
    public static final String APPLICATION_VOBSUB = "application/vobsub";
    public static final String APPLICATION_WEBM = "application/webm";
    public static final String AUDIO_AAC = "audio/mp4a-latm";
    public static final String AUDIO_AC3 = "audio/ac3";
    public static final String AUDIO_AC4 = "audio/ac4";
    public static final String AUDIO_ALAC = "audio/alac";
    public static final String AUDIO_ALAW = "audio/g711-alaw";
    public static final String AUDIO_AMR = "audio/amr";
    public static final String AUDIO_AMR_NB = "audio/3gpp";
    public static final String AUDIO_AMR_WB = "audio/amr-wb";
    public static final String AUDIO_DTS = "audio/vnd.dts";
    public static final String AUDIO_DTS_EXPRESS = "audio/vnd.dts.hd;profile=lbr";
    public static final String AUDIO_DTS_HD = "audio/vnd.dts.hd";

    @UnstableApi
    public static final String AUDIO_DTS_X = "audio/vnd.dts.uhd;profile=p2";

    @UnstableApi
    public static final String AUDIO_EXOPLAYER_MIDI = "audio/x-exoplayer-midi";
    public static final String AUDIO_E_AC3 = "audio/eac3";
    public static final String AUDIO_E_AC3_JOC = "audio/eac3-joc";
    public static final String AUDIO_FLAC = "audio/flac";

    @UnstableApi
    public static final String AUDIO_IAMF = "audio/iamf";

    @UnstableApi
    public static final String AUDIO_MATROSKA = "audio/x-matroska";
    public static final String AUDIO_MIDI = "audio/midi";
    public static final String AUDIO_MLAW = "audio/g711-mlaw";
    public static final String AUDIO_MP4 = "audio/mp4";
    public static final String AUDIO_MPEG = "audio/mpeg";
    public static final String AUDIO_MPEGH_MHA1 = "audio/mha1";
    public static final String AUDIO_MPEGH_MHM1 = "audio/mhm1";
    public static final String AUDIO_MPEG_L1 = "audio/mpeg-L1";
    public static final String AUDIO_MPEG_L2 = "audio/mpeg-L2";
    public static final String AUDIO_MSGSM = "audio/gsm";
    public static final String AUDIO_OGG = "audio/ogg";
    public static final String AUDIO_OPUS = "audio/opus";
    public static final String AUDIO_RAW = "audio/raw";
    public static final String AUDIO_TRUEHD = "audio/true-hd";

    @UnstableApi
    public static final String AUDIO_UNKNOWN = "audio/x-unknown";
    public static final String AUDIO_VORBIS = "audio/vorbis";
    public static final String AUDIO_WAV = "audio/wav";
    public static final String AUDIO_WEBM = "audio/webm";

    @UnstableApi
    public static final String BASE_TYPE_APPLICATION = "application";

    @UnstableApi
    public static final String BASE_TYPE_AUDIO = "audio";

    @UnstableApi
    public static final String BASE_TYPE_IMAGE = "image";

    @UnstableApi
    public static final String BASE_TYPE_TEXT = "text";

    @UnstableApi
    public static final String BASE_TYPE_VIDEO = "video";

    @UnstableApi
    public static final String CODEC_E_AC3_JOC = "ec+3";

    @UnstableApi
    public static final String IMAGE_AVIF = "image/avif";

    @UnstableApi
    public static final String IMAGE_BMP = "image/bmp";

    @UnstableApi
    public static final String IMAGE_HEIC = "image/heic";

    @UnstableApi
    public static final String IMAGE_HEIF = "image/heif";
    public static final String IMAGE_JPEG = "image/jpeg";

    @UnstableApi
    public static final String IMAGE_JPEG_R = "image/jpeg_r";

    @UnstableApi
    public static final String IMAGE_PNG = "image/png";

    @UnstableApi
    public static final String IMAGE_RAW = "image/raw";

    @UnstableApi
    public static final String IMAGE_WEBP = "image/webp";
    public static final String TEXT_SSA = "text/x-ssa";

    @UnstableApi
    public static final String TEXT_UNKNOWN = "text/x-unknown";
    public static final String TEXT_VTT = "text/vtt";

    @UnstableApi
    public static final String VIDEO_APV = "video/apv";
    public static final String VIDEO_AV1 = "video/av01";
    public static final String VIDEO_AVI = "video/x-msvideo";
    public static final String VIDEO_DIVX = "video/divx";
    public static final String VIDEO_DOLBY_VISION = "video/dolby-vision";

    @UnstableApi
    public static final String VIDEO_FLV = "video/x-flv";
    public static final String VIDEO_H263 = "video/3gpp";
    public static final String VIDEO_H264 = "video/avc";
    public static final String VIDEO_H265 = "video/hevc";

    @UnstableApi
    public static final String VIDEO_MATROSKA = "video/x-matroska";
    public static final String VIDEO_MJPEG = "video/mjpeg";
    public static final String VIDEO_MP2T = "video/mp2t";
    public static final String VIDEO_MP4 = "video/mp4";
    public static final String VIDEO_MP42 = "video/mp42";
    public static final String VIDEO_MP43 = "video/mp43";
    public static final String VIDEO_MP4V = "video/mp4v-es";
    public static final String VIDEO_MPEG = "video/mpeg";
    public static final String VIDEO_MPEG2 = "video/mpeg2";

    @UnstableApi
    public static final String VIDEO_MV_HEVC = "video/mv-hevc";
    public static final String VIDEO_OGG = "video/ogg";
    public static final String VIDEO_PS = "video/mp2p";

    @UnstableApi
    public static final String VIDEO_RAW = "video/raw";

    @UnstableApi
    public static final String VIDEO_UNKNOWN = "video/x-unknown";
    public static final String VIDEO_VC1 = "video/wvc1";

    @UnstableApi
    public static final String VIDEO_VP8 = "video/x-vnd.on2.vp8";

    @UnstableApi
    public static final String VIDEO_VP9 = "video/x-vnd.on2.vp9";
    public static final String VIDEO_WEBM = "video/webm";
    private static final ArrayList<CustomMimeType> customMimeTypes = new ArrayList<>();
    private static final Pattern MP4A_RFC_6381_CODEC_PATTERN = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    /* compiled from: MyApplication */
    public static final class CustomMimeType {
        public final String codecPrefix;
        public final String mimeType;
        public final int trackType;

        public CustomMimeType(String str, String str2, int i6) {
            this.mimeType = str;
            this.codecPrefix = str2;
            this.trackType = i6;
        }
    }

    /* compiled from: MyApplication */
    public static final class Mp4aObjectType {
        public final int audioObjectTypeIndication;
        public final int objectTypeIndication;

        public Mp4aObjectType(int i6, int i10) {
            this.objectTypeIndication = i6;
            this.audioObjectTypeIndication = i10;
        }

        public int getEncoding() {
            int i6 = this.audioObjectTypeIndication;
            if (i6 == 2) {
                return 10;
            }
            if (i6 == 5) {
                return 11;
            }
            if (i6 == 29) {
                return 12;
            }
            if (i6 == 42) {
                return 16;
            }
            if (i6 != 22) {
                return i6 != 23 ? 0 : 15;
            }
            return 1073741824;
        }
    }

    private MimeTypes() {
    }

    @UnstableApi
    public static boolean allSamplesAreSyncSamples(String str, String str2) {
        Mp4aObjectType objectTypeFromMp4aRFC6381CodecString;
        int encoding;
        if (str == null) {
            return false;
        }
        switch (str) {
            case "audio/mp4a-latm":
                if (str2 != null && (objectTypeFromMp4aRFC6381CodecString = getObjectTypeFromMp4aRFC6381CodecString(str2)) != null && (encoding = objectTypeFromMp4aRFC6381CodecString.getEncoding()) != 0 && encoding != 16) {
                }
                break;
        }
        return false;
    }

    @UnstableApi
    public static boolean containsCodecsCorrespondingToMimeType(String str, String str2) {
        return getCodecsCorrespondingToMimeType(str, str2) != null;
    }

    @UnstableApi
    public static String getAudioMediaMimeType(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : Util.splitCodecs(str)) {
            String mediaMimeType = getMediaMimeType(str2);
            if (mediaMimeType != null && isAudio(mediaMimeType)) {
                return mediaMimeType;
            }
        }
        return null;
    }

    @UnstableApi
    public static String getCodecsCorrespondingToMimeType(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        String[] strArrSplitCodecs = Util.splitCodecs(str);
        StringBuilder sb = new StringBuilder();
        for (String str3 : strArrSplitCodecs) {
            if (str2.equals(getMediaMimeType(str3))) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str3);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    private static String getCustomMimeTypeForCodec(String str) {
        int size = customMimeTypes.size();
        for (int i6 = 0; i6 < size; i6++) {
            CustomMimeType customMimeType = customMimeTypes.get(i6);
            if (str.startsWith(customMimeType.codecPrefix)) {
                return customMimeType.mimeType;
            }
        }
        return null;
    }

    @UnstableApi
    public static int getEncoding(String str, String str2) {
        Mp4aObjectType objectTypeFromMp4aRFC6381CodecString;
        str.getClass();
        switch (str) {
            case "audio/eac3-joc":
                return 18;
            case "audio/vnd.dts.hd;profile=lbr":
                return 8;
            case "audio/vnd.dts":
                return 7;
            case "audio/mp4a-latm":
                if (str2 == null || (objectTypeFromMp4aRFC6381CodecString = getObjectTypeFromMp4aRFC6381CodecString(str2)) == null) {
                    return 0;
                }
                return objectTypeFromMp4aRFC6381CodecString.getEncoding();
            case "audio/ac3":
                return 5;
            case "audio/ac4":
                return 17;
            case "audio/vnd.dts.uhd;profile=p2":
                return 30;
            case "audio/eac3":
                return 6;
            case "audio/mpeg":
                return 9;
            case "audio/opus":
                return 20;
            case "audio/vnd.dts.hd":
                return 8;
            case "audio/true-hd":
                return 14;
            default:
                return 0;
        }
    }

    @UnstableApi
    public static String getMediaMimeType(String str) {
        Mp4aObjectType objectTypeFromMp4aRFC6381CodecString;
        String mimeTypeFromMp4ObjectType = null;
        if (str == null) {
            return null;
        }
        String strV = b7.b.v(str.trim());
        if (strV.startsWith("avc1") || strV.startsWith("avc3")) {
            return VIDEO_H264;
        }
        if (strV.startsWith("hev1") || strV.startsWith("hvc1")) {
            return VIDEO_H265;
        }
        if (strV.startsWith("dvav") || strV.startsWith("dva1") || strV.startsWith("dvhe") || strV.startsWith("dvh1")) {
            return VIDEO_DOLBY_VISION;
        }
        if (strV.startsWith("av01")) {
            return VIDEO_AV1;
        }
        if (strV.startsWith("vp9") || strV.startsWith("vp09")) {
            return VIDEO_VP9;
        }
        if (strV.startsWith("vp8") || strV.startsWith("vp08")) {
            return VIDEO_VP8;
        }
        if (!strV.startsWith("mp4a")) {
            return strV.startsWith("mha1") ? AUDIO_MPEGH_MHA1 : strV.startsWith("mhm1") ? AUDIO_MPEGH_MHM1 : (strV.startsWith("ac-3") || strV.startsWith("dac3")) ? AUDIO_AC3 : (strV.startsWith("ec-3") || strV.startsWith("dec3")) ? AUDIO_E_AC3 : strV.startsWith(CODEC_E_AC3_JOC) ? AUDIO_E_AC3_JOC : (strV.startsWith("ac-4") || strV.startsWith("dac4")) ? AUDIO_AC4 : strV.startsWith("dtsc") ? AUDIO_DTS : strV.startsWith("dtse") ? AUDIO_DTS_EXPRESS : (strV.startsWith("dtsh") || strV.startsWith("dtsl")) ? AUDIO_DTS_HD : strV.startsWith("dtsx") ? AUDIO_DTS_X : strV.startsWith("opus") ? AUDIO_OPUS : strV.startsWith("vorbis") ? AUDIO_VORBIS : strV.startsWith("flac") ? AUDIO_FLAC : strV.startsWith("stpp") ? APPLICATION_TTML : strV.startsWith("wvtt") ? TEXT_VTT : strV.contains("cea708") ? APPLICATION_CEA708 : (strV.contains("eia608") || strV.contains("cea608")) ? APPLICATION_CEA608 : getCustomMimeTypeForCodec(strV);
        }
        if (strV.startsWith("mp4a.") && (objectTypeFromMp4aRFC6381CodecString = getObjectTypeFromMp4aRFC6381CodecString(strV)) != null) {
            mimeTypeFromMp4ObjectType = getMimeTypeFromMp4ObjectType(objectTypeFromMp4aRFC6381CodecString.objectTypeIndication);
        }
        return mimeTypeFromMp4ObjectType == null ? AUDIO_AAC : mimeTypeFromMp4ObjectType;
    }

    @UnstableApi
    public static String getMimeTypeFromMp4ObjectType(int i6) {
        if (i6 == 32) {
            return VIDEO_MP4V;
        }
        if (i6 == 33) {
            return VIDEO_H264;
        }
        if (i6 == 35) {
            return VIDEO_H265;
        }
        if (i6 == 64) {
            return AUDIO_AAC;
        }
        if (i6 == 163) {
            return VIDEO_VC1;
        }
        if (i6 == 177) {
            return VIDEO_VP9;
        }
        if (i6 == 221) {
            return AUDIO_VORBIS;
        }
        if (i6 == 165) {
            return AUDIO_AC3;
        }
        if (i6 == 166) {
            return AUDIO_E_AC3;
        }
        switch (i6) {
            case Opcodes.IADD /* 96 */:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
                return VIDEO_MPEG2;
            case 102:
            case 103:
            case 104:
                return AUDIO_AAC;
            case 105:
            case 107:
                return AUDIO_MPEG;
            case 106:
                return VIDEO_MPEG;
            case 108:
                return IMAGE_JPEG;
            default:
                switch (i6) {
                    case Opcodes.RET /* 169 */:
                    case TsExtractor.TS_STREAM_TYPE_AC4 /* 172 */:
                        return AUDIO_DTS;
                    case 170:
                    case 171:
                        return AUDIO_DTS_HD;
                    case 173:
                        return AUDIO_OPUS;
                    case 174:
                        return AUDIO_AC4;
                    default:
                        return null;
                }
        }
    }

    @UnstableApi
    public static Byte getMp4ObjectTypeFromMimeType(String str) {
        str.getClass();
        switch (str) {
            case "audio/vorbis":
                return (byte) -35;
            case "audio/mp4a-latm":
                return (byte) 64;
            case "video/mp4v-es":
                return (byte) 32;
            default:
                return null;
        }
    }

    public static Mp4aObjectType getObjectTypeFromMp4aRFC6381CodecString(String str) {
        Matcher matcher = MP4A_RFC_6381_CODEC_PATTERN.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String str2 = (String) Assertions.checkNotNull(matcher.group(1));
        String strGroup = matcher.group(2);
        try {
            return new Mp4aObjectType(Integer.parseInt(str2, 16), strGroup != null ? Integer.parseInt(strGroup) : 0);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @UnstableApi
    public static String getTextMediaMimeType(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : Util.splitCodecs(str)) {
            String mediaMimeType = getMediaMimeType(str2);
            if (mediaMimeType != null && isText(mediaMimeType)) {
                return mediaMimeType;
            }
        }
        return null;
    }

    @UnstableApi
    private static String getTopLevelType(String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, iIndexOf);
    }

    @UnstableApi
    public static int getTrackType(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (isAudio(str)) {
            return 1;
        }
        if (isVideo(str)) {
            return 2;
        }
        if (isText(str)) {
            return 3;
        }
        if (isImage(str)) {
            return 4;
        }
        if (APPLICATION_ID3.equals(str) || APPLICATION_EMSG.equals(str) || APPLICATION_SCTE35.equals(str) || APPLICATION_ICY.equals(str) || APPLICATION_AIT.equals(str)) {
            return 5;
        }
        if (APPLICATION_CAMERA_MOTION.equals(str)) {
            return 6;
        }
        return getTrackTypeForCustomMimeType(str);
    }

    private static int getTrackTypeForCustomMimeType(String str) {
        int size = customMimeTypes.size();
        for (int i6 = 0; i6 < size; i6++) {
            CustomMimeType customMimeType = customMimeTypes.get(i6);
            if (str.equals(customMimeType.mimeType)) {
                return customMimeType.trackType;
            }
        }
        return -1;
    }

    @UnstableApi
    public static int getTrackTypeOfCodec(String str) {
        return getTrackType(getMediaMimeType(str));
    }

    @UnstableApi
    public static String getVideoMediaMimeType(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : Util.splitCodecs(str)) {
            String mediaMimeType = getMediaMimeType(str2);
            if (mediaMimeType != null && isVideo(mediaMimeType)) {
                return mediaMimeType;
            }
        }
        return null;
    }

    @UnstableApi
    public static boolean isAudio(String str) {
        return "audio".equals(getTopLevelType(str));
    }

    @UnstableApi
    public static boolean isDolbyVisionCodec(String str, String str2) {
        if (str == null) {
            return false;
        }
        if (str.startsWith("dvhe") || str.startsWith("dvh1")) {
            return true;
        }
        if (str2 == null) {
            return false;
        }
        return (str2.startsWith("dvhe") && str.startsWith("hev1")) || (str2.startsWith("dvh1") && str.startsWith("hvc1")) || ((str2.startsWith("dvav") && str.startsWith("avc3")) || ((str2.startsWith("dva1") && str.startsWith("avc1")) || (str2.startsWith("dav1") && str.startsWith("av01"))));
    }

    @UnstableApi
    public static boolean isImage(String str) {
        return "image".equals(getTopLevelType(str)) || APPLICATION_EXTERNALLY_LOADED_IMAGE.equals(str);
    }

    @UnstableApi
    public static boolean isMatroska(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith(VIDEO_WEBM) || str.startsWith(AUDIO_WEBM) || str.startsWith(APPLICATION_WEBM) || str.startsWith(VIDEO_MATROSKA) || str.startsWith(AUDIO_MATROSKA) || str.startsWith(APPLICATION_MATROSKA);
    }

    @UnstableApi
    public static boolean isText(String str) {
        return "text".equals(getTopLevelType(str)) || APPLICATION_MEDIA3_CUES.equals(str) || APPLICATION_CEA608.equals(str) || APPLICATION_CEA708.equals(str) || APPLICATION_MP4CEA608.equals(str) || APPLICATION_SUBRIP.equals(str) || APPLICATION_TTML.equals(str) || APPLICATION_TX3G.equals(str) || APPLICATION_MP4VTT.equals(str) || APPLICATION_RAWCC.equals(str) || APPLICATION_VOBSUB.equals(str) || APPLICATION_PGS.equals(str) || APPLICATION_DVBSUBS.equals(str);
    }

    @UnstableApi
    public static boolean isVideo(String str) {
        return "video".equals(getTopLevelType(str));
    }

    @UnstableApi
    public static String normalizeMimeType(String str) {
        String strV;
        if (str == null) {
            return null;
        }
        strV = b7.b.v(str);
        strV.getClass();
        switch (strV) {
            case "video/x-mvhevc":
                return VIDEO_MV_HEVC;
            case "audio/x-flac":
                return AUDIO_FLAC;
            case "application/x-mpegurl":
                return APPLICATION_M3U8;
            case "audio/x-wav":
                return AUDIO_WAV;
            case "audio/mpeg-l1":
                return AUDIO_MPEG_L1;
            case "audio/mpeg-l2":
                return AUDIO_MPEG_L2;
            case "audio/mp3":
                return AUDIO_MPEG;
            default:
                return strV;
        }
    }

    @UnstableApi
    public static void registerCustomMimeType(String str, String str2, int i6) {
        CustomMimeType customMimeType = new CustomMimeType(str, str2, i6);
        int size = customMimeTypes.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                break;
            }
            ArrayList<CustomMimeType> arrayList = customMimeTypes;
            if (str.equals(arrayList.get(i10).mimeType)) {
                arrayList.remove(i10);
                break;
            }
            i10++;
        }
        customMimeTypes.add(customMimeType);
    }
}
