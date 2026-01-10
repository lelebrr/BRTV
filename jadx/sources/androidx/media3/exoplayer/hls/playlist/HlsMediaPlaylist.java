package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import d7.c5;
import d7.d0;
import d7.g1;
import d7.u1;
import d7.z1;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class HlsMediaPlaylist extends HlsPlaylist {
    public static final int PLAYLIST_TYPE_EVENT = 2;
    public static final int PLAYLIST_TYPE_UNKNOWN = 0;
    public static final int PLAYLIST_TYPE_VOD = 1;
    public final int discontinuitySequence;
    public final long durationUs;
    public final boolean hasDiscontinuitySequence;
    public final boolean hasEndTag;
    public final boolean hasPositiveStartOffset;
    public final boolean hasProgramDateTime;
    public final u1 interstitials;
    public final long mediaSequence;
    public final long partTargetDurationUs;
    public final int playlistType;
    public final boolean preciseStart;
    public final DrmInitData protectionSchemes;
    public final Map<Uri, RenditionReport> renditionReports;
    public final List<Segment> segments;
    public final ServerControl serverControl;
    public final long startOffsetUs;
    public final long startTimeUs;
    public final long targetDurationUs;
    public final List<Part> trailingParts;
    public final int version;

    /* compiled from: MyApplication */
    public static final class Interstitial {
        public static final String CUE_TRIGGER_ONCE = "ONCE";
        public static final String CUE_TRIGGER_POST = "POST";
        public static final String CUE_TRIGGER_PRE = "PRE";
        public static final String NAVIGATION_RESTRICTION_JUMP = "JUMP";
        public static final String NAVIGATION_RESTRICTION_SKIP = "SKIP";
        public static final String SNAP_TYPE_IN = "IN";
        public static final String SNAP_TYPE_OUT = "OUT";
        public final Uri assetListUri;
        public final Uri assetUri;
        public final u1 clientDefinedAttributes;
        public final List<String> cue;
        public final long durationUs;
        public final long endDateUnixUs;
        public final boolean endOnNext;
        public final String id;
        public final long plannedDurationUs;
        public final long playoutLimitUs;
        public final u1 restrictions;
        public final long resumeOffsetUs;
        public final u1 snapTypes;
        public final long startDateUnixUs;

        /* compiled from: MyApplication */
        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface CueTriggerType {
        }

        /* compiled from: MyApplication */
        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface NavigationRestriction {
        }

        /* compiled from: MyApplication */
        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface SnapType {
        }

        public Interstitial(String str, Uri uri, Uri uri2, long j10, long j11, long j12, long j13, List<String> list, boolean z7, long j14, long j15, List<String> list2, List<String> list3, List<ClientDefinedAttribute> list4) {
            Assertions.checkArgument((uri == null || uri2 == null) && !(uri == null && uri2 == null));
            this.id = str;
            this.assetUri = uri;
            this.assetListUri = uri2;
            this.startDateUnixUs = j10;
            this.endDateUnixUs = j11;
            this.durationUs = j12;
            this.plannedDurationUs = j13;
            this.cue = list;
            this.endOnNext = z7;
            this.resumeOffsetUs = j14;
            this.playoutLimitUs = j15;
            this.snapTypes = u1.n(list2);
            this.restrictions = u1.n(list3);
            this.clientDefinedAttributes = u1.n(list4);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Interstitial)) {
                return false;
            }
            Interstitial interstitial = (Interstitial) obj;
            return this.startDateUnixUs == interstitial.startDateUnixUs && this.endDateUnixUs == interstitial.endDateUnixUs && this.durationUs == interstitial.durationUs && this.plannedDurationUs == interstitial.plannedDurationUs && this.endOnNext == interstitial.endOnNext && this.resumeOffsetUs == interstitial.resumeOffsetUs && this.playoutLimitUs == interstitial.playoutLimitUs && Objects.equals(this.id, interstitial.id) && Objects.equals(this.assetUri, interstitial.assetUri) && Objects.equals(this.assetListUri, interstitial.assetListUri) && Objects.equals(this.cue, interstitial.cue) && Objects.equals(this.snapTypes, interstitial.snapTypes) && Objects.equals(this.restrictions, interstitial.restrictions) && Objects.equals(this.clientDefinedAttributes, interstitial.clientDefinedAttributes);
        }

        public int hashCode() {
            return Objects.hash(this.id, this.assetUri, this.assetListUri, Long.valueOf(this.startDateUnixUs), Long.valueOf(this.endDateUnixUs), Long.valueOf(this.durationUs), Long.valueOf(this.plannedDurationUs), this.cue, Boolean.valueOf(this.endOnNext), Long.valueOf(this.resumeOffsetUs), Long.valueOf(this.playoutLimitUs), this.snapTypes, this.restrictions, this.clientDefinedAttributes);
        }
    }

    /* compiled from: MyApplication */
    public static final class Part extends SegmentBase {
        public final boolean isIndependent;
        public final boolean isPreload;

        public Part(String str, Segment segment, long j10, int i6, long j11, DrmInitData drmInitData, String str2, String str3, long j12, long j13, boolean z7, boolean z10, boolean z11) {
            super(str, segment, j10, i6, j11, drmInitData, str2, str3, j12, j13, z7);
            this.isIndependent = z10;
            this.isPreload = z11;
        }

        public Part copyWith(long j10, int i6) {
            return new Part(this.url, this.initializationSegment, this.durationUs, i6, j10, this.drmInitData, this.fullSegmentEncryptionKeyUri, this.encryptionIV, this.byteRangeOffset, this.byteRangeLength, this.hasGapTag, this.isIndependent, this.isPreload);
        }
    }

    /* compiled from: MyApplication */
    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlaylistType {
    }

    /* compiled from: MyApplication */
    public static final class RenditionReport {
        public final long lastMediaSequence;
        public final int lastPartIndex;
        public final Uri playlistUri;

        public RenditionReport(Uri uri, long j10, int i6) {
            this.playlistUri = uri;
            this.lastMediaSequence = j10;
            this.lastPartIndex = i6;
        }
    }

    /* compiled from: MyApplication */
    public static class SegmentBase implements Comparable<Long> {
        public final long byteRangeLength;
        public final long byteRangeOffset;
        public final DrmInitData drmInitData;
        public final long durationUs;
        public final String encryptionIV;
        public final String fullSegmentEncryptionKeyUri;
        public final boolean hasGapTag;
        public final Segment initializationSegment;
        public final int relativeDiscontinuitySequence;
        public final long relativeStartTimeUs;
        public final String url;

        private SegmentBase(String str, Segment segment, long j10, int i6, long j11, DrmInitData drmInitData, String str2, String str3, long j12, long j13, boolean z7) {
            this.url = str;
            this.initializationSegment = segment;
            this.durationUs = j10;
            this.relativeDiscontinuitySequence = i6;
            this.relativeStartTimeUs = j11;
            this.drmInitData = drmInitData;
            this.fullSegmentEncryptionKeyUri = str2;
            this.encryptionIV = str3;
            this.byteRangeOffset = j12;
            this.byteRangeLength = j13;
            this.hasGapTag = z7;
        }

        @Override // java.lang.Comparable
        public int compareTo(Long l9) {
            if (this.relativeStartTimeUs > l9.longValue()) {
                return 1;
            }
            return this.relativeStartTimeUs < l9.longValue() ? -1 : 0;
        }
    }

    /* compiled from: MyApplication */
    public static final class ServerControl {
        public final boolean canBlockReload;
        public final boolean canSkipDateRanges;
        public final long holdBackUs;
        public final long partHoldBackUs;
        public final long skipUntilUs;

        public ServerControl(long j10, boolean z7, long j11, long j12, boolean z10) {
            this.skipUntilUs = j10;
            this.canSkipDateRanges = z7;
            this.holdBackUs = j11;
            this.partHoldBackUs = j12;
            this.canBlockReload = z10;
        }
    }

    public HlsMediaPlaylist(int i6, String str, List<String> list, long j10, boolean z7, long j11, boolean z10, int i10, long j12, int i11, long j13, long j14, boolean z11, boolean z12, boolean z13, DrmInitData drmInitData, List<Segment> list2, List<Part> list3, ServerControl serverControl, Map<Uri, RenditionReport> map, List<Interstitial> list4) {
        super(str, list, z11);
        this.playlistType = i6;
        this.startTimeUs = j11;
        this.preciseStart = z7;
        this.hasDiscontinuitySequence = z10;
        this.discontinuitySequence = i10;
        this.mediaSequence = j12;
        this.version = i11;
        this.targetDurationUs = j13;
        this.partTargetDurationUs = j14;
        this.hasEndTag = z12;
        this.hasProgramDateTime = z13;
        this.protectionSchemes = drmInitData;
        this.segments = u1.n(list2);
        this.trailingParts = u1.n(list3);
        this.renditionReports = z1.b(map);
        this.interstitials = u1.n(list4);
        if (!list3.isEmpty()) {
            Part part = (Part) d0.n(list3);
            this.durationUs = part.relativeStartTimeUs + part.durationUs;
        } else if (list2.isEmpty()) {
            this.durationUs = 0L;
        } else {
            Segment segment = (Segment) d0.n(list2);
            this.durationUs = segment.relativeStartTimeUs + segment.durationUs;
        }
        this.startOffsetUs = j10 != C.TIME_UNSET ? j10 >= 0 ? Math.min(this.durationUs, j10) : Math.max(0L, this.durationUs + j10) : C.TIME_UNSET;
        this.hasPositiveStartOffset = j10 >= 0;
        this.serverControl = serverControl;
    }

    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    public HlsPlaylist copy(List<StreamKey> list) {
        return this;
    }

    public HlsMediaPlaylist copyWith(long j10, int i6) {
        return new HlsMediaPlaylist(this.playlistType, this.baseUri, this.tags, this.startOffsetUs, this.preciseStart, j10, true, i6, this.mediaSequence, this.version, this.targetDurationUs, this.partTargetDurationUs, this.hasIndependentSegments, this.hasEndTag, this.hasProgramDateTime, this.protectionSchemes, this.segments, this.trailingParts, this.serverControl, this.renditionReports, this.interstitials);
    }

    public HlsMediaPlaylist copyWithEndTag() {
        return this.hasEndTag ? this : new HlsMediaPlaylist(this.playlistType, this.baseUri, this.tags, this.startOffsetUs, this.preciseStart, this.startTimeUs, this.hasDiscontinuitySequence, this.discontinuitySequence, this.mediaSequence, this.version, this.targetDurationUs, this.partTargetDurationUs, this.hasIndependentSegments, true, this.hasProgramDateTime, this.protectionSchemes, this.segments, this.trailingParts, this.serverControl, this.renditionReports, this.interstitials);
    }

    public long getEndTimeUs() {
        return this.startTimeUs + this.durationUs;
    }

    public boolean isNewerThan(HlsMediaPlaylist hlsMediaPlaylist) {
        if (hlsMediaPlaylist == null) {
            return true;
        }
        long j10 = this.mediaSequence;
        long j11 = hlsMediaPlaylist.mediaSequence;
        if (j10 > j11) {
            return true;
        }
        if (j10 < j11) {
            return false;
        }
        int size = this.segments.size() - hlsMediaPlaylist.segments.size();
        if (size != 0) {
            return size > 0;
        }
        int size2 = this.trailingParts.size();
        int size3 = hlsMediaPlaylist.trailingParts.size();
        if (size2 <= size3) {
            return size2 == size3 && this.hasEndTag && !hlsMediaPlaylist.hasEndTag;
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    /* renamed from: copy, reason: avoid collision after fix types in other method */
    public /* bridge */ /* synthetic */ HlsPlaylist copy2(List list) {
        return copy((List<StreamKey>) list);
    }

    /* compiled from: MyApplication */
    public static final class Segment extends SegmentBase {
        public final List<Part> parts;
        public final String title;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Segment(String str, long j10, long j11, String str2, String str3) {
            this(str, null, "", 0L, -1, C.TIME_UNSET, null, str2, str3, j10, j11, false, c5.f6115e);
            g1 g1Var = u1.f6276b;
        }

        public Segment copyWith(long j10, int i6) {
            ArrayList arrayList = new ArrayList();
            long j11 = j10;
            for (int i10 = 0; i10 < this.parts.size(); i10++) {
                Part part = this.parts.get(i10);
                arrayList.add(part.copyWith(j11, i6));
                j11 += part.durationUs;
            }
            return new Segment(this.url, this.initializationSegment, this.title, this.durationUs, i6, j10, this.drmInitData, this.fullSegmentEncryptionKeyUri, this.encryptionIV, this.byteRangeOffset, this.byteRangeLength, this.hasGapTag, arrayList);
        }

        public Segment(String str, Segment segment, String str2, long j10, int i6, long j11, DrmInitData drmInitData, String str3, String str4, long j12, long j13, boolean z7, List<Part> list) {
            super(str, segment, j10, i6, j11, drmInitData, str3, str4, j12, j13, z7);
            this.title = str2;
            this.parts = u1.n(list);
        }
    }

    /* compiled from: MyApplication */
    public static class ClientDefinedAttribute {
        public static final int TYPE_DOUBLE = 2;
        public static final int TYPE_HEX_TEXT = 1;
        public static final int TYPE_TEXT = 0;
        private final double doubleValue;
        public final String name;
        private final String textValue;
        public final int type;

        /* compiled from: MyApplication */
        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Type {
        }

        public ClientDefinedAttribute(String str, double d) {
            this.name = str;
            this.type = 2;
            this.doubleValue = d;
            this.textValue = null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClientDefinedAttribute)) {
                return false;
            }
            ClientDefinedAttribute clientDefinedAttribute = (ClientDefinedAttribute) obj;
            return this.type == clientDefinedAttribute.type && Double.compare(this.doubleValue, clientDefinedAttribute.doubleValue) == 0 && Objects.equals(this.name, clientDefinedAttribute.name) && Objects.equals(this.textValue, clientDefinedAttribute.textValue);
        }

        public double getDoubleValue() {
            Assertions.checkState(this.type == 2);
            return this.doubleValue;
        }

        public String getTextValue() {
            Assertions.checkState(this.type != 2);
            return (String) Assertions.checkNotNull(this.textValue);
        }

        public int hashCode() {
            return Objects.hash(this.name, Integer.valueOf(this.type), Double.valueOf(this.doubleValue), this.textValue);
        }

        public ClientDefinedAttribute(String str, String str2, int i6) {
            boolean z7 = true;
            if (i6 == 1 && !str2.startsWith("0x") && !str2.startsWith("0X")) {
                z7 = false;
            }
            Assertions.checkState(z7);
            this.name = str;
            this.type = i6;
            this.textValue = str2;
            this.doubleValue = 0.0d;
        }
    }
}
