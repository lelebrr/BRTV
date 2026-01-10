package androidx.media3.extractor.mp4;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class MimeTypeResolver {
    private MimeTypeResolver() {
    }

    public static String getContainerMimeType(Format format) {
        String str = format.sampleMimeType;
        return MimeTypes.isVideo(str) ? MimeTypes.VIDEO_MP4 : MimeTypes.isAudio(str) ? MimeTypes.AUDIO_MP4 : MimeTypes.isImage(str) ? Objects.equals(str, MimeTypes.IMAGE_HEIC) ? MimeTypes.IMAGE_HEIF : Objects.equals(str, MimeTypes.IMAGE_AVIF) ? MimeTypes.IMAGE_AVIF : MimeTypes.APPLICATION_MP4 : MimeTypes.APPLICATION_MP4;
    }

    public static String getContainerMimeType(List<TrackSampleTable> list) {
        Iterator<TrackSampleTable> it = list.iterator();
        boolean z7 = false;
        String str = null;
        while (it.hasNext()) {
            String str2 = it.next().track.format.sampleMimeType;
            if (MimeTypes.isVideo(str2)) {
                return MimeTypes.VIDEO_MP4;
            }
            if (MimeTypes.isAudio(str2)) {
                z7 = true;
            } else if (MimeTypes.isImage(str2)) {
                if (Objects.equals(str2, MimeTypes.IMAGE_HEIC)) {
                    str = MimeTypes.IMAGE_HEIF;
                } else if (Objects.equals(str2, MimeTypes.IMAGE_AVIF)) {
                    str = MimeTypes.IMAGE_AVIF;
                }
            }
        }
        if (z7) {
            return MimeTypes.AUDIO_MP4;
        }
        return str != null ? str : MimeTypes.APPLICATION_MP4;
    }
}
