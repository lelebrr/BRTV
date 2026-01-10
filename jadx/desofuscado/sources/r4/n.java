package r4;

import android.os.Bundle;
import android.text.format.DateUtils;
import androidx.media3.exoplayer.Renderer;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLiveSeekableRange;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import java.text.DateFormat;
import java.util.Date;
import java.util.regex.Pattern;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public f f9566a;

    public static final String m(long j10) {
        return j10 >= 0 ? DateUtils.formatElapsedTime(j10 / 1000) : "-".concat(String.valueOf(DateUtils.formatElapsedTime((-j10) / 1000)));
    }

    public int a() {
        f fVar = this.f9566a;
        if (fVar != null && fVar.i()) {
            f fVar2 = this.f9566a;
            if (fVar2.k() || !fVar2.l()) {
                int iC = (int) (fVar2.c() - e());
                if (fVar2.D()) {
                    int iD = d();
                    int iC2 = c();
                    Pattern pattern = v4.a.f10669a;
                    iC = Math.min(Math.max(iC, iD), iC2);
                }
                int iB = b();
                Pattern pattern2 = v4.a.f10669a;
                return Math.min(Math.max(iC, 0), iB);
            }
        }
        return 0;
    }

    public int b() {
        MediaInfo mediaInfo;
        f fVar = this.f9566a;
        long jLongValue = 1;
        if (fVar != null && fVar.i()) {
            f fVar2 = this.f9566a;
            if (fVar2.k()) {
                Long lH = h();
                if (lH != null) {
                    jLongValue = lH.longValue();
                } else {
                    Long lF = f();
                    jLongValue = lF != null ? lF.longValue() : Math.max(fVar2.c(), 1L);
                }
            } else if (fVar2.l()) {
                MediaQueueItem mediaQueueItemD = fVar2.d();
                if (mediaQueueItemD != null && (mediaInfo = mediaQueueItemD.f3731a) != null) {
                    jLongValue = Math.max(mediaInfo.f3687e, 1L);
                }
            } else {
                jLongValue = Math.max(fVar2.h(), 1L);
            }
        }
        return Math.max((int) (jLongValue - e()), 1);
    }

    public int c() {
        f fVar = this.f9566a;
        if (fVar == null || !fVar.i() || !this.f9566a.k()) {
            return b();
        }
        if (!this.f9566a.D()) {
            return 0;
        }
        Long lF = f();
        b5.l.e(lF);
        long jLongValue = lF.longValue() - e();
        int iB = b();
        Pattern pattern = v4.a.f10669a;
        return Math.min(Math.max((int) jLongValue, 0), iB);
    }

    public int d() {
        f fVar = this.f9566a;
        if (fVar == null || !fVar.i() || !this.f9566a.k() || !this.f9566a.D()) {
            return 0;
        }
        Long lG = g();
        b5.l.e(lG);
        long jLongValue = lG.longValue() - e();
        int iB = b();
        Pattern pattern = v4.a.f10669a;
        return Math.min(Math.max((int) jLongValue, 0), iB);
    }

    public long e() {
        f fVar = this.f9566a;
        if (fVar == null || !fVar.i() || !this.f9566a.k()) {
            return 0L;
        }
        f fVar2 = this.f9566a;
        Long lI = i();
        if (lI != null) {
            return lI.longValue();
        }
        Long lG = g();
        return lG != null ? lG.longValue() : fVar2.c();
    }

    public Long f() {
        f fVar;
        MediaStatus mediaStatusF;
        long jE;
        MediaLiveSeekableRange mediaLiveSeekableRange;
        f fVar2 = this.f9566a;
        if (fVar2 == null || !fVar2.i() || !this.f9566a.k() || !this.f9566a.D() || (mediaStatusF = (fVar = this.f9566a).f()) == null || mediaStatusF.f3756u == null) {
            return null;
        }
        synchronized (fVar.f9542a) {
            b5.l.b("Must be called from the main thread.");
            v4.l lVar = fVar.f9544c;
            MediaStatus mediaStatus = lVar.f;
            jE = 0;
            if (mediaStatus != null && (mediaLiveSeekableRange = mediaStatus.f3756u) != null) {
                jE = mediaLiveSeekableRange.f3702b;
                if (!mediaLiveSeekableRange.d) {
                    jE = lVar.e(jE, 1.0d, -1L);
                }
            }
        }
        return Long.valueOf(jE);
    }

    public Long g() {
        f fVar;
        MediaStatus mediaStatusF;
        long jMin;
        MediaLiveSeekableRange mediaLiveSeekableRange;
        f fVar2 = this.f9566a;
        if (fVar2 == null || !fVar2.i() || !this.f9566a.k() || !this.f9566a.D() || (mediaStatusF = (fVar = this.f9566a).f()) == null || mediaStatusF.f3756u == null) {
            return null;
        }
        synchronized (fVar.f9542a) {
            b5.l.b("Must be called from the main thread.");
            v4.l lVar = fVar.f9544c;
            MediaStatus mediaStatus = lVar.f;
            jMin = 0;
            if (mediaStatus != null && (mediaLiveSeekableRange = mediaStatus.f3756u) != null) {
                jMin = mediaLiveSeekableRange.f3701a;
                if (mediaLiveSeekableRange.f3703c) {
                    jMin = lVar.e(jMin, 1.0d, -1L);
                }
                if (mediaLiveSeekableRange.d) {
                    jMin = Math.min(jMin, mediaLiveSeekableRange.f3702b);
                }
            }
        }
        return Long.valueOf(jMin);
    }

    public Long h() {
        Long lI;
        MediaInfo mediaInfoE;
        f fVar = this.f9566a;
        if (fVar != null && fVar.i() && this.f9566a.k()) {
            f fVar2 = this.f9566a;
            MediaMetadata mediaMetadata = (fVar2 == null || !fVar2.i() || (mediaInfoE = this.f9566a.e()) == null) ? null : mediaInfoE.d;
            if (mediaMetadata != null) {
                Bundle bundle = mediaMetadata.f3717b;
                if (bundle.containsKey("com.google.android.gms.cast.metadata.SECTION_DURATION") && (lI = i()) != null) {
                    long jLongValue = lI.longValue();
                    MediaMetadata.j(5, "com.google.android.gms.cast.metadata.SECTION_DURATION");
                    return Long.valueOf(bundle.getLong("com.google.android.gms.cast.metadata.SECTION_DURATION") + jLongValue);
                }
            }
        }
        return null;
    }

    public Long i() {
        MediaInfo mediaInfoE;
        f fVar = this.f9566a;
        if (fVar != null && fVar.i() && this.f9566a.k()) {
            f fVar2 = this.f9566a;
            MediaInfo mediaInfoE2 = fVar2.e();
            f fVar3 = this.f9566a;
            MediaMetadata mediaMetadata = (fVar3 == null || !fVar3.i() || (mediaInfoE = this.f9566a.e()) == null) ? null : mediaInfoE.d;
            if (mediaInfoE2 != null && mediaMetadata != null) {
                Bundle bundle = mediaMetadata.f3717b;
                if (bundle.containsKey("com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA") && (bundle.containsKey("com.google.android.gms.cast.metadata.SECTION_DURATION") || fVar2.D())) {
                    MediaMetadata.j(5, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA");
                    return Long.valueOf(bundle.getLong("com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"));
                }
            }
        }
        return null;
    }

    public Long j() {
        MediaInfo mediaInfoE;
        f fVar = this.f9566a;
        if (fVar == null || !fVar.i() || !this.f9566a.k() || (mediaInfoE = this.f9566a.e()) == null) {
            return null;
        }
        long j10 = mediaInfoE.f3694m;
        if (j10 != -1) {
            return Long.valueOf(j10);
        }
        return null;
    }

    public String k(long j10) {
        f fVar = this.f9566a;
        if (fVar == null || !fVar.i()) {
            return null;
        }
        f fVar2 = this.f9566a;
        int i6 = 1;
        if (fVar2 != null && fVar2.i() && this.f9566a.k() && j() != null) {
            i6 = 2;
        }
        if (i6 - 1 == 0) {
            return (fVar2.k() && i() == null) ? m(j10) : m(j10 - e());
        }
        Long lJ = j();
        b5.l.e(lJ);
        return DateFormat.getTimeInstance().format(new Date(lJ.longValue() + j10));
    }

    public boolean l(long j10) {
        f fVar = this.f9566a;
        if (fVar != null && fVar.i() && this.f9566a.D()) {
            return (e() + ((long) c())) - j10 < Renderer.DEFAULT_DURATION_TO_PROGRESS_US;
        }
        return false;
    }
}
