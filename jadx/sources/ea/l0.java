package ea;

import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.exoplayer.ExoPlaybackException;
import com.tencent.mars.xlog.Log;
import java.util.Arrays;
import java.util.List;
import org.bitspark.android.Constants$VIDEO_TYPE;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l0 implements Player.Listener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spark f6709a;

    public l0(Spark spark) {
        this.f6709a = spark;
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
        androidx.media3.common.k.a(this, audioAttributes);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onAudioSessionIdChanged(int i6) {
        androidx.media3.common.k.b(this, i6);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
        androidx.media3.common.k.c(this, commands);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onCues(CueGroup cueGroup) {
        androidx.media3.common.k.d(this, cueGroup);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
        androidx.media3.common.k.f(this, deviceInfo);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onDeviceVolumeChanged(int i6, boolean z7) {
        androidx.media3.common.k.g(this, i6, z7);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onEvents(Player player, Player.Events events) {
        androidx.media3.common.k.h(this, player, events);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onIsLoadingChanged(boolean z7) {
        androidx.media3.common.k.i(this, z7);
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onIsPlayingChanged(boolean z7) {
        String strS = a2.a.s("NO1a+WfB\n", "dr4XmA6v7Xc=\n");
        String str = a2.a.s("DMK/iG+hOGAbmr+2SrMRaQjDubZkgylkB921vDng\n", "abrQ2APAQQU=\n") + z7;
        boolean z10 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, str);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j10) {
        androidx.media3.common.k.l(this, j10);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i6) {
        androidx.media3.common.k.m(this, mediaItem, i6);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
        androidx.media3.common.k.n(this, mediaMetadata);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onMetadata(Metadata metadata) {
        androidx.media3.common.k.o(this, metadata);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onPlayWhenReadyChanged(boolean z7, int i6) {
        androidx.media3.common.k.p(this, z7, i6);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        androidx.media3.common.k.q(this, playbackParameters);
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onPlaybackStateChanged(int i6) {
        String strS = a2.a.s("dI689tt3\n", "Nt3xl7IZFX4=\n");
        String strJ = q.j("YUwq+3nYvG52FCrFRdWkcmFGFt90zaBIbFUrzHDd5St0WCTSd9imYFdAJN9wgw==\n", "BDRFqxW5xQs=\n", new StringBuilder(), i6);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strJ);
        Spark spark = this.f6709a;
        if (i6 == 4) {
            Log.i(a2.a.s("gmxlO1xZ\n", "wD8oWjU3B/4=\n"), a2.a.s("nNTmcoIsNXSLjOZMrSIhYZXJ/UuBI2w/14Kn\n", "+ayJIu5NTBE=\n"));
            spark.f8700i1 = System.currentTimeMillis();
            if (spark.V()) {
                spark.f8700i1 = System.currentTimeMillis();
            } else {
                Constants$VIDEO_TYPE constants$VIDEO_TYPE = spark.E1;
                if (constants$VIDEO_TYPE == Constants$VIDEO_TYPE.BSPALYBACK || constants$VIDEO_TYPE == Constants$VIDEO_TYPE.BSVOD || constants$VIDEO_TYPE == Constants$VIDEO_TYPE.STATIC) {
                    Log.i(a2.a.s("4VNDZKGO\n", "owAOBcjgTIk=\n"), a2.a.s("OshlPmQmsKAr3WklFByYnQzzVRptGpT5\n", "SbwKTjRK0dk=\n") + spark.E1);
                    spark.o0();
                    spark.J1.stop();
                    spark.j0();
                    if (Spark.D(spark, spark.Y)) {
                        return;
                    } else {
                        spark.F0(true);
                    }
                }
            }
        }
        Constants$VIDEO_TYPE constants$VIDEO_TYPE2 = spark.E1;
        if (constants$VIDEO_TYPE2 == Constants$VIDEO_TYPE.BSPALYBACK || constants$VIDEO_TYPE2 == Constants$VIDEO_TYPE.BSVOD || constants$VIDEO_TYPE2 == Constants$VIDEO_TYPE.STATIC) {
            spark.j0();
        }
        if (spark.J1.getPlayWhenReady()) {
            Log.i(a2.a.s("ZU1X9qH2\n", "Jx4al8iYYYk=\n"), a2.a.s("HrDdXGohb0giquxEbhtiWx+56FQxeA==\n", "cd6NMAtYCjo=\n") + spark.V() + a2.a.s("Gyljkg/K3jQbKQ==\n", "JhRerzL34wk=\n") + spark.G0);
            if (spark.V() || spark.G0 || Spark.f8666g2) {
                return;
            }
            spark.z0(5000);
        }
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onPlaybackSuppressionReasonChanged(int i6) {
        androidx.media3.common.k.s(this, i6);
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onPlayerError(PlaybackException playbackException) {
        int iLastIndexOf;
        String strS = a2.a.s("MIJmKOC4\n", "ctErSYnW0Ok=\n");
        String str = a2.a.s("pRSTqbxTIe2yTJOXgF458aUeuYuiXSqy\n", "wGz8+dAyWIg=\n") + playbackException;
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, str);
        Log.i(a2.a.s("QzVH15Ns\n", "AWYKtvoC8C4=\n"), a2.a.s("G8lJ3369gpkMkUnhQrCahRvDY/1gs4nG\n", "frEmjxLc+/w=\n") + Arrays.toString(playbackException.getStackTrace()));
        Spark spark = this.f6709a;
        o0 o0Var = spark.P1;
        long j10 = o0Var != null ? o0Var.f6719a : 0L;
        Log.i(a2.a.s("aSvSGjEd\n", "K3ife1hzyqQ=\n"), a2.a.s("i71ZJhijNJGc5VkYJK4sjYu3cwQGrT/OzugbSFSmLICP5VEZAPg=\n", "7sU2dnTCTfQ=\n") + j10);
        if (((ExoPlaybackException) playbackException).type == 1) {
            Spark.m0(1, a2.a.s("1hAp23ojaynmHDmJOSZgePtfOMw5KGo6rws0wClnfSv9Gj3EdA==\n", "j39cqVpHDl8=\n"));
            return;
        }
        String string = playbackException.toString();
        if (spark.E1 != Constants$VIDEO_TYPE.STATIC) {
            spark.f8700i1 = System.currentTimeMillis() + 4000;
            return;
        }
        int iLastIndexOf2 = string.lastIndexOf(58);
        if (iLastIndexOf2 != -1) {
            String strSubstring = string.substring(iLastIndexOf2 + 1);
            string = (strSubstring.length() >= 20 || (iLastIndexOf = string.substring(0, iLastIndexOf2).lastIndexOf(58)) == -1) ? strSubstring : string.substring(iLastIndexOf + 1).trim();
        }
        if (string.length() > 20) {
            string = string.substring(string.length() - 20);
        }
        Spark.m0(1, a2.a.s("yMwImvP+gw==\n", "jb569YHEo30=\n") + string);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
        androidx.media3.common.k.u(this, playbackException);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onPlayerStateChanged(boolean z7, int i6) {
        androidx.media3.common.k.v(this, z7, i6);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
        androidx.media3.common.k.w(this, mediaMetadata);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onPositionDiscontinuity(int i6) {
        androidx.media3.common.k.x(this, i6);
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onRenderedFirstFrame() {
        Spark spark = this.f6709a;
        o0 o0Var = spark.P1;
        long j10 = o0Var != null ? o0Var.f6719a : 0L;
        String strS = a2.a.s("RACIFYni\n", "BlPFdOCMjKc=\n");
        String str = a2.a.s("ZpsVmfcTzilxwxWnyRfZKGaRH63dG8U/d6UIqPYXl2Eu3Vqt+gbWbGSMDvM=\n", "A+N6yZtyt0w=\n") + j10;
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, str);
        spark.G0 = true;
        spark.f8700i1 = System.currentTimeMillis();
        System.currentTimeMillis();
        if (Spark.f8666g2) {
            spark.w0(0.9f);
        }
        spark.f8728w1.setVisibility(8);
        spark.i0();
        j jVar = spark.R1;
        if (jVar != null) {
            switch (jVar.f6700a) {
                case 0:
                    u uVar = Spark.X1;
                    Spark spark2 = jVar.f6701b;
                    spark2.O();
                    spark2.k0(jVar.f6702c, spark2.i0.B);
                    break;
                default:
                    u uVar2 = Spark.X1;
                    Spark spark3 = jVar.f6701b;
                    spark3.O();
                    spark3.k0(jVar.f6702c, spark3.i0.C);
                    break;
            }
            spark.R1 = null;
        }
        Log.i(a2.a.s("/ltiyGgu\n", "vAgvqQFA8ig=\n"), a2.a.s("ExlrS7ohqaUZEwFcpz6Yux0OXkv/PqaFGRlfXK00rJEVBUhNmSOpuhlXS0uwNrqyDwQbXrA/rQ==\n", "fHc7Od9RyNc=\n"));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onRepeatModeChanged(int i6) {
        String strS = a2.a.s("uE6i3xbw\n", "+h3vvn+eQMY=\n");
        String strJ = q.j("dDUPQyeRCAdjbQ99GZUBB3A5LXwvlTIKcCMHdi/K\n", "EU1gE0vwcWI=\n", new StringBuilder(), i6);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strJ);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onSeekBackIncrementChanged(long j10) {
        androidx.media3.common.k.B(this, j10);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onSeekForwardIncrementChanged(long j10) {
        androidx.media3.common.k.C(this, j10);
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onShuffleModeEnabledChanged(boolean z7) {
        String strS = a2.a.s("SsWcLNV3\n", "CJbRTbwZKcU=\n");
        String str = a2.a.s("a7D8BMZmMo586Pw6+W8+jWik9hnFYy6uYKnxOM9jCINvpvQxzj0=\n", "DsiTVKoHS+s=\n") + z7;
        boolean z10 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, str);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onSkipSilenceEnabledChanged(boolean z7) {
        androidx.media3.common.k.E(this, z7);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onSurfaceSizeChanged(int i6, int i10) {
        androidx.media3.common.k.F(this, i6, i10);
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onTimelineChanged(Timeline timeline, int i6) {
        String strS = a2.a.s("L/jy7k50\n", "bau/jycathQ=\n");
        String strJ = q.j("VK9SPanG65hD91IDkc7/mF2+UwiGz/OTVrJZTbfC845euQdN\n", "Mdc9bcWnkv0=\n", new StringBuilder(), i6);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strJ);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013c  */
    @Override // androidx.media3.common.Player.Listener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onTracksChanged(androidx.media3.common.Tracks r15) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 761
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ea.l0.onTracksChanged(androidx.media3.common.Tracks):void");
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
        androidx.media3.common.k.J(this, videoSize);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onVolumeChanged(float f) {
        androidx.media3.common.k.K(this, f);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onCues(List list) {
        androidx.media3.common.k.e(this, list);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i6) {
        androidx.media3.common.k.y(this, positionInfo, positionInfo2, i6);
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onLoadingChanged(boolean z7) {
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
    }
}
