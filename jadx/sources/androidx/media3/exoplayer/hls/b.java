package androidx.media3.exoplayer.hls;

import a4.n;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import androidx.media3.common.AdViewProvider;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.hls.HlsInterstitialsAdsLoader;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import com.alibaba.fastjson.JSONReader;
import com.lzy.okgo.cookie.SerializableCookie;
import com.lzy.okgo.model.Progress;
import com.tencent.mars.xlog.Log;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import ka.l0;
import ka.m0;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.utils.m;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Consumer, DefaultTrackSelector.TrackInfo.Factory, j4.b, i4.e, i8.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2279a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2280b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2281c;
    public final /* synthetic */ Object d;

    public /* synthetic */ b(Object obj, Object obj2, Object obj3, int i6) {
        this.f2279a = i6;
        this.f2281c = obj;
        this.f2280b = obj2;
        this.d = obj3;
    }

    @Override // i8.b
    public void a(p8.b bVar) {
        String str = (String) this.d;
        l0 l0Var = (l0) this.f2281c;
        l0Var.getClass();
        a2.a.s("sU7MxaI=\n", "8x2aqsa/97w=\n");
        a2.a.s("fdoOvBwFo/xn3hGnHBqV2m7RX6YXJaLcbNoMukNW\n", "D79/yXl2178=\n");
        String strS = a2.a.s("Kg==\n", "cTPGa62Qc6o=\n");
        String str2 = (String) this.f2280b;
        if (str2.startsWith(strS)) {
            String strS2 = a2.a.s("of7LtMw=\n", "462d26jF1sE=\n");
            String strS3 = a2.a.s("ma0HUgOV1CCF+XTP32JUyGgkzqOGbh61Y3OznOQZDd8fX9TPxnfyO5etOkIMEx7qHnL1\n", "9sNUJ2D2sVM=\n");
            boolean z7 = m.f8784b;
            Log.i(strS2, strS3);
            return;
        }
        if (str2.startsWith(a2.a.s("Bg==\n", "fdHLvdYSZpY=\n"))) {
            try {
                ChannelBean channelBean = (ChannelBean) new JSONReader(new StringReader(str2)).readObject(ChannelBean.class);
                if (channelBean.getSources() == null || channelBean.getSources().isEmpty()) {
                    m0.E0.post(new a.f(25, l0Var));
                    m0 m0Var = l0Var.d;
                    m0Var.f7836v0.f10266v = false;
                    m0Var.f7839z0.put(str, Boolean.FALSE);
                } else {
                    String strS4 = a2.a.s("gUWq8t8=\n", "wxb8nbu3MUs=\n");
                    String str3 = a2.a.s("PmiETYNPUeciPPc=\n", "UQbXOOAsNJQ=\n") + channelBean.getSources().size();
                    boolean z10 = m.f8784b;
                    Log.i(strS4, str3);
                    bVar.c(channelBean);
                }
            } catch (Exception e5) {
                throw new RuntimeException(e5);
            }
        }
    }

    @Override // androidx.media3.common.util.Consumer, l8.a
    public void accept(Object obj) {
        switch (this.f2279a) {
            case 0:
                HlsInterstitialsAdsLoader.lambda$handleContentTimelineChanged$1((AdsMediaSource) this.f2281c, this.f2280b, (Timeline) this.d, (HlsInterstitialsAdsLoader.Listener) obj);
                break;
            case 1:
                ((HlsInterstitialsAdsLoader.Listener) obj).onStart((MediaItem) this.f2281c, this.f2280b, (AdViewProvider) this.d);
                break;
            default:
                ((MediaSourceEventListener.EventDispatcher) this.f2281c).lambda$upstreamDiscarded$4((MediaSource.MediaPeriodId) this.f2280b, (MediaLoadData) this.d, (MediaSourceEventListener) obj);
                break;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // i4.e
    public Object apply(Object obj) {
        long jInsert;
        i4.g gVar;
        e4.c cVar;
        e4.c cVar2;
        int i6 = 5;
        int i10 = 4;
        int i11 = 3;
        e4.c cVar3 = e4.c.CACHE_FULL;
        int i12 = 2;
        Object obj2 = this.d;
        int i13 = 0;
        Object obj3 = this.f2280b;
        Object obj4 = this.f2281c;
        int i14 = 1;
        switch (this.f2279a) {
            case 5:
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                i4.g gVar2 = (i4.g) obj4;
                long jSimpleQueryForLong = gVar2.a().compileStatement("PRAGMA page_size").simpleQueryForLong() * gVar2.a().compileStatement("PRAGMA page_count").simpleQueryForLong();
                i4.a aVar = gVar2.d;
                long j10 = aVar.f7340a;
                a4.i iVar = (a4.i) obj3;
                String str = iVar.f125a;
                if (jSimpleQueryForLong >= j10) {
                    gVar2.d(1L, cVar3, str);
                    return -1L;
                }
                a4.j jVar = (a4.j) obj2;
                Long lB = i4.g.b(sQLiteDatabase, jVar);
                if (lB != null) {
                    jInsert = lB.longValue();
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("backend_name", jVar.f129a);
                    contentValues.put(Progress.PRIORITY, Integer.valueOf(l4.a.a(jVar.f131c)));
                    contentValues.put("next_request_ms", (Integer) 0);
                    byte[] bArr = jVar.f130b;
                    if (bArr != null) {
                        contentValues.put("extras", Base64.encodeToString(bArr, 0));
                    }
                    jInsert = sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                n nVar = iVar.f127c;
                byte[] bArr2 = nVar.f139b;
                int length = bArr2.length;
                int i15 = aVar.f7343e;
                boolean z7 = length <= i15;
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("context_id", Long.valueOf(jInsert));
                contentValues2.put("transport_name", str);
                contentValues2.put("timestamp_ms", Long.valueOf(iVar.d));
                contentValues2.put("uptime_ms", Long.valueOf(iVar.f128e));
                contentValues2.put("payload_encoding", nVar.f138a.f10990a);
                contentValues2.put("code", iVar.f126b);
                contentValues2.put("num_attempts", (Integer) 0);
                contentValues2.put("inline", Boolean.valueOf(z7));
                contentValues2.put("payload", z7 ? bArr2 : new byte[0]);
                long jInsert2 = sQLiteDatabase.insert("events", null, contentValues2);
                if (!z7) {
                    int iCeil = (int) Math.ceil(bArr2.length / i15);
                    for (int i16 = 1; i16 <= iCeil; i16++) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, (i16 - 1) * i15, Math.min(i16 * i15, bArr2.length));
                        ContentValues contentValues3 = new ContentValues();
                        contentValues3.put("event_id", Long.valueOf(jInsert2));
                        contentValues3.put("sequence_num", Integer.valueOf(i16));
                        contentValues3.put("bytes", bArrCopyOfRange);
                        sQLiteDatabase.insert("event_payloads", null, contentValues3);
                    }
                }
                for (Map.Entry entry : Collections.unmodifiableMap(iVar.f).entrySet()) {
                    ContentValues contentValues4 = new ContentValues();
                    contentValues4.put("event_id", Long.valueOf(jInsert2));
                    contentValues4.put(SerializableCookie.NAME, (String) entry.getKey());
                    contentValues4.put("value", (String) entry.getValue());
                    sQLiteDatabase.insert("event_metadata", null, contentValues4);
                }
                return Long.valueOf(jInsert2);
            case 6:
                Cursor cursor = (Cursor) obj;
                i4.g gVar3 = (i4.g) obj4;
                gVar3.getClass();
                while (cursor.moveToNext()) {
                    long j11 = cursor.getLong(0);
                    boolean z10 = cursor.getInt(7) != 0;
                    a4.h hVar = new a4.h();
                    hVar.f = new HashMap();
                    String string = cursor.getString(i14);
                    if (string == null) {
                        throw new NullPointerException("Null transportName");
                    }
                    hVar.f121a = string;
                    hVar.d = Long.valueOf(cursor.getLong(i12));
                    hVar.f124e = Long.valueOf(cursor.getLong(3));
                    if (z10) {
                        String string2 = cursor.getString(4);
                        hVar.f123c = new n(string2 == null ? i4.g.f : new x3.b(string2), cursor.getBlob(5));
                        gVar = gVar3;
                    } else {
                        String string3 = cursor.getString(4);
                        x3.b bVar = string3 == null ? i4.g.f : new x3.b(string3);
                        Cursor cursorQuery = gVar3.a().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j11)}, null, null, "sequence_num");
                        try {
                            ArrayList arrayList = new ArrayList();
                            int length2 = 0;
                            while (cursorQuery.moveToNext()) {
                                byte[] blob = cursorQuery.getBlob(0);
                                arrayList.add(blob);
                                length2 += blob.length;
                            }
                            byte[] bArr3 = new byte[length2];
                            int i17 = 0;
                            int length3 = 0;
                            while (i17 < arrayList.size()) {
                                byte[] bArr4 = (byte[]) arrayList.get(i17);
                                ArrayList arrayList2 = arrayList;
                                i4.g gVar4 = gVar3;
                                System.arraycopy(bArr4, 0, bArr3, length3, bArr4.length);
                                length3 += bArr4.length;
                                i17++;
                                arrayList = arrayList2;
                                gVar3 = gVar4;
                            }
                            gVar = gVar3;
                            cursorQuery.close();
                            hVar.f123c = new n(bVar, bArr3);
                        } catch (Throwable th) {
                            cursorQuery.close();
                            throw th;
                        }
                    }
                    if (!cursor.isNull(6)) {
                        hVar.f122b = Integer.valueOf(cursor.getInt(6));
                    }
                    ((ArrayList) obj3).add(new i4.b(j11, (a4.j) obj2, hVar.c()));
                    gVar3 = gVar;
                    i12 = 2;
                    i14 = 1;
                }
                return null;
            default:
                Cursor cursor2 = (Cursor) obj;
                i4.g gVar5 = (i4.g) obj4;
                gVar5.getClass();
                while (true) {
                    HashMap map = (HashMap) obj3;
                    if (cursor2.moveToNext()) {
                        String string4 = cursor2.getString(i13);
                        int i18 = cursor2.getInt(1);
                        e4.c cVar4 = e4.c.REASON_UNKNOWN;
                        if (i18 != 0) {
                            if (i18 == 1) {
                                cVar4 = e4.c.MESSAGE_TOO_OLD;
                            } else if (i18 == 2) {
                                cVar = cVar3;
                                cVar2 = cVar;
                            } else if (i18 == i11) {
                                cVar4 = e4.c.PAYLOAD_TOO_BIG;
                            } else if (i18 == i10) {
                                cVar4 = e4.c.MAX_RETRIES_REACHED;
                            } else if (i18 == i6) {
                                cVar4 = e4.c.INVALID_PAYLOD;
                            } else if (i18 == 6) {
                                cVar4 = e4.c.SERVER_ERROR;
                            } else {
                                o9.d.i("SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN", Integer.valueOf(i18));
                            }
                            cVar2 = cVar3;
                            cVar = cVar4;
                        } else {
                            cVar2 = cVar3;
                            cVar = cVar4;
                        }
                        long j12 = cursor2.getLong(2);
                        if (!map.containsKey(string4)) {
                            map.put(string4, new ArrayList());
                        }
                        ((List) map.get(string4)).add(new e4.d(j12, cVar));
                        cVar3 = cVar2;
                        i6 = 5;
                        i10 = 4;
                        i11 = 3;
                        i13 = 0;
                    } else {
                        Iterator it = map.entrySet().iterator();
                        while (true) {
                            a0.f fVar = (a0.f) obj2;
                            if (!it.hasNext()) {
                                long jC = gVar5.f7350b.c();
                                SQLiteDatabase sQLiteDatabaseA = gVar5.a();
                                sQLiteDatabaseA.beginTransaction();
                                try {
                                    Cursor cursorRawQuery = sQLiteDatabaseA.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]);
                                    try {
                                        cursorRawQuery.moveToNext();
                                        e4.g gVar6 = new e4.g(cursorRawQuery.getLong(0), jC);
                                        cursorRawQuery.close();
                                        sQLiteDatabaseA.setTransactionSuccessful();
                                        sQLiteDatabaseA.endTransaction();
                                        fVar.f38b = gVar6;
                                        fVar.f39c = new e4.b(new e4.f(gVar5.a().compileStatement("PRAGMA page_size").simpleQueryForLong() * gVar5.a().compileStatement("PRAGMA page_count").simpleQueryForLong(), i4.a.f.f7340a));
                                        fVar.f40e = (String) gVar5.f7352e.get();
                                        return new e4.a((e4.g) fVar.f38b, Collections.unmodifiableList((ArrayList) fVar.d), (e4.b) fVar.f39c, (String) fVar.f40e);
                                    } catch (Throwable th2) {
                                        cursorRawQuery.close();
                                        throw th2;
                                    }
                                } catch (Throwable th3) {
                                    sQLiteDatabaseA.endTransaction();
                                    throw th3;
                                }
                            }
                            Map.Entry entry2 = (Map.Entry) it.next();
                            int i19 = e4.e.f6560c;
                            new ArrayList();
                            ((ArrayList) fVar.d).add(new e4.e((String) entry2.getKey(), Collections.unmodifiableList((List) entry2.getValue())));
                        }
                    }
                }
        }
    }

    @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
    public List create(int i6, TrackGroup trackGroup, int[] iArr) {
        return DefaultTrackSelector.lambda$selectTextTrack$4((DefaultTrackSelector.Parameters) this.f2281c, (String) this.f2280b, (String) this.d, i6, trackGroup, iArr);
    }

    @Override // j4.b
    public Object execute() {
        g4.a aVar = (g4.a) this.f2281c;
        i4.g gVar = (i4.g) aVar.d;
        gVar.getClass();
        a4.j jVar = (a4.j) this.f2280b;
        a4.i iVar = (a4.i) this.d;
        android.util.Log.d("TransportRuntime.".concat("SQLiteEventStore"), "Storing event with priority=" + jVar.f131c + ", name=" + iVar.f125a + " for destination " + jVar.f129a);
        ((Long) gVar.c(new b(gVar, iVar, jVar, 5))).getClass();
        aVar.f7099a.a(jVar, 1, false);
        return null;
    }
}
