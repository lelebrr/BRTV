package androidx.media3.exoplayer.analytics;

import android.text.TextUtils;
import androidx.media3.common.Player;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import com.tencent.mars.xlog.Log;
import fa.x0;
import java.util.ArrayList;
import java.util.List;
import ka.i0;
import ka.l0;
import ka.m0;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class w implements ListenerSet.Event, Consumer, l8.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2188a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2189b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2190c;
    public final /* synthetic */ Object d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f2191e;

    public /* synthetic */ w(AnalyticsListener.EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i6) {
        this.f2188a = 0;
        this.f2189b = eventTime;
        this.f2190c = i6;
        this.d = positionInfo;
        this.f2191e = positionInfo2;
    }

    @Override // androidx.media3.common.util.Consumer, l8.a
    public void accept(Object obj) {
        switch (this.f2188a) {
            case 2:
                ((MediaSourceEventListener.EventDispatcher) this.f2189b).lambda$loadStarted$0((LoadEventInfo) this.d, (MediaLoadData) this.f2191e, this.f2190c, (MediaSourceEventListener) obj);
                break;
            default:
                l0 l0Var = (l0) this.f2189b;
                String str = (String) this.d;
                ChannelBean channelBean = (ChannelBean) this.f2191e;
                int size = this.f2190c;
                ChannelBean channelBean2 = (ChannelBean) obj;
                l0Var.d.f7839z0.put(str, Boolean.TRUE);
                l0Var.d.getClass();
                List<ChannelBean.SourcesBean> sources = channelBean.getSources();
                List<ChannelBean.SourcesBean> sources2 = channelBean2.getSources();
                if (sources2 != null && sources.size() == sources2.size()) {
                    for (int i6 = 0; i6 < sources.size(); i6++) {
                        String address = sources.get(i6).getAddress();
                        String address2 = sources2.get(i6).getAddress();
                        if (!TextUtils.isEmpty(address) && address.equals(address2)) {
                        }
                    }
                    break;
                }
                String strS = a2.a.s("jX2qn/c=\n", "zy788JPSOqM=\n");
                String strS2 = a2.a.s("gjxNBHrJmgqKIXsJVcm4DNFv+t2aS0LaDt+S\n", "608eZRes2WI=\n");
                boolean z7 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS, strS2);
                if (l0Var.d.x0.isShown()) {
                    org.bitspark.android.utils.o oVar = org.bitspark.android.utils.o.f;
                    m0 m0Var = l0Var.d;
                    String strW = m0Var.W(m0Var.f7835u0);
                    i0 i0Var = oVar.f8790c;
                    if (i0Var != null) {
                        i0Var.U(channelBean2, strW);
                        oVar.f8790c.S(channelBean2, strW);
                    }
                    ta.a aVar = oVar.f8789b;
                    aVar.f10261q = channelBean2;
                    aVar.l();
                    oVar.f8789b.n();
                    Spark.Y1.d(channelBean2);
                    l0Var.d.Y(-5, null);
                    x0 x0Var = l0Var.d.f7819d0;
                    ArrayList arrayList = x0Var.f6972j;
                    if (size >= arrayList.size()) {
                        size = arrayList.size() - 1;
                    }
                    x0Var.d = size;
                    x0Var.f6926b = size;
                    x0Var.notifyItemChanged(size);
                    break;
                }
                break;
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f2188a) {
            case 0:
                DefaultAnalyticsCollector.lambda$onPositionDiscontinuity$46((AnalyticsListener.EventTime) this.f2189b, this.f2190c, (Player.PositionInfo) this.d, (Player.PositionInfo) this.f2191e, analyticsListener);
                break;
            default:
                DefaultAnalyticsCollector.lambda$onLoadStarted$26((AnalyticsListener.EventTime) this.f2189b, (LoadEventInfo) this.d, (MediaLoadData) this.f2191e, this.f2190c, analyticsListener);
                break;
        }
    }

    public /* synthetic */ w(Object obj, Object obj2, Object obj3, int i6, int i10) {
        this.f2188a = i10;
        this.f2189b = obj;
        this.d = obj2;
        this.f2191e = obj3;
        this.f2190c = i6;
    }
}
