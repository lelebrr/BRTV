package androidx.media3.exoplayer.smoothstreaming.manifest;

import android.net.Uri;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.offline.FilterableManifest;
import androidx.media3.extractor.mp4.TrackEncryptionBox;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public class SsManifest implements FilterableManifest<SsManifest> {
    public static final int UNSET_LOOKAHEAD = -1;
    public final long durationUs;
    public final long dvrWindowLengthUs;
    public final boolean isLive;
    public final int lookAheadCount;
    public final int majorVersion;
    public final int minorVersion;
    public final ProtectionElement protectionElement;
    public final StreamElement[] streamElements;

    /* compiled from: MyApplication */
    public static class ProtectionElement {
        public final byte[] data;
        public final TrackEncryptionBox[] trackEncryptionBoxes;
        public final UUID uuid;

        public ProtectionElement(UUID uuid, byte[] bArr, TrackEncryptionBox[] trackEncryptionBoxArr) {
            this.uuid = uuid;
            this.data = bArr;
            this.trackEncryptionBoxes = trackEncryptionBoxArr;
        }
    }

    public SsManifest(int i6, int i10, long j10, long j11, long j12, int i11, boolean z7, ProtectionElement protectionElement, StreamElement[] streamElementArr) {
        this(i6, i10, j11 == 0 ? -9223372036854775807L : Util.scaleLargeTimestamp(j11, 1000000L, j10), j12 != 0 ? Util.scaleLargeTimestamp(j12, 1000000L, j10) : C.TIME_UNSET, i11, z7, protectionElement, streamElementArr);
    }

    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    public /* bridge */ /* synthetic */ SsManifest copy(List list) {
        return copy((List<StreamKey>) list);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    public final SsManifest copy(List<StreamKey> list) {
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        StreamElement streamElement = null;
        int i6 = 0;
        while (i6 < arrayList.size()) {
            StreamKey streamKey = (StreamKey) arrayList.get(i6);
            StreamElement streamElement2 = this.streamElements[streamKey.groupIndex];
            if (streamElement2 != streamElement && streamElement != null) {
                arrayList2.add(streamElement.copy((Format[]) arrayList3.toArray(new Format[0])));
                arrayList3.clear();
            }
            arrayList3.add(streamElement2.formats[streamKey.streamIndex]);
            i6++;
            streamElement = streamElement2;
        }
        if (streamElement != null) {
            arrayList2.add(streamElement.copy((Format[]) arrayList3.toArray(new Format[0])));
        }
        return new SsManifest(this.majorVersion, this.minorVersion, this.durationUs, this.dvrWindowLengthUs, this.lookAheadCount, this.isLive, this.protectionElement, (StreamElement[]) arrayList2.toArray(new StreamElement[0]));
    }

    /* compiled from: MyApplication */
    public static class StreamElement {
        private static final String URL_PLACEHOLDER_BITRATE_1 = "{bitrate}";
        private static final String URL_PLACEHOLDER_BITRATE_2 = "{Bitrate}";
        private static final String URL_PLACEHOLDER_START_TIME_1 = "{start time}";
        private static final String URL_PLACEHOLDER_START_TIME_2 = "{start_time}";
        private final String baseUri;
        public final int chunkCount;
        private final List<Long> chunkStartTimes;
        private final long[] chunkStartTimesUs;
        private final String chunkTemplate;
        public final int displayHeight;
        public final int displayWidth;
        public final Format[] formats;
        public final String language;
        private final long lastChunkDurationUs;
        public final int maxHeight;
        public final int maxWidth;
        public final String name;
        public final String subType;
        public final long timescale;
        public final int type;

        public StreamElement(String str, String str2, int i6, String str3, long j10, String str4, int i10, int i11, int i12, int i13, String str5, Format[] formatArr, List<Long> list, long j11) {
            this(str, str2, i6, str3, j10, str4, i10, i11, i12, i13, str5, formatArr, list, Util.scaleLargeTimestamps(list, 1000000L, j10), Util.scaleLargeTimestamp(j11, 1000000L, j10));
        }

        public Uri buildRequestUri(int i6, int i10) {
            Assertions.checkState(this.formats != null);
            Assertions.checkState(this.chunkStartTimes != null);
            Assertions.checkState(i10 < this.chunkStartTimes.size());
            String string = Integer.toString(this.formats[i6].bitrate);
            String string2 = this.chunkStartTimes.get(i10).toString();
            return UriUtil.resolveToUri(this.baseUri, this.chunkTemplate.replace(URL_PLACEHOLDER_BITRATE_1, string).replace(URL_PLACEHOLDER_BITRATE_2, string).replace(URL_PLACEHOLDER_START_TIME_1, string2).replace(URL_PLACEHOLDER_START_TIME_2, string2));
        }

        public StreamElement copy(Format[] formatArr) {
            return new StreamElement(this.baseUri, this.chunkTemplate, this.type, this.subType, this.timescale, this.name, this.maxWidth, this.maxHeight, this.displayWidth, this.displayHeight, this.language, formatArr, this.chunkStartTimes, this.chunkStartTimesUs, this.lastChunkDurationUs);
        }

        public long getChunkDurationUs(int i6) {
            if (i6 == this.chunkCount - 1) {
                return this.lastChunkDurationUs;
            }
            long[] jArr = this.chunkStartTimesUs;
            return jArr[i6 + 1] - jArr[i6];
        }

        public int getChunkIndex(long j10) {
            return Util.binarySearchFloor(this.chunkStartTimesUs, j10, true, true);
        }

        public long getStartTimeUs(int i6) {
            return this.chunkStartTimesUs[i6];
        }

        private StreamElement(String str, String str2, int i6, String str3, long j10, String str4, int i10, int i11, int i12, int i13, String str5, Format[] formatArr, List<Long> list, long[] jArr, long j11) {
            this.baseUri = str;
            this.chunkTemplate = str2;
            this.type = i6;
            this.subType = str3;
            this.timescale = j10;
            this.name = str4;
            this.maxWidth = i10;
            this.maxHeight = i11;
            this.displayWidth = i12;
            this.displayHeight = i13;
            this.language = str5;
            this.formats = formatArr;
            this.chunkStartTimes = list;
            this.chunkStartTimesUs = jArr;
            this.lastChunkDurationUs = j11;
            this.chunkCount = list.size();
        }
    }

    private SsManifest(int i6, int i10, long j10, long j11, int i11, boolean z7, ProtectionElement protectionElement, StreamElement[] streamElementArr) {
        this.majorVersion = i6;
        this.minorVersion = i10;
        this.durationUs = j10;
        this.dvrWindowLengthUs = j11;
        this.lookAheadCount = i11;
        this.isLive = z7;
        this.protectionElement = protectionElement;
        this.streamElements = streamElementArr;
    }
}
