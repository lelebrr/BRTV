package ka;

import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.p2;
import androidx.appcompat.widget.r0;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.lzy.okgo.OkGo;
import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.request.GetRequest;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import fa.f1;
import fa.h1;
import fa.j1;
import fa.s0;
import fa.x0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.bitspark.android.Spark;
import org.bitspark.android.SpkApplication;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.Group;
import org.bitspark.android.beans.GroupBeanModel;
import org.bitspark.android.keyboard.custom.MyKeyBoardView;
import org.bitspark.android.view.CircularProgressBar;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class m0 extends b implements View.OnKeyListener, View.OnFocusChangeListener, View.OnClickListener, View.OnTouchListener {
    public static RecyclerView C0;
    public static RelativeLayout D0;
    public static androidx.mediarouter.app.c E0;
    public static c7.o H0;
    public static View I0;
    public o8.a A0;
    public View U;
    public RecyclerView V;
    public RecyclerView W;
    public RecyclerView X;
    public RecyclerView Y;
    public h1 Z;

    /* renamed from: b0, reason: collision with root package name */
    public j1 f7817b0;

    /* renamed from: c0, reason: collision with root package name */
    public f1 f7818c0;

    /* renamed from: d0, reason: collision with root package name */
    public x0 f7819d0;

    /* renamed from: e0, reason: collision with root package name */
    public GridLayoutManager f7820e0;

    /* renamed from: f0, reason: collision with root package name */
    public RelativeLayout f7821f0;

    /* renamed from: g0, reason: collision with root package name */
    public CircularProgressBar f7822g0;

    /* renamed from: h0, reason: collision with root package name */
    public LinearLayout f7823h0;
    public ImageButton i0;

    /* renamed from: j0, reason: collision with root package name */
    public FrameLayout f7824j0;

    /* renamed from: k0, reason: collision with root package name */
    public ImageView f7825k0;

    /* renamed from: l0, reason: collision with root package name */
    public TextView f7826l0;

    /* renamed from: m0, reason: collision with root package name */
    public ImageButton f7827m0;

    /* renamed from: n0, reason: collision with root package name */
    public ImageButton f7828n0;

    /* renamed from: o0, reason: collision with root package name */
    public EditText f7829o0;

    /* renamed from: p0, reason: collision with root package name */
    public MyKeyBoardView f7830p0;

    /* renamed from: r0, reason: collision with root package name */
    public boolean f7832r0;

    /* renamed from: s0, reason: collision with root package name */
    public RelativeLayout f7833s0;

    /* renamed from: t0, reason: collision with root package name */
    public RelativeLayout f7834t0;

    /* renamed from: v0, reason: collision with root package name */
    public ta.a f7836v0;

    /* renamed from: w0, reason: collision with root package name */
    public String f7837w0;
    public FrameLayout x0;

    /* renamed from: y0, reason: collision with root package name */
    public RelativeLayout f7838y0;

    /* renamed from: z0, reason: collision with root package name */
    public final HashMap f7839z0;
    public static final String B0 = a2.a.s("htjLvdU=\n", "xIud0rF8vVU=\n");
    public static ea.d F0 = ea.d.d;
    public static boolean G0 = false;
    public static int J0 = 0;

    /* renamed from: q0, reason: collision with root package name */
    public boolean f7831q0 = false;

    /* renamed from: u0, reason: collision with root package name */
    public volatile int f7835u0 = 0;

    public m0() {
        E0 = new androidx.mediarouter.app.c(this, Looper.getMainLooper(), 4);
        this.f7837w0 = "";
        this.x0 = null;
        this.f7838y0 = null;
        this.f7839z0 = new HashMap();
        this.A0 = null;
    }

    public static void Q(m0 m0Var, RecyclerView recyclerView, int i6, int i10) {
        m0Var.getClass();
        f1 f1Var = (f1) recyclerView.getAdapter();
        if (f1Var == null) {
            return;
        }
        int i11 = f1Var.f6932a;
        f1Var.f6932a = i6;
        f1Var.f6933b = i10;
        f1Var.notifyItemChanged(i6);
        if (i11 != i6) {
            f1Var.notifyItemChanged(i11);
        }
        f1Var.f6934c.scrollToPosition(f1Var.f6932a);
    }

    public static void V() {
        String strS = a2.a.s("BdLMUXixTt0hyNtQZIk=\n", "Y72vJAvnIbk=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(B0, strS);
        Spark.X1.sendEmptyMessage(105);
    }

    @Override // e8.a, androidx.fragment.app.s
    public final void B() {
        String strS = a2.a.s("ttYurEVx7ECy2C0=\n", "wLlK4SAfmQY=\n");
        String strS2 = a2.a.s("PqiDQmdUSw==\n", "UcbQNgYmP2o=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strS2);
        super.B();
        this.f7831q0 = true;
    }

    public final boolean R(int i6) {
        ChannelBean.TagsBean tagsBeanB = ga.o.b(i6);
        if (!(tagsBeanB != null ? tagsBeanB.isRestrictedAccess() : false)) {
            if (Spark.f8662c2) {
                Spark.f8662c2 = false;
            }
            return true;
        }
        if (Spark.f8662c2) {
            return true;
        }
        if (!Spark.f8666g2 || C0.hasFocus()) {
            if (this.f7832r0) {
                this.W.requestFocus();
            } else {
                this.Y.requestFocus();
            }
            F0 = ea.d.f6630a;
        }
        C0.setVisibility(8);
        if (J0 < ea.h.f6688s) {
            J0++;
            Spark.l0(R.string.Click_Restricted_Group);
        }
        String strS = a2.a.s("By0CCTX+mw4QLDAeJPKLCVUvAxIy59RaBy0FCDX5\n", "dUhxfUeX+Ho=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(B0, strS);
        return false;
    }

    public final void S() {
        G0 = false;
        if (this.f7832r0) {
            this.i0.setImageResource(R.mipmap.search_icon);
            this.W.setNextFocusDownId(R.id.channel_rview);
        } else {
            this.f7825k0.setImageResource(R.mipmap.search_icon);
            this.f7826l0.setText(n(R.string.Search));
        }
        ga.o.a();
        X();
        F0 = ea.d.f6633e;
    }

    public final void T(RecyclerView recyclerView, RecyclerView recyclerView2, int i6, int i10) {
        j1 j1Var;
        recyclerView.requestFocus();
        h1 h1Var = this.Z;
        if (h1Var == null || (j1Var = this.f7817b0) == null) {
            return;
        }
        if (this.f7832r0) {
            h1Var.f6932a = i6;
        } else {
            j1Var.f6932a = i6;
        }
        o9.d.z(recyclerView, i6);
        recyclerView.performClick();
        o9.d.y(recyclerView2);
        recyclerView2.postDelayed(new a3.c(this, 22, recyclerView2), 100L);
        recyclerView2.postDelayed(new r0(this, recyclerView2, i10, 8, false), 500L);
    }

    public final void U(int i6) {
        if (ga.o.f == null) {
            return;
        }
        Iterator it = ga.o.f.iterator();
        int i10 = -65535;
        int i11 = 0;
        while (it.hasNext()) {
            Iterator<ChannelBean.TagsBean> it2 = ((GroupBeanModel) it.next()).items.iterator();
            int i12 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (it2.next().getId() == i6) {
                    i10 = i12;
                    break;
                }
                i12++;
            }
            if (i10 != -65535) {
                break;
            } else {
                i11++;
            }
        }
        if (i10 == -65535) {
            return;
        }
        int i13 = i11 + 1;
        if (this.f7832r0) {
            T(this.V, this.W, i13, i10);
        } else {
            T(this.X, this.Y, i13, i10);
        }
    }

    public final String W(int i6) {
        String strReplaceAll;
        Group group;
        String str;
        if (ga.o.f7155c != null && (group = (Group) ga.o.f7155c.get(i6)) != null && (str = group.name) != null) {
            return str.replaceAll(a2.a.s("ZkFHvQ==\n", "SGsbkiBunM0=\n"), "");
        }
        f1 f1Var = this.f7818c0;
        f1Var.getClass();
        try {
            strReplaceAll = ((Group) f1Var.f6850h.get(((Integer) f1Var.f6851i.get(f1Var.f6932a)).intValue())).name.replaceAll(a2.a.s("enZ1PA==\n", "VFwpEyluTFI=\n"), "");
        } catch (Exception e5) {
            e5.printStackTrace();
            strReplaceAll = "";
        }
        return !TextUtils.isEmpty(strReplaceAll) ? strReplaceAll : "";
    }

    public final void X() {
        ArrayList arrayList;
        int i6 = 29;
        String str = B0;
        String strS = a2.a.s("4AMwF3S7dJP8KDAHUuc1yA==\n", "jGxRczPJG+Y=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(str, strS);
        if (!this.f7831q0) {
            Log.i(str, a2.a.s("zqXg23VcswnGp/rKPBjhCtO++8E=\n", "p8uJrxA4k28=\n"));
            return;
        }
        if (h() == null) {
            Log.i(str, a2.a.s("iSAWBtGii+GEOhQemPqNpJ46Chw=\n", "6k94crTa/8E=\n"));
            return;
        }
        a0();
        if (this.V == null || this.W == null || this.X == null || this.Y == null || ga.o.f7155c == null || ga.o.f7155c.size() == 0) {
            return;
        }
        try {
            h1 h1Var = new h1(ga.o.d, h(), E0);
            this.Z = h1Var;
            h1Var.f6935e = new a7.f((Object) this, i6, (Object) 2);
            j1 j1Var = new j1(ga.o.d, h(), E0);
            this.f7817b0 = j1Var;
            j1Var.f6935e = new a7.f((Object) this, i6, (Object) 2);
            this.f7818c0 = new f1(ga.o.f7155c, h(), E0);
            b0();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        if (this.f7832r0) {
            this.f7834t0.setVisibility(8);
            this.Y.setVisibility(8);
            this.f7833s0.setVisibility(0);
            this.W.setVisibility(0);
            this.V.setVisibility(0);
            this.X.setVisibility(0);
            this.V.setAdapter(this.Z);
            this.W.setAdapter(this.f7818c0);
        } else {
            this.f7834t0.setVisibility(0);
            this.f7833s0.setVisibility(8);
            this.Y.setVisibility(0);
            this.W.setVisibility(8);
            this.X.setVisibility(0);
            this.V.setVisibility(8);
            this.X.setAdapter(this.f7817b0);
            this.Y.setAdapter(this.f7818c0);
        }
        CircularProgressBar circularProgressBar = this.f7822g0;
        if (circularProgressBar != null && circularProgressBar.getVisibility() == 0) {
            this.f7822g0.setVisibility(8);
        }
        f1 f1Var = this.f7818c0;
        if (f1Var == null || (arrayList = f1Var.f6851i) == null || arrayList.size() <= 0) {
            return;
        }
        if (((Integer) this.f7818c0.f6851i.get(1)).intValue() > -1) {
            Y(((Integer) this.f7818c0.f6851i.get(1)).intValue(), "");
            return;
        }
        Y(-10, ga.m.d(ga.m.g(ga.l.f7144i) + a2.a.s("Gw==\n", "NDTjhAaVVm8=\n") + (-10)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Y(int i6, String str) {
        List listB;
        ChannelBean.TagsBean next;
        int i10 = 1;
        if (C0 == null) {
            return;
        }
        this.f7835u0 = i6;
        String str2 = B0;
        String str3 = a2.a.s("aGMXDNM/6udsbRgG4DzKxXA2Vg==\n", "BAx2aIVQjqQ=\n") + i6 + a2.a.s("Z9zuixY=\n", "R+HQq0164r4=\n") + str + ']';
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(str2, str3);
        if (i6 == -5) {
            listB = Spark.Y1.b();
        } else {
            c7.o oVar = H0;
            String strValueOf = String.valueOf(i6);
            c7.b0 b0Var = oVar.f3443a;
            b0Var.getClass();
            strValueOf.getClass();
            int iC = b0Var.c(strValueOf);
            Object objH = b0Var.e(iC).h(iC, strValueOf);
            x4.e eVar = b0Var.f3414o;
            if (objH == null) {
                eVar.getClass();
            } else {
                eVar.getClass();
            }
            listB = (List) objH;
        }
        if (listB != null) {
            Log.i(str2, a2.a.s("DsLDXGtSR8kN6fVRUV989hHZggIF\n", "Yq2iOCU3MJ8=\n") + i6);
            if (i6 == this.f7835u0) {
                if (listB.isEmpty()) {
                    C0.setVisibility(8);
                    if (i6 == -5) {
                        D0.setVisibility(0);
                    }
                } else {
                    Log.i(str2, a2.a.s("RiQUX8ixa1pMPwERnA==\n", "JUx1MabUBxY=\n") + listB.size());
                    if (R(i6)) {
                        try {
                            FragmentActivity fragmentActivityH = h();
                            x0 x0Var = new x0(fragmentActivityH, ea.d.f6633e);
                            ArrayList arrayList = new ArrayList();
                            x0Var.f6972j = arrayList;
                            x0Var.f6978p = null;
                            x0Var.f6979q = null;
                            x0Var.f6980r = null;
                            x0Var.f6973k = fragmentActivityH;
                            arrayList.clear();
                            arrayList.addAll(listB);
                            x0Var.b();
                            x0Var.f6974l = i6;
                            this.f7819d0 = x0Var;
                            x0Var.f6978p = new k0(this, i6, i10);
                            if (G0) {
                                x0Var.f6929g = 5;
                            }
                            x0Var.f6930h = new a7.f((Object) this, 29, (Object) 3);
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                        D0.setVisibility(8);
                        C0.setAdapter(this.f7819d0);
                        Log.i(B0, a2.a.s("3XXL4D5ovXmA\n", "ugeklU4h2Vk=\n") + i6);
                        if (i6 == -5) {
                            this.f7819d0.f6980r = new androidx.media3.common.x(17, this);
                        } else {
                            this.f7819d0.f6980r = null;
                        }
                        if (C0.getVisibility() == 8) {
                            C0.setVisibility(0);
                        }
                        C0.setItemAnimator(null);
                    }
                }
            }
            this.f7822g0.setVisibility(8);
            return;
        }
        x0 x0Var2 = this.f7819d0;
        if (x0Var2 != null) {
            x0Var2.f6972j.clear();
            AsyncTask asyncTask = x0Var2.f6975m;
            if (asyncTask != null) {
                a2.a.s("cdUETXk91Flz2zNqMDzFekLOBGBkL41qRtQjZHxmkCA=\n", "J7pAARBOoAk=\n");
                asyncTask.cancel(true);
                a2.a.s("7bHlS47zLm3vv9Jsx/I/Tt6q5WaT4Xde2rDCYouoaxQ=\n", "u96hB+eAWj0=\n");
            }
            x0Var2.notifyDataSetChanged();
        }
        if (TextUtils.isEmpty(str)) {
            if (i6 != -10) {
                if (ga.o.f != null) {
                    Iterator it = ga.o.f.iterator();
                    while (true) {
                        String str4 = "";
                        if (!it.hasNext()) {
                            str = "";
                            break;
                        }
                        GroupBeanModel groupBeanModel = (GroupBeanModel) it.next();
                        if (groupBeanModel.group_id == i6) {
                            int id = groupBeanModel.items.get(0).getId();
                            Iterator<ChannelBean.TagsBean> it2 = groupBeanModel.items.iterator();
                            loop1: while (true) {
                                String str5 = str4;
                                int i11 = id;
                                str = str5;
                                while (it2.hasNext()) {
                                    next = it2.next();
                                    if (i11 >= next.getId()) {
                                        break;
                                    }
                                }
                                id = next.getId();
                                str4 = next.url;
                            }
                        }
                    }
                } else {
                    return;
                }
            } else {
                str = ga.m.d(ga.m.g(ga.l.f7144i) + a2.a.s("1Q==\n", "+lHfpJM2hEs=\n") + (-10));
            }
        }
        if (!pa.a.a(this.f7837w0)) {
            if (str.contains(a2.a.s("5g==\n", "2eIx8YfiKc4=\n"))) {
                StringBuilder sbM = ea.q.m(str);
                sbM.append(a2.a.s("QQ==\n", "Z0dRDXJlu4o=\n"));
                sbM.append(this.f7837w0);
                str = sbM.toString();
            } else {
                StringBuilder sbM2 = ea.q.m(str);
                sbM2.append(a2.a.s("Fg==\n", "KU3jCs2q8PE=\n"));
                sbM2.append(this.f7837w0);
                str = sbM2.toString();
            }
        }
        Log.i(B0, a2.a.s("3tYeP1UP5p+Q\n", "rbNwWwB9iqI=\n") + str);
        this.f7822g0.setVisibility(0);
        try {
            OkGo.getInstance().cancelTag(this);
            ((GetRequest) ((GetRequest) ((GetRequest) ((GetRequest) OkGo.get(str).removeHeader(a2.a.s("wQpljX+qT4H6DQ==\n", "lHkA/1LrKOQ=\n"))).headers(a2.a.s("jynwwypPzGa0Lg==\n", "2lqVsQcOqwM=\n"), ea.a.f6609m)).tag(this)).cacheMode(CacheMode.NO_CACHE)).execute(new j0(this, i6));
        } catch (Exception unused) {
            Log.i(B0, a2.a.s("h0F13IuXpBKIRW+SmJTgMJBNIZmPiq8jwQ==\n", "4CQB/P34wFE=\n"));
        }
    }

    public final void Z() {
        String strS = a2.a.s("Pvju36OWtDEt+vDPoIfIYw==\n", "TJ2dqs7z8kM=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(B0, strS);
        org.bitspark.android.utils.o oVar = org.bitspark.android.utils.o.f;
        if (!oVar.f8791e) {
            o9.d.y(C0);
        } else {
            if (oVar.f()) {
                return;
            }
            this.f7836v0.f();
        }
    }

    public final void a0() {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) C0.getLayoutParams();
        int iQ = n5.d.q(h(), 10);
        if (G0) {
            this.f7820e0.C(5);
            if (C0.getAdapter() != null) {
                ((fa.o) C0.getAdapter()).f6929g = 5;
                C0.getAdapter().notifyDataSetChanged();
            }
            this.f7823h0.setVisibility(0);
            this.f7823h0.setFocusable(true);
            marginLayoutParams.leftMargin = iQ;
            C0.setLayoutParams(marginLayoutParams);
            this.f7834t0.setBackgroundResource(R.color.transparency);
            return;
        }
        this.f7820e0.C(ea.h.f6689t);
        if (C0.getAdapter() != null) {
            ((fa.o) C0.getAdapter()).f6929g = ea.h.f6689t;
            C0.getAdapter().notifyDataSetChanged();
        }
        this.f7823h0.setVisibility(8);
        this.f7823h0.setFocusable(false);
        if (this.f7832r0) {
            marginLayoutParams.leftMargin = iQ;
            C0.setLayoutParams(marginLayoutParams);
        } else {
            marginLayoutParams.leftMargin = this.f7834t0.getLayoutParams().width + iQ;
            C0.setLayoutParams(marginLayoutParams);
        }
    }

    public final void b0() {
        if (this.f7832r0) {
            this.f7818c0.f6935e = new a7.f((Object) this, 29, (Object) 5);
        } else {
            this.f7818c0.f6935e = new a7.f((Object) this, 29, (Object) 120);
        }
    }

    public final void c0() {
        if (this.f7832r0) {
            this.f7834t0.setVisibility(8);
            this.Y.setVisibility(8);
            this.f7833s0.setVisibility(0);
            this.W.setVisibility(0);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
            linearLayoutManager.setOrientation(0);
            this.V.setLayoutManager(linearLayoutManager);
            this.V.setOnFocusChangeListener(this);
            LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(1);
            linearLayoutManager2.setOrientation(0);
            this.W.setLayoutManager(linearLayoutManager2);
            this.W.setOnFocusChangeListener(this);
            return;
        }
        this.f7834t0.setVisibility(0);
        this.Y.setVisibility(0);
        this.f7833s0.setVisibility(8);
        this.W.setVisibility(8);
        LinearLayoutManager linearLayoutManager3 = new LinearLayoutManager(1);
        linearLayoutManager3.setOrientation(1);
        this.X.setLayoutManager(linearLayoutManager3);
        this.X.setOnFocusChangeListener(this);
        this.X.addItemDecoration(new s0());
        LinearLayoutManager linearLayoutManager4 = new LinearLayoutManager(1);
        linearLayoutManager4.setOrientation(0);
        this.Y.setLayoutManager(linearLayoutManager4);
        this.Y.setOnFocusChangeListener(this);
        C0.setLayoutParams((ViewGroup.MarginLayoutParams) C0.getLayoutParams());
    }

    public final void d0() {
        if (G0) {
            S();
            return;
        }
        G0 = true;
        if (this.f7832r0) {
            this.i0.setImageResource(R.mipmap.search_return);
            this.W.setNextFocusDownId(R.id.keyboard_layout);
        } else {
            this.f7825k0.setImageResource(R.mipmap.search_return);
            this.f7826l0.setText(n(R.string.Back));
        }
        ga.o.a();
        X();
    }

    public final void e0(int i6) {
        if (i6 == 1) {
            this.f7837w0 = a2.a.s("ZyOuwAw1+PR5KQ==\n", "FEzctDFYjJ0=\n");
            return;
        }
        if (i6 == 2) {
            this.f7837w0 = a2.a.s("y7DpAJFt2RPC\n", "uN+bdKwDuCE=\n");
        } else if (i6 != 3) {
            this.f7837w0 = "";
        } else {
            this.f7837w0 = a2.a.s("6LSa7nuRAPn6\n", "m9vomkb/ess=\n");
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int id = view.getId();
        if (id == this.i0.getId() || id == this.f7824j0.getId()) {
            d0();
            return;
        }
        int id2 = this.f7827m0.getId();
        String str = B0;
        if (id == id2) {
            String strS = a2.a.s("LCHc/7zzHRwrAsv67+wSPCIp3P/v\n", "TkC/lM+DfH8=\n");
            boolean z7 = org.bitspark.android.utils.m.f8784b;
            Log.i(str, strS);
            EditText editText = this.f7829o0;
            if (editText == null || editText.length() <= 0 || this.f7829o0.getSelectionStart() <= 0) {
                return;
            }
            this.f7829o0.getText().delete(this.f7829o0.getSelectionStart() - 1, this.f7829o0.getSelectionStart());
            return;
        }
        if (id == this.f7828n0.getId()) {
            String strS2 = a2.a.s("Qa7v1oJisJZL6+zdtWubgU7r\n", "JcuDs/YH8uI=\n");
            boolean z10 = org.bitspark.android.utils.m.f8784b;
            Log.i(str, strS2);
            this.f7829o0.setText("");
            return;
        }
        if (id == this.W.getId()) {
            String strS3 = a2.a.s("45keAYH7D7PhnFEbn+o1s+eAUQ==\n", "hOtxdPGpWdo=\n");
            boolean z11 = org.bitspark.android.utils.m.f8784b;
            Log.i(str, strS3);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        int id = view.getId();
        String str = B0;
        if (z7 && id == this.W.getId()) {
            String strS = a2.a.s("Euy8ZdqDWMcQ6fN/xJdhzQDt\n", "dZ7TEKrRDq4=\n");
            boolean z10 = org.bitspark.android.utils.m.f8784b;
            Log.i(str, strS);
            o9.d.y(this.W);
            return;
        }
        if (z7 && id == this.V.getId()) {
            String strS2 = a2.a.s("r8wDOu1Ii1ye1wk4vWvUSKfdGTw=\n", "yL5sT50Eug4=\n");
            boolean z11 = org.bitspark.android.utils.m.f8784b;
            Log.i(str, strS2);
            o9.d.y(this.V);
            return;
        }
        if (z7 && id == C0.getId()) {
            String strS3 = a2.a.s("V+mx1RyDrTBm8rvXTKDyJF/4q9M=\n", "MJveoGzPnGI=\n");
            boolean z12 = org.bitspark.android.utils.m.f8784b;
            Log.i(str, strS3);
            o9.d.y(this.V);
            return;
        }
        if (z7 && id == this.Y.getId()) {
            String strS4 = a2.a.s("Gp5HJtknP+4Ym35zxhsv6B6ZWw==\n", "fewoU6l1aYc=\n");
            boolean z13 = org.bitspark.android.utils.m.f8784b;
            Log.i(str, strS4);
            o9.d.y(this.Y);
            return;
        }
        if (z7 && id == this.X.getId()) {
            String strS5 = a2.a.s("dtMKg8dc42BHyACB4TC9XFfOBoPE\n", "EaFl9rcQ0jI=\n");
            boolean z14 = org.bitspark.android.utils.m.f8784b;
            Log.i(str, strS5);
            o9.d.y(this.X);
        }
    }

    @Override // ka.b, android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        int id = view.getId();
        boolean z7 = keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0;
        String str = a2.a.s("92xtDIb9oYLEbX1qm/KNitgj\n", "oQMJSvScxu8=\n") + i6 + a2.a.s("9ftTJXQ=\n", "2NZ+CFmLqoI=\n") + keyEvent.getRepeatCount() + a2.a.s("v1n2vg==\n", "knTbk4xDR+A=\n") + keyEvent.getAction() + a2.a.s("ZYKigi05\n", "SK+Pr1sDUxc=\n") + view;
        boolean z10 = org.bitspark.android.utils.m.f8784b;
        String str2 = B0;
        Log.i(str2, str);
        if (z7) {
            if (id == this.W.getId() || id == this.Y.getId()) {
                Log.i(str2, a2.a.s("1mgSS7jn19zUbV1Vrcyh0Md/E0ro\n", "sRp9Psi1gbU=\n") + keyEvent);
                if (i6 == 22) {
                    Log.i(str2, a2.a.s("/Pk73YBz/hz+/HTjtXjrOt/OC+ygYOwqycIT4KQ=\n", "m4tUqPAhqHU=\n"));
                } else if (i6 == 21) {
                    Log.i(str2, a2.a.s("3eTdyzveHMLf4ZL1DtUJ5P7T7fobzQ709tP06g==\n", "upayvkuMSqs=\n"));
                }
                if (i6 == 20 && C0.getVisibility() == 8) {
                    Log.i(str2, a2.a.s("ysq/IN32MF3Iz/Ae6P0le+n9jxH95SJr6feHGw==\n", "rbjQVa2kZjQ=\n"));
                    return true;
                }
            } else if (id == this.i0.getId() || id == this.f7824j0.getId()) {
                Log.i(str2, a2.a.s("m9utuMi2CNWGnqev0v4v143QuOo=\n", "6L7MyqveSqE=\n") + keyEvent);
                if (i6 == 23) {
                    d0();
                    return true;
                }
                if (i6 == 21) {
                    F0 = ea.d.d;
                    V();
                    return true;
                }
                if (i6 == 20 && G0 && !this.f7832r0) {
                    o9.d.y(this.f7829o0);
                    return true;
                }
            } else if (id == this.f7829o0.getId()) {
                Log.i(str2, a2.a.s("ZsmJKVz44+Y1x40iH/XQ93vYyA==\n", "FazoWz+QppI=\n") + keyEvent);
                if (i6 == 23) {
                    return true;
                }
                if (i6 == 21) {
                    F0 = ea.d.f6633e;
                    V();
                    return true;
                }
                if (i6 == 20) {
                    this.f7827m0.requestFocus();
                    this.f7827m0.requestFocusFromTouch();
                    return true;
                }
                if (i6 == 19) {
                    if (this.f7832r0) {
                        o9.d.y(this.V);
                    } else {
                        if (G0) {
                            o9.d.y(this.f7824j0);
                            return true;
                        }
                        o9.d.y(this.X);
                    }
                    return true;
                }
            } else if (id == this.f7828n0.getId()) {
                Log.i(str2, a2.a.s("oXNipeDyqRWrNmWl7beOF6B4euA=\n", "xRYOwJSX62E=\n") + keyEvent);
                if (i6 == 23) {
                    this.f7829o0.setText("");
                } else {
                    if (i6 == 21) {
                        F0 = ea.d.f6633e;
                        V();
                        return true;
                    }
                    if (i6 == 19) {
                        o9.d.y(this.f7829o0);
                        return true;
                    }
                }
            } else if (id == this.f7830p0.getId()) {
                Log.i(str2, a2.a.s("JEyMptXXJ60ZQJCzmt0wsG9Mg6HUwnU=\n", "Tyn1xLq2Vck=\n") + keyEvent);
                if (i6 == 21) {
                    F0 = ea.d.f6633e;
                    V();
                    return true;
                }
            }
        }
        if (i6 != 21 || keyEvent.getRepeatCount() <= 0 || keyEvent.getAction() != 0 || id != this.i0.getId()) {
            return super.onKey(view, i6, keyEvent);
        }
        F0 = ea.d.d;
        V();
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            String str = a2.a.s("LQ35hCu6DQ==\n", "QmOt617ZZRY=\n") + motionEvent;
            boolean z7 = org.bitspark.android.utils.m.f8784b;
            Log.i(B0, str);
            view.callOnClick();
        }
        return true;
    }

    @Override // androidx.fragment.app.s
    public final View t(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f7836v0 = (ta.a) new a1.b(h()).n(ta.a.class);
        e0(org.bitspark.android.utils.m.f(0, a2.a.s("k6mLnDLrgXKfqpuYL+aKeg==\n", "wPnUynuvxD0=\n")).intValue());
        if (SpkApplication.f8737c.getApplicationContext().getSharedPreferences(a2.a.s("Rjg6iuYm9iM=\n", "JEtK+INAk1E=\n"), 0).contains(a2.a.s("/GuTkJsVp8f9dJmW\n", "rzvMxtRR+IA=\n"))) {
            this.f7832r0 = org.bitspark.android.utils.m.e(a2.a.s("F+Pl+CH9ckMW/O/+\n", "RLO6rm65LQQ=\n"), false).booleanValue();
        } else {
            this.f7832r0 = ea.h.N;
        }
        boolean z7 = this.f7832r0;
        if (z7) {
            ea.h.f6689t = 6;
        } else {
            ea.h.f6689t = 5;
        }
        if (z7) {
            this.U = layoutInflater.inflate(R.layout.fragment_vod, (ViewGroup) null);
        } else {
            this.U = layoutInflater.inflate(R.layout.fragment_vod_v, (ViewGroup) null);
        }
        RelativeLayout relativeLayout = (RelativeLayout) this.U.findViewById(R.id.vod_root_view);
        this.f7821f0 = relativeLayout;
        relativeLayout.setOnKeyListener(this);
        sa.b bVar = new sa.b(0, 0, 0, 0);
        this.V = (RecyclerView) this.U.findViewById(R.id.groupL1_rview);
        this.W = (RecyclerView) this.U.findViewById(R.id.group_rview);
        this.X = (RecyclerView) this.U.findViewById(R.id.groupL1_rview_v);
        this.Y = (RecyclerView) this.U.findViewById(R.id.group_rview_v);
        this.f7833s0 = (RelativeLayout) this.U.findViewById(R.id.l1menu);
        this.f7834t0 = (RelativeLayout) this.U.findViewById(R.id.l1menu_v);
        C0 = (RecyclerView) this.U.findViewById(R.id.channel_rview);
        c0();
        this.f7820e0 = new GridLayoutManager(ea.h.f6689t);
        C0.addItemDecoration(bVar);
        C0.setLayoutManager(this.f7820e0);
        C0.setOnFocusChangeListener(this);
        this.W.setOnKeyListener(this);
        this.V.setOnKeyListener(this);
        this.Y.setOnKeyListener(this);
        this.X.setOnKeyListener(this);
        C0.setOnKeyListener(this);
        this.f7822g0 = (CircularProgressBar) this.U.findViewById(R.id.loading_progress);
        RelativeLayout relativeLayout2 = (RelativeLayout) this.U.findViewById(R.id.favorite_hint);
        D0 = relativeLayout2;
        relativeLayout2.setVisibility(8);
        ImageButton imageButton = (ImageButton) this.U.findViewById(R.id.searchBtn);
        this.i0 = imageButton;
        imageButton.setOnKeyListener(this);
        this.i0.setOnClickListener(this);
        this.i0.setOnTouchListener(this);
        ImageButton imageButton2 = (ImageButton) this.U.findViewById(R.id.backspace_btn);
        this.f7827m0 = imageButton2;
        imageButton2.setOnKeyListener(this);
        this.f7827m0.setOnClickListener(this);
        this.f7827m0.setOnTouchListener(this);
        ImageButton imageButton3 = (ImageButton) this.U.findViewById(R.id.delete_btn);
        this.f7828n0 = imageButton3;
        imageButton3.setOnKeyListener(this);
        this.f7828n0.setOnClickListener(this);
        this.f7828n0.setOnTouchListener(this);
        this.f7824j0 = (FrameLayout) this.U.findViewById(R.id.searchBtn_v);
        this.f7825k0 = (ImageView) this.U.findViewById(R.id.img_search);
        this.f7826l0 = (TextView) this.U.findViewById(R.id.tv_search);
        this.x0 = (FrameLayout) this.U.findViewById(R.id.vod_detail_container);
        this.f7838y0 = (RelativeLayout) this.U.findViewById(R.id.vod_layout);
        this.f7824j0.setOnKeyListener(this);
        this.f7824j0.setOnClickListener(this);
        this.f7824j0.setOnTouchListener(this);
        this.f7830p0 = (MyKeyBoardView) this.U.findViewById(R.id.keyboardView);
        EditText editText = (EditText) this.U.findViewById(R.id.searchET);
        this.f7829o0 = editText;
        editText.setOnKeyListener(this);
        this.f7830p0.setOnKeyClickListener(new u6.e(20));
        this.f7830p0.setEditText(this.f7829o0);
        this.f7830p0.setOnBackDownPressedListener(new a7.f((Object) this, 29, (Object) 1));
        this.f7829o0.addTextChangedListener(new p2(4, this));
        this.f7823h0 = (LinearLayout) this.U.findViewById(R.id.keyboard_layout);
        a0();
        c7.d dVar = new c7.d();
        dVar.f3422b = -1L;
        dVar.f3421a = 200L;
        TimeUnit timeUnit = TimeUnit.MINUTES;
        if (!(-1 == -1)) {
            throw new IllegalStateException(b7.b.s("expireAfterWrite was already set to %s ns", -1L));
        }
        dVar.f3422b = timeUnit.toNanos(60L);
        H0 = new c7.o(dVar);
        h().setRequestedOrientation(0);
        return this.U;
    }

    @Override // e8.a, androidx.fragment.app.s
    public final void u() {
        super.u();
        o8.a aVar = this.A0;
        if (aVar == null || aVar.g()) {
            return;
        }
        o8.a aVar2 = this.A0;
        aVar2.getClass();
        m8.a.b(aVar2);
    }

    @Override // e8.a, androidx.fragment.app.s
    public final void z() {
        String strS = a2.a.s("7uHzdYD9+bfq7/A=\n", "mI6XOOWTjPE=\n");
        String strS2 = a2.a.s("Ht1c+3TcHdQ=\n", "cbMOngepcLE=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strS2);
        super.z();
    }
}
