package ka;

import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.cast.x0;
import com.lzy.okgo.OkGo;
import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.request.GetRequest;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Constants$VIDEO_TYPE;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.EpgBeans;
import org.bitspark.android.beans.HistoryBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class e extends b implements View.OnKeyListener, View.OnFocusChangeListener, View.OnTouchListener {

    /* renamed from: j0, reason: collision with root package name */
    public static final String f7769j0 = a2.a.s("FEybfhtF6gcv\n", "Vh/TF2gxhXU=\n");

    /* renamed from: k0, reason: collision with root package name */
    public static Constants$VIDEO_TYPE f7770k0;

    /* renamed from: l0, reason: collision with root package name */
    public static x0 f7771l0;
    public View U;
    public RelativeLayout V;
    public LinearLayout W;
    public RecyclerView X;
    public fa.t Y;
    public RecyclerView Z;

    /* renamed from: b0, reason: collision with root package name */
    public fa.t f7772b0;

    /* renamed from: c0, reason: collision with root package name */
    public GridLayoutManager f7773c0;

    /* renamed from: d0, reason: collision with root package name */
    public RelativeLayout f7774d0;

    /* renamed from: e0, reason: collision with root package name */
    public RelativeLayout f7775e0;

    /* renamed from: f0, reason: collision with root package name */
    public boolean f7776f0 = false;

    /* renamed from: g0, reason: collision with root package name */
    public ta.a f7777g0;

    /* renamed from: h0, reason: collision with root package name */
    public o8.a f7778h0;
    public FrameLayout i0;

    public e() {
        f7771l0 = new x0(Looper.getMainLooper(), 1, false);
        this.f7778h0 = null;
        this.i0 = null;
    }

    @Override // e8.a, androidx.fragment.app.s
    public final void B() {
        String strS = a2.a.s("/0PM4QsSEiH7Tc8=\n", "iSyorG58Z2c=\n");
        String strS2 = a2.a.s("GV+0QcJEGA==\n", "djHnNaM2bJU=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strS2);
        super.B();
        this.f7776f0 = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00f3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void Q() {
        /*
            Method dump skipped, instructions count: 273
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ka.e.Q():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void R(HistoryBean historyBean) {
        EpgBeans.EpgBean epgBeanB;
        Constants$VIDEO_TYPE constants$VIDEO_TYPE = historyBean.type;
        Constants$VIDEO_TYPE constants$VIDEO_TYPE2 = Constants$VIDEO_TYPE.BSLIVE;
        if (constants$VIDEO_TYPE == constants$VIDEO_TYPE2 && ga.d.f7122c != null) {
            ChannelBean channelBean = (ChannelBean) ga.d.f7122c.get(Integer.valueOf(historyBean.chid));
            if (channelBean != null) {
                ra.f.b().e(channelBean, Boolean.FALSE, 0, ea.d.f.name());
                f7770k0 = constants$VIDEO_TYPE2;
                return;
            }
            return;
        }
        Constants$VIDEO_TYPE constants$VIDEO_TYPE3 = historyBean.type;
        Constants$VIDEO_TYPE constants$VIDEO_TYPE4 = Constants$VIDEO_TYPE.BSPALYBACK;
        if (constants$VIDEO_TYPE3 == constants$VIDEO_TYPE4 && ga.d.f7122c != null) {
            ChannelBean channelBean2 = (ChannelBean) ga.d.f7122c.get(Integer.valueOf(historyBean.chid));
            if (channelBean2 == null || (epgBeanB = ga.h.b(historyBean.chid, historyBean.subId)) == null) {
                return;
            }
            Message message = new Message();
            message.what = 80;
            Bundle bundle = new Bundle();
            bundle.putInt(a2.a.s("rhClSA==\n", "zXjMLCFhVUA=\n"), channelBean2.getChid());
            bundle.putString(a2.a.s("ucG490U=\n", "yrTaviEzA2M=\n"), historyBean.subId);
            bundle.putString(a2.a.s("uHfG\n", "zQWqsS2iPP0=\n"), epgBeanB.getPlaybackUrl());
            bundle.putString(a2.a.s("4RoIHA==\n", "j3tleZxr/88=\n"), channelBean2.getName().getInit());
            bundle.putString(a2.a.s("Uy29TbwVUxQ=\n", "IFjfOdVhP3E=\n"), epgBeanB.getName());
            bundle.putString(a2.a.s("QkxNUQ==\n", "NjU9NCOmcQM=\n"), constants$VIDEO_TYPE4.name());
            bundle.putString(a2.a.s("56hrttikh3k=\n", "is0Fw4zd9xw=\n"), ea.d.f.name());
            message.setData(bundle);
            Spark.X1.sendMessage(message);
            f7770k0 = Constants$VIDEO_TYPE.BSVOD;
            return;
        }
        Constants$VIDEO_TYPE constants$VIDEO_TYPE5 = historyBean.type;
        Constants$VIDEO_TYPE constants$VIDEO_TYPE6 = Constants$VIDEO_TYPE.BSVOD;
        if (constants$VIDEO_TYPE5 == constants$VIDEO_TYPE6 || constants$VIDEO_TYPE5 == Constants$VIDEO_TYPE.STATIC) {
            Message message2 = new Message();
            message2.what = 86;
            Bundle bundle2 = new Bundle();
            bundle2.putString(a2.a.s("X/xc8HDHW3M=\n", "MpkyhSS+KxY=\n"), ea.d.f.name());
            message2.setData(bundle2);
            Spark.X1.sendMessage(message2);
            f7770k0 = constants$VIDEO_TYPE6;
            this.f7777g0.f10266v = true;
            String strD = ga.m.d(ga.m.g(ga.l.f7143h) + a2.a.s("4Pk=\n", "z7nwBFzWlWc=\n") + historyBean.chid);
            try {
                OkGo.getInstance().cancelTag(this);
                ((GetRequest) ((GetRequest) ((GetRequest) ((GetRequest) OkGo.get(strD).removeHeader(a2.a.s("s3j1j2CS9yuIfw==\n", "5guQ/U3TkE4=\n"))).headers(a2.a.s("rAXLMN+g0vuXAg==\n", "+XauQvLhtZ4=\n"), ea.a.f6609m)).tag(this)).cacheMode(CacheMode.NO_CACHE)).execute(new c(this, historyBean));
            } catch (Exception unused) {
                String strS = a2.a.s("CY2U2mErpCcGiY6UcijgBR6BwJ9lNq8WTw==\n", "bujg+hdEwGQ=\n");
                boolean z7 = org.bitspark.android.utils.m.f8784b;
                Log.i(f7769j0, strS);
            }
        }
    }

    public final void S() {
        String strS = a2.a.s("5YrhJ8va/lPkm9Yjy5+UHL4=\n", "kPqFRr+/ujI=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(f7769j0, strS);
        fa.t tVar = this.Y;
        if (tVar != null) {
            tVar.notifyDataSetChanged();
        }
        fa.t tVar2 = this.f7772b0;
        if (tVar2 != null) {
            tVar2.notifyDataSetChanged();
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        int id = view.getId();
        String str = f7769j0;
        if (z7 && id == this.X.getId()) {
            String strS = a2.a.s("K4CDaVa8BeIom4xeSLwT4WeGm0pxtgPl\n", "R+n1DB7VdpY=\n");
            boolean z10 = org.bitspark.android.utils.m.f8784b;
            Log.i(str, strS);
            this.X.requestFocus();
            this.X.requestFocusFromTouch();
            return;
        }
        if (z7 && id == this.Z.getId()) {
            String strS2 = a2.a.s("DvLxKHHk2NwK5Mc2cfLbkxfz0w974t8=\n", "eJ2VYBiXrLM=\n");
            boolean z11 = org.bitspark.android.utils.m.f8784b;
            Log.i(str, strS2);
            this.Z.requestFocus();
            this.Z.requestFocusFromTouch();
        }
    }

    @Override // ka.b, android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        int id = view.getId();
        boolean z7 = keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0;
        String strJ = ea.q.j("X4T9C5hy\n", "MOqWbuFSkYU=\n", new StringBuilder(), i6);
        boolean z10 = org.bitspark.android.utils.m.f8784b;
        Log.i(f7769j0, strJ);
        if (!z7 || id != this.f7774d0.getId()) {
            return super.onKey(view, i6, keyEvent);
        }
        if (i6 == 4 || i6 == 21) {
            Spark.X1.sendEmptyMessage(112);
        }
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            String str = a2.a.s("hPGAtPmzvg==\n", "65/U24zQ1qo=\n") + motionEvent;
            boolean z7 = org.bitspark.android.utils.m.f8784b;
            Log.i(f7769j0, str);
            view.callOnClick();
        }
        return true;
    }

    @Override // androidx.fragment.app.s
    public final View t(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.U = layoutInflater.inflate(R.layout.fragment_history, (ViewGroup) null);
        this.f7777g0 = (ta.a) new a1.b(h()).n(ta.a.class);
        this.V = (RelativeLayout) this.U.findViewById(R.id.history_menu);
        this.W = (LinearLayout) this.U.findViewById(R.id.history_layout);
        this.V.setOnKeyListener(this);
        this.i0 = (FrameLayout) this.U.findViewById(R.id.vod_detail_container);
        sa.b bVar = new sa.b(15, 15, 15, 15);
        this.X = (RecyclerView) this.U.findViewById(R.id.history_live_rview);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
        linearLayoutManager.setOrientation(0);
        this.X.setLayoutManager(linearLayoutManager);
        this.X.addItemDecoration(bVar);
        this.X.setOnFocusChangeListener(this);
        this.X.setOnKeyListener(this);
        this.Z = (RecyclerView) this.U.findViewById(R.id.history_vod_rview);
        this.f7773c0 = new GridLayoutManager(ea.h.f6690u);
        this.Z.addItemDecoration(bVar);
        this.Z.setLayoutManager(this.f7773c0);
        this.Z.setOnFocusChangeListener(this);
        this.Z.setOnKeyListener(this);
        this.f7774d0 = (RelativeLayout) this.U.findViewById(R.id.live_history_placehold);
        this.f7775e0 = (RelativeLayout) this.U.findViewById(R.id.vod_history_placehold);
        this.f7774d0.setOnKeyListener(this);
        this.f7775e0.setOnKeyListener(this);
        Q();
        Q();
        h().setRequestedOrientation(0);
        return this.U;
    }

    @Override // e8.a, androidx.fragment.app.s
    public final void z() {
        String strS = a2.a.s("2dv0KEeEutzd1fc=\n", "r7SQZSLqz5o=\n");
        String strS2 = a2.a.s("Qt7Ta+ToxAo=\n", "LbCBDpedqW8=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strS2);
        super.z();
        Q();
    }
}
