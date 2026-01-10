package ka;

import android.os.Bundle;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.media3.extractor.ts.TsExtractor;
import com.lzy.okgo.OkGo;
import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.request.GetRequest;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import com.youth.banner.Banner;
import com.youth.banner.indicator.RectangleIndicator;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Map;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.AuthInfo;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.EventBean;
import org.bitspark.android.beans.Group;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class j extends b implements View.OnKeyListener, View.OnClickListener, View.OnFocusChangeListener {

    /* renamed from: d0, reason: collision with root package name */
    public static final String f7802d0 = a2.a.s("UokkAzNuxh53gycS\n", "GuZJZnUcp3k=\n");
    public View U;
    public Banner V;
    public EventBean W;
    public ta.a X;
    public FrameLayout Y;
    public RelativeLayout Z;

    /* renamed from: b0, reason: collision with root package name */
    public FrameLayout f7803b0;

    /* renamed from: c0, reason: collision with root package name */
    public o8.a f7804c0 = null;

    public static void Q(j jVar, ArrayList arrayList) {
        jVar.getClass();
        if (arrayList.isEmpty()) {
            return;
        }
        jVar.V(0, arrayList);
        if (jVar.h() == null) {
            return;
        }
        jVar.V.setAdapter(new i(jVar, arrayList));
        jVar.V.addOnPageChangeListener(new a7.f(jVar, 28, arrayList));
        RectangleIndicator rectangleIndicator = (RectangleIndicator) jVar.U.findViewById(R.id.indicator);
        jVar.V.setIndicator(rectangleIndicator, false);
        String str = ea.h.f6672a;
        jVar.V.setIndicatorWidth(10, 100);
        jVar.V.setIndicatorNormalColorRes(R.color.home_banner_indicator_normal);
        jVar.V.setIndicatorSelectedColorRes(R.color.home_banner_indicator_selected);
        jVar.V.setIndicatorHeight(10);
        View viewFindViewById = jVar.U.findViewById(R.id.indicator_bg);
        if (viewFindViewById != null) {
            rectangleIndicator.post(new androidx.appcompat.app.c(jVar, rectangleIndicator, viewFindViewById));
        }
        jVar.V.start();
    }

    public static String T(int i6, ea.c cVar) {
        ChannelBean.TagsBean tagsBeanB;
        if (i6 == 0) {
            return null;
        }
        if (cVar == ea.c.f6624a && ga.d.d != null) {
            for (Map.Entry entry : ga.d.d.entrySet()) {
                if (((Integer) entry.getKey()).intValue() == i6) {
                    return ((Group) entry.getValue()).name;
                }
            }
        }
        if (cVar != ea.c.f6625b || (tagsBeanB = ga.o.b(i6)) == null) {
            return null;
        }
        return tagsBeanB.getName().getInit();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void R(EventBean eventBean) {
        Spark spark;
        if (eventBean == null || (spark = (Spark) h()) == null) {
            return;
        }
        if (eventBean.tag == 0) {
            int i6 = eventBean.channel;
            if (i6 == 0) {
                return;
            }
            String strD = ga.m.d(ga.m.g(ga.l.f7143h) + a2.a.s("ldc=\n", "upfhPKDgIME=\n") + i6);
            try {
                OkGo.getInstance().cancelTag(this);
                ((GetRequest) ((GetRequest) ((GetRequest) ((GetRequest) OkGo.get(strD).removeHeader(a2.a.s("s1bEaGN9BU+IUQ==\n", "5iWhGk48Yio=\n"))).headers(a2.a.s("zJeQkwelNgH3kA==\n", "meT14SrkUWQ=\n"), ea.a.f6609m)).tag(this)).cacheMode(CacheMode.NO_CACHE)).execute(new f(this, 1));
                return;
            } catch (Exception unused) {
                String strS = a2.a.s("EV6Q+DUH1MceWoq2JgSQ5QZSxL0xGt/2Vw==\n", "djvk2ENosIQ=\n");
                boolean z7 = org.bitspark.android.utils.m.f8784b;
                Log.i(f7802d0, strS);
                return;
            }
        }
        a2.a.s("YwQIyMaC+Nk9TQ==\n", "B216raX2rLY=\n");
        if (T(eventBean.tag, ea.c.f6624a) != null) {
            o9.d.y(spark.B);
            Message message = new Message();
            message.what = TsExtractor.TS_STREAM_TYPE_HDMV_DTS;
            message.arg1 = eventBean.tag;
            Spark.X1.sendMessageDelayed(message, 100L);
            return;
        }
        if (T(eventBean.tag, ea.c.f6625b) != null) {
            int i10 = eventBean.tag;
            o9.d.y(spark.C);
            Message message2 = new Message();
            message2.what = 131;
            message2.arg1 = i10;
            Spark.X1.sendMessageDelayed(message2, 200L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void S() {
        String strS = a2.a.s("MDrAfdus9S04OsZtk4nxNyI22nmJzg==\n", "Vl+0HrPulEM=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(f7802d0, strS);
        W();
        String strG = ga.m.g(ga.l.f7145j);
        if (strG == null || strG.isEmpty()) {
            return;
        }
        ((GetRequest) ((GetRequest) ((GetRequest) ((GetRequest) OkGo.get(strG).removeHeader(a2.a.s("NP7h5wmJV6MP+Q==\n", "YY2ElSTIMMY=\n"))).headers(a2.a.s("WoGvwI/3zFBhhg==\n", "D/LKsqK2qzU=\n"), ea.a.f6609m)).tag(this)).cacheMode(CacheMode.NO_CACHE)).execute(new f(this, 0));
    }

    public final void U() {
        String strS = a2.a.s("mrzNIjlVQO6JvtMyOkQ8vA==\n", "6Nm+V1QwBpw=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(f7802d0, strS);
        org.bitspark.android.utils.o oVar = org.bitspark.android.utils.o.f;
        if (!oVar.f8791e) {
            o9.d.y(this.V);
        } else {
            if (oVar.f()) {
                return;
            }
            this.X.f();
        }
    }

    public final void V(int i6, ArrayList arrayList) {
        TextView textView;
        this.W = (EventBean) arrayList.get(i6);
        a2.a.s("DbXPwHHSY0gMhNL2fNk3DQ==\n", "ftC7ghC8DS0=\n");
        String str = this.W.title;
        View view = this.U;
        if (view == null || (textView = (TextView) view.findViewById(R.id.home_banner_title)) == null) {
            return;
        }
        textView.setText(this.W.title);
        textView.post(new a.f(21, textView));
    }

    public final void W() {
        AuthInfo authInfo;
        View view = this.U;
        if (view == null || (authInfo = ga.m.f7150e) == null || authInfo.user == null) {
            return;
        }
        TextView textView = (TextView) view.findViewById(R.id.home_username);
        if (ga.m.f7150e.user.user_name != null) {
            if (org.bitspark.android.utils.m.f(0, ea.g.f6659b).intValue() == 2) {
                textView.setText(a2.a.s("fYnIEg==\n", "Xd+BQmq9zS8=\n"));
            } else {
                textView.setText(ga.m.f7150e.user.user_name.replace(ea.h.d, ""));
            }
        }
        TextView textView2 = (TextView) this.U.findViewById(R.id.home_expire);
        if (ga.m.f7150e.user.EndTime > 0) {
            textView2.setText(new SimpleDateFormat(a2.a.s("t7AEZsrInVaqrQ==\n", "09QpK4fl5C8=\n"), Locale.getDefault()).format(Long.valueOf(ga.m.f7150e.user.EndTime)));
        } else {
            textView2.setText(m().getString(R.string.nolimit));
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view.getId() == this.V.getId()) {
            Spark.X1.sendEmptyMessage(111);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        view.getId();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0092  */
    @Override // ka.b, android.view.View.OnKeyListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onKey(android.view.View r2, int r3, android.view.KeyEvent r4) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ka.j.onKey(android.view.View, int, android.view.KeyEvent):boolean");
    }

    @Override // androidx.fragment.app.s
    public final View t(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        String str = ea.h.f6672a;
        this.U = layoutInflater.inflate(R.layout.fragment_home, viewGroup, false);
        this.X = (ta.a) new a1.b(J()).n(ta.a.class);
        this.V = (Banner) this.U.findViewById(R.id.banner);
        this.f7803b0 = (FrameLayout) this.U.findViewById(R.id.home_root_view);
        this.Y = (FrameLayout) this.U.findViewById(R.id.vod_detail_container);
        this.Z = (RelativeLayout) this.U.findViewById(R.id.home_layout);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new EventBean(Integer.valueOf(R.mipmap.home_banner), "", 1));
        this.V.setAdapter(new g(this, arrayList));
        W();
        this.V.setOnClickListener(this);
        this.V.setOnKeyListener(this);
        this.V.setOnFocusChangeListener(this);
        return this.U;
    }
}
