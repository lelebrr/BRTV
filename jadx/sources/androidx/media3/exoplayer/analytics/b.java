package androidx.media3.exoplayer.analytics;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import androidx.fragment.app.j0;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.FlagSet;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.alibaba.fastjson.JSONReader;
import com.lzy.okgo.cookie.SerializableCookie;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import ka.i0;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.HistoryBean;
import org.bitspark.android.beans.VodMenu;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements ListenerSet.Event, ListenerSet.IterationFinishedEvent, j4.b, i4.e, i8.b, l8.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2124a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2125b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2126c;

    public /* synthetic */ b(Object obj, int i6, Object obj2) {
        this.f2124a = i6;
        this.f2125b = obj;
        this.f2126c = obj2;
    }

    @Override // i8.b
    public void a(p8.b bVar) {
        ka.c cVar = (ka.c) this.f2125b;
        cVar.getClass();
        a2.a.s("ixZg+fTea72w\n", "yUUokIeqBM8=\n");
        a2.a.s("dMFoSsNSsbRuxXdRw02HkmfKOVDIcrCUZcFqTJwB\n", "BqQZP6Yhxfc=\n");
        String strS = a2.a.s("Qw==\n", "GLhc+RxYjSk=\n");
        String str = (String) this.f2126c;
        if (str.startsWith(strS)) {
            String strS2 = a2.a.s("EwMEZGuqmQAo\n", "UVBMDRje9nI=\n");
            String strS3 = a2.a.s("gXqYnUcPZy2dLusAm/jnxXDzUWzC9K24e6QsU6CDvtIHiEsAgu1BNo96pY1Iia3nBqVq\n", "7hTL6CRsAl4=\n");
            boolean z7 = org.bitspark.android.utils.m.f8784b;
            Log.i(strS2, strS3);
            return;
        }
        if (str.startsWith(a2.a.s("yQ==\n", "sntP1Xzl2rI=\n"))) {
            try {
                ChannelBean channelBean = (ChannelBean) new JSONReader(new StringReader(str)).readObject(ChannelBean.class);
                if (channelBean.getSources() == null || channelBean.getSources().isEmpty()) {
                    ka.e.f7771l0.post(new a.f(20, cVar));
                    cVar.f7761b.f7777g0.f10266v = false;
                } else {
                    String strS4 = a2.a.s("roU+g/6KmGiV\n", "7NZ26o3+9xo=\n");
                    String str2 = a2.a.s("35RjZtfklWvDwBA=\n", "sPowE7SH8Bg=\n") + channelBean.getSources().size();
                    boolean z10 = org.bitspark.android.utils.m.f8784b;
                    Log.i(strS4, str2);
                    bVar.c(channelBean);
                }
            } catch (Exception e5) {
                throw new RuntimeException(e5);
            }
        }
    }

    @Override // l8.a
    public void accept(Object obj) throws NumberFormatException {
        ChannelBean channelBean = (ChannelBean) obj;
        ka.e eVar = ((ka.c) this.f2125b).f7761b;
        eVar.W.setVisibility(8);
        eVar.i0.setVisibility(0);
        String strS = ((HistoryBean) this.f2126c).subId;
        if (TextUtils.isEmpty(strS)) {
            strS = a2.a.s("+9A=\n", "1uH+Hx3wzzg=\n");
        }
        org.bitspark.android.utils.o oVar = org.bitspark.android.utils.o.f;
        int i6 = Integer.parseInt(strS);
        String strS2 = a2.a.s("3KkLWK/gCg==\n", "tMB4LMCSc8U=\n");
        oVar.f8789b.j();
        ta.a aVar = oVar.f8789b;
        aVar.f10261q = channelBean;
        aVar.f10259o = strS2;
        aVar.f10270z.clear();
        aVar.A.clear();
        boolean zIsEmpty = aVar.f10261q.getSources().isEmpty();
        ArrayList arrayList = aVar.A;
        boolean z7 = true;
        if (!zIsEmpty) {
            if (aVar.f10261q.getSeasons() != 1) {
                aVar.c();
                int i10 = 0;
                while (i10 < aVar.f10261q.getSeasons()) {
                    int i11 = i10 + 1;
                    List<ChannelBean.SourcesBean> seasonSources = aVar.f10261q.getSeasonSources(i11);
                    int i12 = 0;
                    while (true) {
                        if (i12 >= seasonSources.size()) {
                            break;
                        }
                        if (i6 == seasonSources.get(i12).getId()) {
                            aVar.f10263s = i10;
                            aVar.m(i10);
                            aVar.o(i12);
                            break;
                        }
                        i12++;
                    }
                    i10 = i11;
                }
            } else {
                arrayList.addAll(aVar.f10261q.getSources());
                if (i6 == -1) {
                    aVar.f10263s = 0;
                    aVar.o(0);
                } else {
                    int i13 = 0;
                    while (true) {
                        if (i13 >= aVar.f10261q.getSources().size()) {
                            break;
                        }
                        if (i6 == aVar.f10261q.getSources().get(i13).getId()) {
                            aVar.f10263s = 0;
                            aVar.o(i13);
                            break;
                        }
                        i13++;
                    }
                }
            }
        }
        VodMenu vodMenu = (VodMenu) aVar.F.get(0);
        if (aVar.f10270z.size() <= 1 && arrayList.size() <= 1) {
            z7 = false;
        }
        vodMenu.setEnable(z7);
        oVar.f8789b.n();
        i0 i0VarA = org.bitspark.android.utils.o.f.a(eVar, eVar.i0, eVar.Z, eVar.W);
        j0 j0VarI = eVar.i();
        j0VarI.getClass();
        androidx.fragment.app.a aVar2 = new androidx.fragment.app.a(j0VarI);
        aVar2.i(R.id.vod_detail_container, i0VarA);
        aVar2.c();
        aVar2.e(false);
        Spark.Y1.d(channelBean);
    }

    @Override // i4.e
    public Object apply(Object obj) {
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        i4.g gVar = (i4.g) this.f2125b;
        gVar.getClass();
        ArrayList arrayList = new ArrayList();
        a4.j jVar = (a4.j) this.f2126c;
        Long lB = i4.g.b(sQLiteDatabase, jVar);
        if (lB != null) {
            i4.g.g(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{lB.toString()}, null, null, null, String.valueOf(gVar.d.f7341b)), new androidx.media3.exoplayer.hls.b(gVar, arrayList, jVar, 6));
        }
        HashMap map = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            sb.append(((i4.b) arrayList.get(i6)).f7344a);
            if (i6 < arrayList.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        Cursor cursorQuery = sQLiteDatabase.query("event_metadata", new String[]{"event_id", SerializableCookie.NAME, "value"}, sb.toString(), null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                long j10 = cursorQuery.getLong(0);
                Set hashSet = (Set) map.get(Long.valueOf(j10));
                if (hashSet == null) {
                    hashSet = new HashSet();
                    map.put(Long.valueOf(j10), hashSet);
                }
                hashSet.add(new i4.f(cursorQuery.getString(1), cursorQuery.getString(2)));
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        cursorQuery.close();
        ListIterator listIterator = arrayList.listIterator();
        while (listIterator.hasNext()) {
            i4.b bVar = (i4.b) listIterator.next();
            if (map.containsKey(Long.valueOf(bVar.f7344a))) {
                a4.h hVarC = bVar.f7346c.c();
                long j11 = bVar.f7344a;
                for (i4.f fVar : (Set) map.get(Long.valueOf(j11))) {
                    hVarC.a(fVar.f7347a, fVar.f7348b);
                }
                listIterator.set(new i4.b(j11, bVar.f7345b, hVarC.c()));
            }
        }
        return arrayList;
    }

    @Override // j4.b
    public Object execute() {
        switch (this.f2124a) {
            case 11:
                i4.g gVar = (i4.g) ((h4.i) this.f2125b).f7259c;
                gVar.getClass();
                Iterable iterable = (Iterable) this.f2126c;
                if (iterable.iterator().hasNext()) {
                    gVar.a().compileStatement("DELETE FROM events WHERE _id in " + i4.g.f(iterable)).execute();
                    break;
                }
                break;
            default:
                h4.i iVar = (h4.i) this.f2125b;
                iVar.getClass();
                Iterator it = ((HashMap) this.f2126c).entrySet().iterator();
                while (it.hasNext()) {
                    ((i4.g) iVar.f7263i).d(((Integer) r2.getValue()).intValue(), e4.c.INVALID_PAYLOD, (String) ((Map.Entry) it.next()).getKey());
                }
                break;
        }
        return null;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f2124a) {
            case 0:
                analyticsListener.onPlaybackParametersChanged((AnalyticsListener.EventTime) this.f2125b, (PlaybackParameters) this.f2126c);
                break;
            case 1:
                analyticsListener.onTrackSelectionParametersChanged((AnalyticsListener.EventTime) this.f2125b, (TrackSelectionParameters) this.f2126c);
                break;
            case 2:
                analyticsListener.onAvailableCommandsChanged((AnalyticsListener.EventTime) this.f2125b, (Player.Commands) this.f2126c);
                break;
            case 3:
            default:
                analyticsListener.onCues((AnalyticsListener.EventTime) this.f2125b, (CueGroup) this.f2126c);
                break;
            case 4:
                analyticsListener.onAudioAttributesChanged((AnalyticsListener.EventTime) this.f2125b, (AudioAttributes) this.f2126c);
                break;
            case 5:
                analyticsListener.onMetadata((AnalyticsListener.EventTime) this.f2125b, (Metadata) this.f2126c);
                break;
            case 6:
                analyticsListener.onTracksChanged((AnalyticsListener.EventTime) this.f2125b, (Tracks) this.f2126c);
                break;
            case 7:
                analyticsListener.onCues((AnalyticsListener.EventTime) this.f2125b, (List<Cue>) this.f2126c);
                break;
            case 8:
                analyticsListener.onDeviceInfoChanged((AnalyticsListener.EventTime) this.f2125b, (DeviceInfo) this.f2126c);
                break;
            case 9:
                DefaultAnalyticsCollector.lambda$onVideoSizeChanged$59((AnalyticsListener.EventTime) this.f2125b, (VideoSize) this.f2126c, analyticsListener);
                break;
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
    public void invoke(Object obj, FlagSet flagSet) {
        ((DefaultAnalyticsCollector) this.f2125b).lambda$setPlayer$1((Player) this.f2126c, (AnalyticsListener) obj, flagSet);
    }
}
