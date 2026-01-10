package androidx.media3.common;

import android.content.ClipData;
import android.content.ClipDescription;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.fragment.app.j0;
import androidx.media3.common.Player;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.ReorderingSeiMessageQueue;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.preload.BasePreloadManager;
import androidx.media3.exoplayer.source.preload.PreloadException;
import androidx.media3.exoplayer.source.preload.PreloadManagerListener;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.RandomTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelectionUtil;
import androidx.media3.extractor.BinarySearchSeeker;
import androidx.media3.extractor.FlacStreamMetadata;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleExtractor;
import androidx.media3.extractor.ts.SeiReader;
import com.alibaba.fastjson.JSONReader;
import com.lzy.okgo.model.HttpHeaders;
import com.tencent.mars.xlog.Log;
import d7.s1;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringReader;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import ka.i0;
import n0.s0;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.internal.Util;
import org.bitspark.android.beans.ChannelBean;
import q1.m1;
import q1.n1;
import y3.c;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class x implements ListenerSet.IterationFinishedEvent, ListenerSet.Event, DefaultTrackSelector.TrackInfo.Factory, TrackSelectionUtil.AdaptiveTrackSelectionFactory, BinarySearchSeeker.SeekTimestampConverter, ReorderingSeiMessageQueue.SeiConsumer, Consumer, EventListener.Factory, j4.b, i8.b, l8.a, q1.a0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2103a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2104b;

    public /* synthetic */ x(int i6, Object obj) {
        this.f2103a = i6;
        this.f2104b = obj;
    }

    @Override // i8.b
    public void a(p8.b bVar) {
        a2.a.s("ZXnv2yaC31hAc+zK\n", "LRaCvmDwvj8=\n");
        a2.a.s("1nWk1zntY5TMcbvMOfJVssV+9c0yzWK0x3Wm0Wa+\n", "pBDVolyeF9c=\n");
        String strS = a2.a.s("lA==\n", "z7tvmr+sUp0=\n");
        String str = (String) this.f2104b;
        if (str.startsWith(strS)) {
            String strS2 = a2.a.s("GC9RxZPVJdI9JVLU\n", "UEA8oNWnRLU=\n");
            String strS3 = a2.a.s("6PVbcsNEmaH0oSjvH7MZSRl8koNGv1M0EivvvCTIQF5uB4jvBqa/uub1ZmLMwlNrbyqp\n", "h5sIB6An/NI=\n");
            boolean z7 = org.bitspark.android.utils.m.f8784b;
            Log.i(strS2, strS3);
            return;
        }
        if (str.startsWith(a2.a.s("Vw==\n", "LKTBSir4Abg=\n"))) {
            try {
                ChannelBean channelBean = (ChannelBean) new JSONReader(new StringReader(str)).readObject(ChannelBean.class);
                if (channelBean.getSources() == null || channelBean.getSources().isEmpty()) {
                    String strS4 = a2.a.s("2Y6Bvn7B3/H8hIKv\n", "keHs2zizvpY=\n");
                    String strS5 = a2.a.s("7jQrLAZUfQvyYFi/+pL8wAy/8OmDoqieDPQ=\n", "gVp4WWU3GHg=\n");
                    boolean z10 = org.bitspark.android.utils.m.f8784b;
                    Log.i(strS4, strS5);
                } else {
                    String strS6 = a2.a.s("+VsYowFY9YfcURuy\n", "sTR1xkcqlOA=\n");
                    String str2 = a2.a.s("1r6/PXXJ0ejK6sw=\n", "udDsSBaqtJs=\n") + channelBean.getSources().size();
                    boolean z11 = org.bitspark.android.utils.m.f8784b;
                    Log.i(strS6, str2);
                    bVar.c(channelBean);
                }
            } catch (Exception e5) {
                throw new RuntimeException(e5);
            }
        }
    }

    @Override // androidx.media3.common.util.Consumer, l8.a
    public void accept(Object obj) {
        switch (this.f2103a) {
            case 7:
                ((SubtitleExtractor) this.f2104b).lambda$parseAndWriteToOutput$0((CuesWithTiming) obj);
                break;
            case 8:
                ((s1) this.f2104b).a((CuesWithTiming) obj);
                break;
            default:
                ka.j jVar = ((ka.f) this.f2104b).f7782b;
                jVar.Z.setVisibility(8);
                jVar.Y.setVisibility(0);
                org.bitspark.android.utils.o oVar = org.bitspark.android.utils.o.f;
                oVar.c((ChannelBean) obj, a2.a.s("XP1Yrg==\n", "NJI1y/qWcJc=\n"));
                i0 i0VarA = oVar.a(jVar, jVar.Y, jVar.V, jVar.Z);
                j0 j0VarI = jVar.i();
                j0VarI.getClass();
                androidx.fragment.app.a aVar = new androidx.fragment.app.a(j0VarI);
                aVar.i(com.p2elite.brtv2.R.id.vod_detail_container, i0VarA);
                aVar.c();
                aVar.e(false);
                break;
        }
    }

    public c b(Object obj) {
        y3.b bVar = (y3.b) obj;
        y3.d dVar = (y3.d) this.f2104b;
        o9.d.i("CctTransportBackend", "Making request to: %s", bVar.f11380a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) bVar.f11380a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(dVar.f11390g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod(HlsMediaPlaylist.Interstitial.CUE_TRIGGER_POST);
        httpURLConnection.setRequestProperty("User-Agent", "datatransport/3.1.3 android/");
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "gzip");
        String str = bVar.f11382c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    j7.c cVar = dVar.f11386a;
                    z3.i iVar = bVar.f11381b;
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(gZIPOutputStream));
                    j7.e eVar = (j7.e) cVar.f7444b;
                    j7.f fVar = new j7.f(bufferedWriter, eVar.f7449a, eVar.f7450b, eVar.f7451c, eVar.d);
                    fVar.e(iVar);
                    fVar.g();
                    fVar.f7453b.flush();
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    android.util.Log.i("TransportRuntime.".concat("CctTransportBackend"), a.e.n(responseCode, "Status Code: "));
                    android.util.Log.i("TransportRuntime.".concat("CctTransportBackend"), "Content-Type: " + httpURLConnection.getHeaderField("Content-Type"));
                    android.util.Log.i("TransportRuntime.".concat("CctTransportBackend"), "Content-Encoding: " + httpURLConnection.getHeaderField("Content-Encoding"));
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new c(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    }
                    if (responseCode != 200) {
                        return new c(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                        try {
                            c cVar2 = new c(responseCode, null, z3.m.a(new BufferedReader(new InputStreamReader(gZIPInputStream))).f11576a);
                            if (gZIPInputStream != null) {
                                gZIPInputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return cVar2;
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } catch (h7.b e5) {
            e = e5;
            android.util.Log.e("TransportRuntime.".concat("CctTransportBackend"), "Couldn't encode request, returning with 400", e);
            return new c(400, null, 0L);
        } catch (ConnectException e10) {
            e = e10;
            android.util.Log.e("TransportRuntime.".concat("CctTransportBackend"), "Couldn't open connection, returning with 500", e);
            return new c(500, null, 0L);
        } catch (UnknownHostException e11) {
            e = e11;
            android.util.Log.e("TransportRuntime.".concat("CctTransportBackend"), "Couldn't open connection, returning with 500", e);
            return new c(500, null, 0L);
        } catch (IOException e12) {
            e = e12;
            android.util.Log.e("TransportRuntime.".concat("CctTransportBackend"), "Couldn't encode request, returning with 400", e);
            return new c(400, null, 0L);
        }
    }

    @Override // q1.a0
    public void c(q1.b0 b0Var, q1.w wVar, ArrayList arrayList) {
        ((q1.h0) this.f2104b).f9010i.g(b0Var, wVar, arrayList);
    }

    @Override // androidx.media3.container.ReorderingSeiMessageQueue.SeiConsumer
    public void consume(long j10, ParsableByteArray parsableByteArray) {
        switch (this.f2103a) {
            case 6:
                ((FragmentedMp4Extractor) this.f2104b).lambda$new$2(j10, parsableByteArray);
                break;
            default:
                ((SeiReader) this.f2104b).lambda$new$0(j10, parsableByteArray);
                break;
        }
    }

    @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
    public List create(int i6, TrackGroup trackGroup, int[] iArr) {
        return DefaultTrackSelector.lambda$selectImageTrack$5((DefaultTrackSelector.Parameters) this.f2104b, i6, trackGroup, iArr);
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelectionUtil.AdaptiveTrackSelectionFactory
    public ExoTrackSelection createAdaptiveTrackSelection(ExoTrackSelection.Definition definition) {
        return ((RandomTrackSelection.Factory) this.f2104b).lambda$createTrackSelections$0(definition);
    }

    public boolean d(j7.c cVar, int i6, Bundle bundle) {
        n0.d cVar2;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 25 && (i6 & 1) != 0) {
            try {
                ((s0.g) cVar.f7444b).d();
                Parcelable parcelable = (Parcelable) ((s0.g) cVar.f7444b).b();
                bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", parcelable);
            } catch (Exception e5) {
                android.util.Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e5);
                return false;
            }
        }
        ClipDescription clipDescriptionA = ((s0.g) cVar.f7444b).a();
        s0.g gVar = (s0.g) cVar.f7444b;
        ClipData clipData = new ClipData(clipDescriptionA, new ClipData.Item(gVar.c()));
        if (i10 >= 31) {
            cVar2 = new j7.c(clipData, 2);
        } else {
            n0.e eVar = new n0.e();
            eVar.f8307b = clipData;
            eVar.f8308c = 2;
            cVar2 = eVar;
        }
        cVar2.m(gVar.e());
        cVar2.setExtras(bundle);
        return s0.l((AppCompatEditText) this.f2104b, cVar2.f()) == null;
    }

    @Override // j4.b
    public Object execute() {
        SQLiteDatabase sQLiteDatabaseA;
        boolean z7 = false;
        Object obj = this.f2104b;
        switch (this.f2103a) {
            case 11:
                i4.g gVar = (i4.g) ((i4.c) obj);
                gVar.getClass();
                int i6 = e4.a.f6546e;
                a0.f fVar = new a0.f(3, z7);
                fVar.f38b = null;
                fVar.d = new ArrayList();
                fVar.f39c = null;
                fVar.f40e = "";
                HashMap map = new HashMap();
                sQLiteDatabaseA = gVar.a();
                sQLiteDatabaseA.beginTransaction();
                try {
                    e4.a aVar = (e4.a) i4.g.g(sQLiteDatabaseA.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new androidx.media3.exoplayer.hls.b(gVar, map, fVar, 7));
                    sQLiteDatabaseA.setTransactionSuccessful();
                    return aVar;
                } finally {
                }
            case 12:
                i4.g gVar2 = (i4.g) ((i4.d) obj);
                long jC = gVar2.f7350b.c() - gVar2.d.d;
                sQLiteDatabaseA = gVar2.a();
                sQLiteDatabaseA.beginTransaction();
                try {
                    String[] strArr = {String.valueOf(jC)};
                    Cursor cursorRawQuery = sQLiteDatabaseA.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr);
                    while (cursorRawQuery.moveToNext()) {
                        try {
                            gVar2.d(cursorRawQuery.getInt(0), e4.c.MESSAGE_TOO_OLD, cursorRawQuery.getString(1));
                        } catch (Throwable th) {
                            cursorRawQuery.close();
                            throw th;
                        }
                    }
                    cursorRawQuery.close();
                    int iDelete = sQLiteDatabaseA.delete("events", "timestamp_ms < ?", strArr);
                    sQLiteDatabaseA.setTransactionSuccessful();
                    sQLiteDatabaseA.endTransaction();
                    return Integer.valueOf(iDelete);
                } finally {
                }
            case 13:
                i4.g gVar3 = (i4.g) ((h4.i) obj).f7263i;
                sQLiteDatabaseA = gVar3.a();
                sQLiteDatabaseA.beginTransaction();
                try {
                    sQLiteDatabaseA.compileStatement("DELETE FROM log_event_dropped").execute();
                    sQLiteDatabaseA.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + gVar3.f7350b.c()).execute();
                    sQLiteDatabaseA.setTransactionSuccessful();
                    return null;
                } finally {
                }
            default:
                h4.j jVar = (h4.j) obj;
                Iterator it = ((Iterable) ((i4.g) jVar.f7265b).c(new a4.s(25))).iterator();
                while (it.hasNext()) {
                    jVar.f7266c.a((a4.j) it.next(), 1, false);
                }
                return null;
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.f2103a) {
            case 1:
                BasePreloadManager.lambda$onPreloadCompleted$1((MediaSource) this.f2104b, (PreloadManagerListener) obj);
                break;
            default:
                ((PreloadManagerListener) obj).onError((PreloadException) this.f2104b);
                break;
        }
    }

    @Override // androidx.media3.extractor.BinarySearchSeeker.SeekTimestampConverter
    public long timeUsToTargetTime(long j10) {
        return ((FlacStreamMetadata) this.f2104b).getSampleNumber(j10);
    }

    public /* synthetic */ x(n1 n1Var, m1 m1Var) {
        this.f2103a = 19;
        this.f2104b = n1Var;
    }

    @Override // okhttp3.EventListener.Factory
    public EventListener create(Call call) {
        return Util.asFactory$lambda$8((EventListener) this.f2104b, call);
    }

    @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
    public void invoke(Object obj, FlagSet flagSet) {
        ((SimpleBasePlayer) this.f2104b).lambda$new$0((Player.Listener) obj, flagSet);
    }
}
