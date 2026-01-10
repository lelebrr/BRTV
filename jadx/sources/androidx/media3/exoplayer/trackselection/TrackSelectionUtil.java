package androidx.media3.exoplayer.trackselection;

import android.os.SystemClock;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.MappingTrackSelector;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import d7.c5;
import d7.g1;
import d7.s1;
import d7.u1;
import java.util.Arrays;
import java.util.List;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class TrackSelectionUtil {

    /* compiled from: MyApplication */
    public interface AdaptiveTrackSelectionFactory {
        ExoTrackSelection createAdaptiveTrackSelection(ExoTrackSelection.Definition definition);
    }

    private TrackSelectionUtil() {
    }

    public static Tracks buildTracks(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, TrackSelection[] trackSelectionArr) {
        c5 c5VarR;
        List[] listArr = new List[trackSelectionArr.length];
        for (int i6 = 0; i6 < trackSelectionArr.length; i6++) {
            TrackSelection trackSelection = trackSelectionArr[i6];
            if (trackSelection != null) {
                c5VarR = u1.r(trackSelection);
            } else {
                g1 g1Var = u1.f6276b;
                c5VarR = c5.f6115e;
            }
            listArr[i6] = c5VarR;
        }
        return buildTracks(mappedTrackInfo, (List<? extends TrackSelection>[]) listArr);
    }

    public static LoadErrorHandlingPolicy.FallbackOptions createFallbackOptions(ExoTrackSelection exoTrackSelection) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int length = exoTrackSelection.length();
        int i6 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            if (exoTrackSelection.isTrackExcluded(i10, jElapsedRealtime)) {
                i6++;
            }
        }
        return new LoadErrorHandlingPolicy.FallbackOptions(1, 0, length, i6);
    }

    public static ExoTrackSelection[] createTrackSelectionsForDefinitions(ExoTrackSelection.Definition[] definitionArr, AdaptiveTrackSelectionFactory adaptiveTrackSelectionFactory) {
        ExoTrackSelection[] exoTrackSelectionArr = new ExoTrackSelection[definitionArr.length];
        boolean z7 = false;
        for (int i6 = 0; i6 < definitionArr.length; i6++) {
            ExoTrackSelection.Definition definition = definitionArr[i6];
            if (definition != null) {
                int[] iArr = definition.tracks;
                if (iArr.length <= 1 || z7) {
                    exoTrackSelectionArr[i6] = new FixedTrackSelection(definition.group, iArr[0], definition.type);
                } else {
                    exoTrackSelectionArr[i6] = adaptiveTrackSelectionFactory.createAdaptiveTrackSelection(definition);
                    z7 = true;
                }
            }
        }
        return exoTrackSelectionArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x000f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Point getMaxVideoSizeInViewport(boolean r3, int r4, int r5, int r6, int r7) {
        /*
            if (r3 == 0) goto Lf
            r3 = 0
            r0 = 1
            if (r6 <= r7) goto L8
            r1 = 1
            goto L9
        L8:
            r1 = 0
        L9:
            if (r4 <= r5) goto Lc
            r3 = 1
        Lc:
            if (r1 == r3) goto Lf
            goto L12
        Lf:
            r2 = r5
            r5 = r4
            r4 = r2
        L12:
            int r3 = r6 * r4
            int r0 = r7 * r5
            if (r3 < r0) goto L22
            android.graphics.Point r3 = new android.graphics.Point
            int r4 = androidx.media3.common.util.Util.ceilDivide(r0, r6)
            r3.<init>(r5, r4)
            return r3
        L22:
            android.graphics.Point r5 = new android.graphics.Point
            int r3 = androidx.media3.common.util.Util.ceilDivide(r3, r7)
            r5.<init>(r3, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.trackselection.TrackSelectionUtil.getMaxVideoSizeInViewport(boolean, int, int, int, int):android.graphics.Point");
    }

    @Deprecated
    public static DefaultTrackSelector.Parameters updateParametersWithOverride(DefaultTrackSelector.Parameters parameters, int i6, TrackGroupArray trackGroupArray, boolean z7, DefaultTrackSelector.SelectionOverride selectionOverride) {
        DefaultTrackSelector.Parameters.Builder rendererDisabled = parameters.buildUpon().clearSelectionOverrides(i6).setRendererDisabled(i6, z7);
        if (selectionOverride != null) {
            rendererDisabled.setSelectionOverride(i6, trackGroupArray, selectionOverride);
        }
        return rendererDisabled.build();
    }

    public static Tracks buildTracks(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, List<? extends TrackSelection>[] listArr) {
        boolean z7;
        s1 s1Var = new s1(4);
        for (int i6 = 0; i6 < mappedTrackInfo.getRendererCount(); i6++) {
            TrackGroupArray trackGroups = mappedTrackInfo.getTrackGroups(i6);
            List<? extends TrackSelection> list = listArr[i6];
            for (int i10 = 0; i10 < trackGroups.length; i10++) {
                TrackGroup trackGroup = trackGroups.get(i10);
                boolean z10 = mappedTrackInfo.getAdaptiveSupport(i6, i10, false) != 0;
                int i11 = trackGroup.length;
                int[] iArr = new int[i11];
                boolean[] zArr = new boolean[i11];
                for (int i12 = 0; i12 < trackGroup.length; i12++) {
                    iArr[i12] = mappedTrackInfo.getTrackSupport(i6, i10, i12);
                    int i13 = 0;
                    while (true) {
                        if (i13 >= list.size()) {
                            z7 = false;
                            break;
                        }
                        TrackSelection trackSelection = list.get(i13);
                        if (trackSelection.getTrackGroup().equals(trackGroup) && trackSelection.indexOf(i12) != -1) {
                            z7 = true;
                            break;
                        }
                        i13++;
                    }
                    zArr[i12] = z7;
                }
                s1Var.a(new Tracks.Group(trackGroup, z10, iArr, zArr));
            }
        }
        TrackGroupArray unmappedTrackGroups = mappedTrackInfo.getUnmappedTrackGroups();
        for (int i14 = 0; i14 < unmappedTrackGroups.length; i14++) {
            TrackGroup trackGroup2 = unmappedTrackGroups.get(i14);
            int[] iArr2 = new int[trackGroup2.length];
            Arrays.fill(iArr2, 0);
            s1Var.a(new Tracks.Group(trackGroup2, false, iArr2, new boolean[trackGroup2.length]));
        }
        return new Tracks(s1Var.g());
    }
}
