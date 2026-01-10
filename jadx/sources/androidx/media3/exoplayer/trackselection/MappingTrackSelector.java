package androidx.media3.exoplayer.trackselection;

import android.util.Pair;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.RendererConfiguration;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.u0;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public abstract class MappingTrackSelector extends TrackSelector {
    private MappedTrackInfo currentMappedTrackInfo;

    private static int findRenderer(RendererCapabilities[] rendererCapabilitiesArr, TrackGroup trackGroup, int[] iArr, boolean z7) throws ExoPlaybackException {
        int length = rendererCapabilitiesArr.length;
        int i6 = 0;
        boolean z10 = true;
        for (int i10 = 0; i10 < rendererCapabilitiesArr.length; i10++) {
            RendererCapabilities rendererCapabilities = rendererCapabilitiesArr[i10];
            int iMax = 0;
            for (int i11 = 0; i11 < trackGroup.length; i11++) {
                iMax = Math.max(iMax, u0.k(rendererCapabilities.supportsFormat(trackGroup.getFormat(i11))));
            }
            boolean z11 = iArr[i10] == 0;
            if (iMax > i6 || (iMax == i6 && z7 && !z10 && z11)) {
                length = i10;
                z10 = z11;
                i6 = iMax;
            }
        }
        return length;
    }

    private static int[] getFormatSupport(RendererCapabilities rendererCapabilities, TrackGroup trackGroup) throws ExoPlaybackException {
        int[] iArr = new int[trackGroup.length];
        for (int i6 = 0; i6 < trackGroup.length; i6++) {
            iArr[i6] = rendererCapabilities.supportsFormat(trackGroup.getFormat(i6));
        }
        return iArr;
    }

    private static int[] getMixedMimeTypeAdaptationSupports(RendererCapabilities[] rendererCapabilitiesArr) throws ExoPlaybackException {
        int length = rendererCapabilitiesArr.length;
        int[] iArr = new int[length];
        for (int i6 = 0; i6 < length; i6++) {
            iArr[i6] = rendererCapabilitiesArr[i6].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }

    public final MappedTrackInfo getCurrentMappedTrackInfo() {
        return this.currentMappedTrackInfo;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    public final void onSelectionActivated(Object obj) {
        this.currentMappedTrackInfo = (MappedTrackInfo) obj;
    }

    public abstract Pair<RendererConfiguration[], ExoTrackSelection[]> selectTracks(MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) throws ExoPlaybackException;

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    public final TrackSelectorResult selectTracks(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray trackGroupArray, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) throws ExoPlaybackException {
        int[] iArr = new int[rendererCapabilitiesArr.length + 1];
        int length = rendererCapabilitiesArr.length + 1;
        TrackGroup[][] trackGroupArr = new TrackGroup[length][];
        int[][][] iArr2 = new int[rendererCapabilitiesArr.length + 1][][];
        for (int i6 = 0; i6 < length; i6++) {
            int i10 = trackGroupArray.length;
            trackGroupArr[i6] = new TrackGroup[i10];
            iArr2[i6] = new int[i10][];
        }
        int[] mixedMimeTypeAdaptationSupports = getMixedMimeTypeAdaptationSupports(rendererCapabilitiesArr);
        for (int i11 = 0; i11 < trackGroupArray.length; i11++) {
            TrackGroup trackGroup = trackGroupArray.get(i11);
            int iFindRenderer = findRenderer(rendererCapabilitiesArr, trackGroup, iArr, trackGroup.type == 5);
            int[] formatSupport = iFindRenderer == rendererCapabilitiesArr.length ? new int[trackGroup.length] : getFormatSupport(rendererCapabilitiesArr[iFindRenderer], trackGroup);
            int i12 = iArr[iFindRenderer];
            trackGroupArr[iFindRenderer][i12] = trackGroup;
            iArr2[iFindRenderer][i12] = formatSupport;
            iArr[iFindRenderer] = i12 + 1;
        }
        TrackGroupArray[] trackGroupArrayArr = new TrackGroupArray[rendererCapabilitiesArr.length];
        String[] strArr = new String[rendererCapabilitiesArr.length];
        int[] iArr3 = new int[rendererCapabilitiesArr.length];
        for (int i13 = 0; i13 < rendererCapabilitiesArr.length; i13++) {
            int i14 = iArr[i13];
            trackGroupArrayArr[i13] = new TrackGroupArray((TrackGroup[]) Util.nullSafeArrayCopy(trackGroupArr[i13], i14));
            iArr2[i13] = (int[][]) Util.nullSafeArrayCopy(iArr2[i13], i14);
            strArr[i13] = rendererCapabilitiesArr[i13].getName();
            iArr3[i13] = rendererCapabilitiesArr[i13].getTrackType();
        }
        MappedTrackInfo mappedTrackInfo = new MappedTrackInfo(strArr, iArr3, trackGroupArrayArr, mixedMimeTypeAdaptationSupports, iArr2, new TrackGroupArray((TrackGroup[]) Util.nullSafeArrayCopy(trackGroupArr[rendererCapabilitiesArr.length], iArr[rendererCapabilitiesArr.length])));
        Pair<RendererConfiguration[], ExoTrackSelection[]> pairSelectTracks = selectTracks(mappedTrackInfo, iArr2, mixedMimeTypeAdaptationSupports, mediaPeriodId, timeline);
        return new TrackSelectorResult((RendererConfiguration[]) pairSelectTracks.first, (ExoTrackSelection[]) pairSelectTracks.second, TrackSelectionUtil.buildTracks(mappedTrackInfo, (TrackSelection[]) pairSelectTracks.second), mappedTrackInfo);
    }

    /* compiled from: MyApplication */
    public static final class MappedTrackInfo {
        public static final int RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS = 2;
        public static final int RENDERER_SUPPORT_NO_TRACKS = 0;
        public static final int RENDERER_SUPPORT_PLAYABLE_TRACKS = 3;
        public static final int RENDERER_SUPPORT_UNSUPPORTED_TRACKS = 1;
        private final int rendererCount;
        private final int[][][] rendererFormatSupports;
        private final int[] rendererMixedMimeTypeAdaptiveSupports;
        private final String[] rendererNames;
        private final TrackGroupArray[] rendererTrackGroups;
        private final int[] rendererTrackTypes;
        private final TrackGroupArray unmappedTrackGroups;

        /* compiled from: MyApplication */
        @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface RendererSupport {
        }

        public MappedTrackInfo(String[] strArr, int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.rendererNames = strArr;
            this.rendererTrackTypes = iArr;
            this.rendererTrackGroups = trackGroupArrayArr;
            this.rendererFormatSupports = iArr3;
            this.rendererMixedMimeTypeAdaptiveSupports = iArr2;
            this.unmappedTrackGroups = trackGroupArray;
            this.rendererCount = iArr.length;
        }

        public int getAdaptiveSupport(int i6, int i10, boolean z7) {
            int i11 = this.rendererTrackGroups[i6].get(i10).length;
            int[] iArr = new int[i11];
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                int trackSupport = getTrackSupport(i6, i10, i13);
                if (trackSupport == 4 || (z7 && trackSupport == 3)) {
                    iArr[i12] = i13;
                    i12++;
                }
            }
            return getAdaptiveSupport(i6, i10, Arrays.copyOf(iArr, i12));
        }

        public int getCapabilities(int i6, int i10, int i11) {
            return this.rendererFormatSupports[i6][i10][i11];
        }

        public int getRendererCount() {
            return this.rendererCount;
        }

        public String getRendererName(int i6) {
            return this.rendererNames[i6];
        }

        public int getRendererSupport(int i6) {
            int iMax = 0;
            for (int[] iArr : this.rendererFormatSupports[i6]) {
                for (int i10 : iArr) {
                    int iK = u0.k(i10);
                    int i11 = 1;
                    if (iK != 0 && iK != 1 && iK != 2) {
                        if (iK != 3) {
                            if (iK == 4) {
                                return 3;
                            }
                            throw new IllegalStateException();
                        }
                        i11 = 2;
                    }
                    iMax = Math.max(iMax, i11);
                }
            }
            return iMax;
        }

        public int getRendererType(int i6) {
            return this.rendererTrackTypes[i6];
        }

        public TrackGroupArray getTrackGroups(int i6) {
            return this.rendererTrackGroups[i6];
        }

        public int getTrackSupport(int i6, int i10, int i11) {
            return u0.k(getCapabilities(i6, i10, i11));
        }

        public int getTypeSupport(int i6) {
            int iMax = 0;
            for (int i10 = 0; i10 < this.rendererCount; i10++) {
                if (this.rendererTrackTypes[i10] == i6) {
                    iMax = Math.max(iMax, getRendererSupport(i10));
                }
            }
            return iMax;
        }

        public TrackGroupArray getUnmappedTrackGroups() {
            return this.unmappedTrackGroups;
        }

        public int getAdaptiveSupport(int i6, int i10, int[] iArr) {
            int i11 = 0;
            String str = null;
            boolean z7 = false;
            int i12 = 0;
            int iMin = 16;
            while (i11 < iArr.length) {
                String str2 = this.rendererTrackGroups[i6].get(i10).getFormat(iArr[i11]).sampleMimeType;
                int i13 = i12 + 1;
                if (i12 == 0) {
                    str = str2;
                } else {
                    z7 |= !Objects.equals(str, str2);
                }
                iMin = Math.min(iMin, u0.h(this.rendererFormatSupports[i6][i10][i11]));
                i11++;
                i12 = i13;
            }
            return z7 ? Math.min(iMin, this.rendererMixedMimeTypeAdaptiveSupports[i6]) : iMin;
        }
    }
}
