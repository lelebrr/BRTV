package v4;

import android.os.SystemClock;
import android.util.Log;
import androidx.appcompat.app.t0;
import androidx.media3.common.PlaybackException;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLiveSeekableRange;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.internal.cast.u4;
import com.google.android.gms.internal.cast.x0;
import com.google.android.gms.internal.cast.x7;
import com.lzy.okgo.model.Progress;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import q4.z;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class l extends o {

    /* renamed from: w, reason: collision with root package name */
    public static final String f10679w;

    /* renamed from: e, reason: collision with root package name */
    public long f10680e;
    public MediaStatus f;

    /* renamed from: g, reason: collision with root package name */
    public Long f10681g;

    /* renamed from: h, reason: collision with root package name */
    public r4.n f10682h;

    /* renamed from: i, reason: collision with root package name */
    public int f10683i;

    /* renamed from: j, reason: collision with root package name */
    public final n f10684j;

    /* renamed from: k, reason: collision with root package name */
    public final n f10685k;

    /* renamed from: l, reason: collision with root package name */
    public final n f10686l;

    /* renamed from: m, reason: collision with root package name */
    public final n f10687m;

    /* renamed from: n, reason: collision with root package name */
    public final n f10688n;

    /* renamed from: o, reason: collision with root package name */
    public final n f10689o;

    /* renamed from: p, reason: collision with root package name */
    public final n f10690p;

    /* renamed from: q, reason: collision with root package name */
    public final n f10691q;

    /* renamed from: r, reason: collision with root package name */
    public final n f10692r;

    /* renamed from: s, reason: collision with root package name */
    public final n f10693s;

    /* renamed from: t, reason: collision with root package name */
    public final n f10694t;

    /* renamed from: u, reason: collision with root package name */
    public final n f10695u;

    /* renamed from: v, reason: collision with root package name */
    public final n f10696v;

    static {
        Pattern pattern = a.f10669a;
        f10679w = "urn:x-cast:com.google.cast.media";
    }

    public l() {
        super(f10679w);
        this.f10683i = -1;
        n nVar = new n(86400000L, "load");
        this.f10684j = nVar;
        n nVar2 = new n(86400000L, "pause");
        this.f10685k = nVar2;
        n nVar3 = new n(86400000L, "play");
        this.f10686l = nVar3;
        n nVar4 = new n(86400000L, "stop");
        n nVar5 = new n(Renderer.DEFAULT_DURATION_TO_PROGRESS_US, "seek");
        this.f10687m = nVar5;
        n nVar6 = new n(86400000L, "volume");
        this.f10688n = nVar6;
        n nVar7 = new n(86400000L, "mute");
        this.f10689o = nVar7;
        n nVar8 = new n(86400000L, Progress.STATUS);
        this.f10690p = nVar8;
        n nVar9 = new n(86400000L, "activeTracks");
        this.f10691q = nVar9;
        n nVar10 = new n(86400000L, "trackStyle");
        n nVar11 = new n(86400000L, "queueInsert");
        n nVar12 = new n(86400000L, "queueUpdate");
        this.f10692r = nVar12;
        n nVar13 = new n(86400000L, "queueRemove");
        n nVar14 = new n(86400000L, "queueReorder");
        n nVar15 = new n(86400000L, "queueFetchItemIds");
        this.f10693s = nVar15;
        n nVar16 = new n(86400000L, "queueFetchItemRange");
        this.f10695u = nVar16;
        this.f10694t = new n(86400000L, "queueFetchItems");
        n nVar17 = new n(86400000L, "setPlaybackRate");
        n nVar18 = new n(86400000L, "skipAd");
        this.f10696v = nVar18;
        a(nVar);
        a(nVar2);
        a(nVar3);
        a(nVar4);
        a(nVar5);
        a(nVar6);
        a(nVar7);
        a(nVar8);
        a(nVar9);
        a(nVar10);
        a(nVar11);
        a(nVar12);
        a(nVar13);
        a(nVar14);
        a(nVar15);
        a(nVar16);
        a(nVar16);
        a(nVar17);
        a(nVar18);
        g();
    }

    public static k f(JSONObject jSONObject) {
        MediaError.j(jSONObject);
        k kVar = new k();
        Pattern pattern = a.f10669a;
        if (jSONObject.has("customData")) {
            jSONObject.optJSONObject("customData");
        }
        return kVar;
    }

    public static int[] m(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        int[] iArr = new int[jSONArray.length()];
        for (int i6 = 0; i6 < jSONArray.length(); i6++) {
            iArr[i6] = jSONArray.getInt(i6);
        }
        return iArr;
    }

    public final void d(m mVar, int i6) {
        JSONObject jSONObject = new JSONObject();
        long jB = b();
        try {
            jSONObject.put("requestId", jB);
            jSONObject.put(SessionDescription.ATTR_TYPE, "QUEUE_UPDATE");
            jSONObject.put("mediaSessionId", p());
            if (i6 != 0) {
                jSONObject.put("jump", i6);
            }
            int i10 = this.f10683i;
            if (i10 != -1) {
                jSONObject.put("sequenceNumber", i10);
            }
        } catch (JSONException unused) {
        }
        c(jB, jSONObject.toString());
        this.f10692r.a(jB, new i(this, mVar, 1));
    }

    public final long e(long j10, double d, long j11) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f10680e;
        if (jElapsedRealtime < 0) {
            jElapsedRealtime = 0;
        }
        if (jElapsedRealtime == 0) {
            return j10;
        }
        long j12 = j10 + ((long) (jElapsedRealtime * d));
        if (j11 > 0 && j12 > j11) {
            return j11;
        }
        if (j12 >= 0) {
            return j12;
        }
        return 0L;
    }

    public final void g() {
        this.f10680e = 0L;
        this.f = null;
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            ((n) it.next()).f(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT);
        }
    }

    public final void h(JSONObject jSONObject, String str) {
        if (jSONObject.has("sequenceNumber")) {
            this.f10683i = jSONObject.optInt("sequenceNumber", -1);
        } else {
            b bVar = this.f10704a;
            Log.w(bVar.f10671a, bVar.d(str.concat(" message is missing a sequence number."), new Object[0]));
        }
    }

    public final void i() {
        r4.n nVar = this.f10682h;
        if (nVar != null) {
            r4.f fVar = nVar.f9566a;
            fVar.getClass();
            Iterator it = fVar.f9546g.iterator();
            while (it.hasNext()) {
                ((r4.d) it.next()).b();
            }
            Iterator it2 = fVar.f9547h.iterator();
            while (it2.hasNext()) {
                z zVar = (z) it2.next();
                switch (zVar.f9234a) {
                    case 2:
                        ((s4.k) zVar.f9235b).c();
                        break;
                }
            }
        }
    }

    public final void j() {
        r4.n nVar = this.f10682h;
        if (nVar != null) {
            r4.f fVar = nVar.f9566a;
            Iterator it = fVar.f9546g.iterator();
            while (it.hasNext()) {
                ((r4.d) it.next()).o();
            }
            Iterator it2 = fVar.f9547h.iterator();
            while (it2.hasNext()) {
                z zVar = (z) it2.next();
                switch (zVar.f9234a) {
                    case 2:
                        ((s4.k) zVar.f9235b).c();
                        break;
                }
            }
        }
    }

    public final void k() {
        r4.n nVar = this.f10682h;
        if (nVar != null) {
            r4.f fVar = nVar.f9566a;
            Iterator it = fVar.f9546g.iterator();
            while (it.hasNext()) {
                ((r4.d) it.next()).c();
            }
            Iterator it2 = fVar.f9547h.iterator();
            while (it2.hasNext()) {
                z zVar = (z) it2.next();
                switch (zVar.f9234a) {
                    case 2:
                        ((s4.k) zVar.f9235b).c();
                        break;
                }
            }
        }
    }

    public final void l() {
        r4.n nVar = this.f10682h;
        if (nVar != null) {
            r4.f fVar = nVar.f9566a;
            fVar.getClass();
            for (r4.p pVar : fVar.f9549j.values()) {
                if (fVar.i() && !pVar.d) {
                    r4.f fVar2 = pVar.f9572e;
                    x0 x0Var = fVar2.f9543b;
                    r4.o oVar = pVar.f9571c;
                    x0Var.removeCallbacks(oVar);
                    pVar.d = true;
                    fVar2.f9543b.postDelayed(oVar, pVar.f9570b);
                } else if (!fVar.i() && pVar.d) {
                    pVar.f9572e.f9543b.removeCallbacks(pVar.f9571c);
                    pVar.d = false;
                }
                if (pVar.d && (fVar.j() || fVar.C() || fVar.m() || fVar.l())) {
                    fVar.E(pVar.f9569a);
                }
            }
            Iterator it = fVar.f9546g.iterator();
            while (it.hasNext()) {
                ((r4.d) it.next()).e();
            }
            Iterator it2 = fVar.f9547h.iterator();
            while (it2.hasNext()) {
                z zVar = (z) it2.next();
                switch (zVar.f9234a) {
                    case 0:
                        q4.b bVar = (q4.b) zVar.f9235b;
                        r4.f fVar3 = bVar.f9218j;
                        MediaStatus mediaStatusF = fVar3 != null ? fVar3.f() : null;
                        u4 u4Var = bVar.f9220l;
                        if (u4Var != null && mediaStatusF != null) {
                            x7 x7VarL = u4Var.f4433a.l();
                            androidx.leanback.widget.o oVar2 = new androidx.leanback.widget.o(mediaStatusF);
                            t0 t0Var = new t0();
                            t0Var.f366a = oVar2.f1866a;
                            t0Var.f367b = System.currentTimeMillis();
                            t0 t0Var2 = x7VarL.f4480m;
                            if (t0Var2 == null || t0Var2.f366a != 2) {
                                t0Var.f368c = x7VarL.f4475h;
                                x7VarL.f4480m = t0Var;
                                break;
                            } else {
                                break;
                            }
                        } else {
                            break;
                        }
                        break;
                    case 1:
                        r4.a aVar = (r4.a) zVar.f9235b;
                        long jE = aVar.e();
                        if (jE != aVar.f9514b) {
                            aVar.f9514b = jE;
                            aVar.c();
                            if (aVar.f9514b != 0) {
                                aVar.d();
                                break;
                            } else {
                                break;
                            }
                        } else {
                            break;
                        }
                    default:
                        ((s4.k) zVar.f9235b).c();
                        break;
                }
            }
        }
    }

    public final void n() {
        List list = this.d;
        synchronized (list) {
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((n) it.next()).f(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        g();
    }

    public final long o() {
        MediaLiveSeekableRange mediaLiveSeekableRange;
        MediaStatus mediaStatus = this.f;
        MediaInfo mediaInfo = mediaStatus == null ? null : mediaStatus.f3738a;
        if (mediaInfo == null || mediaStatus == null) {
            return 0L;
        }
        Long l9 = this.f10681g;
        if (l9 == null) {
            if (this.f10680e == 0) {
                return 0L;
            }
            double d = mediaStatus.d;
            long j10 = mediaStatus.f3742g;
            return (d == 0.0d || mediaStatus.f3741e != 2) ? j10 : e(j10, d, mediaInfo.f3687e);
        }
        if (l9.equals(4294967296000L)) {
            MediaStatus mediaStatus2 = this.f;
            if (mediaStatus2.f3756u != null) {
                long jLongValue = l9.longValue();
                MediaStatus mediaStatus3 = this.f;
                if (mediaStatus3 != null && (mediaLiveSeekableRange = mediaStatus3.f3756u) != null) {
                    boolean z7 = mediaLiveSeekableRange.d;
                    long j11 = mediaLiveSeekableRange.f3702b;
                    jE = !z7 ? e(j11, 1.0d, -1L) : j11;
                }
                return Math.min(jLongValue, jE);
            }
            MediaInfo mediaInfo2 = mediaStatus2 == null ? null : mediaStatus2.f3738a;
            if ((mediaInfo2 != null ? mediaInfo2.f3687e : 0L) >= 0) {
                long jLongValue2 = l9.longValue();
                MediaStatus mediaStatus4 = this.f;
                MediaInfo mediaInfo3 = mediaStatus4 != null ? mediaStatus4.f3738a : null;
                return Math.min(jLongValue2, mediaInfo3 != null ? mediaInfo3.f3687e : 0L);
            }
        }
        return l9.longValue();
    }

    public final long p() throws j {
        MediaStatus mediaStatus = this.f;
        if (mediaStatus != null) {
            return mediaStatus.f3739b;
        }
        throw new j();
    }
}
