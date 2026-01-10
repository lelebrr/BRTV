package ka;

import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ExpandableListView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.p2;
import androidx.appcompat.widget.r0;
import androidx.appcompat.widget.r2;
import androidx.appcompat.widget.w1;
import androidx.leanback.widget.VerticalGridView;
import androidx.recyclerview.widget.p1;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import org.bitspark.android.Constants$VIDEO_TYPE;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.EpgBeans;
import org.bitspark.android.beans.Group;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class r extends b implements View.OnKeyListener {

    /* renamed from: t0, reason: collision with root package name */
    public static androidx.mediarouter.app.c f7846t0;
    public View U;
    public VerticalGridView V;
    public VerticalGridView W;
    public fa.g0 X;
    public fa.d0 Y;
    public ExpandableListView Z;

    /* renamed from: b0, reason: collision with root package name */
    public fa.k f7850b0;

    /* renamed from: c0, reason: collision with root package name */
    public RelativeLayout f7851c0;

    /* renamed from: d0, reason: collision with root package name */
    public EditText f7852d0;

    /* renamed from: e0, reason: collision with root package name */
    public View f7853e0;

    /* renamed from: f0, reason: collision with root package name */
    public ea.d f7854f0;

    /* renamed from: g0, reason: collision with root package name */
    public final boolean f7855g0;

    /* renamed from: h0, reason: collision with root package name */
    public View f7856h0;
    public boolean i0;

    /* renamed from: j0, reason: collision with root package name */
    public final HashMap f7857j0;

    /* renamed from: k0, reason: collision with root package name */
    public ta.a f7858k0;

    /* renamed from: l0, reason: collision with root package name */
    public boolean f7859l0;

    /* renamed from: m0, reason: collision with root package name */
    public int f7860m0;

    /* renamed from: n0, reason: collision with root package name */
    public boolean f7861n0;

    /* renamed from: o0, reason: collision with root package name */
    public final ArrayList f7862o0;

    /* renamed from: p0, reason: collision with root package name */
    public int f7863p0;

    /* renamed from: q0, reason: collision with root package name */
    public Boolean f7864q0;

    /* renamed from: r0, reason: collision with root package name */
    public boolean f7865r0;

    /* renamed from: s0, reason: collision with root package name */
    public static final String f7845s0 = a2.a.s("kJRYfGaG\n", "0scVGQjzcIQ=\n");

    /* renamed from: u0, reason: collision with root package name */
    public static int f7847u0 = 0;

    /* renamed from: v0, reason: collision with root package name */
    public static int f7848v0 = 0;

    /* renamed from: w0, reason: collision with root package name */
    public static int f7849w0 = 0;

    public r() {
        String str = ea.h.f6672a;
        this.f7855g0 = true;
        this.f7856h0 = null;
        this.i0 = false;
        this.f7857j0 = new HashMap();
        f7846t0 = new androidx.mediarouter.app.c(this, Looper.getMainLooper(), 3);
        this.f7859l0 = false;
        this.f7860m0 = 0;
        this.f7861n0 = false;
        this.f7862o0 = new ArrayList();
        this.f7863p0 = 0;
        this.f7864q0 = Boolean.FALSE;
        this.f7865r0 = false;
    }

    public static void Q(r rVar, String str) {
        rVar.getClass();
        if (ga.d.f7121b == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (!str.isEmpty()) {
            for (ChannelBean channelBean : ga.d.f7121b) {
                if (channelBean.getName().getInit().toLowerCase().contains(str.toLowerCase()) && channelBean.getLevel() != 18) {
                    Iterator<ChannelBean.TagsBean> it = channelBean.getTags().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().isRestrictedAccess()) {
                                break;
                            }
                        } else {
                            arrayList.add(channelBean);
                            break;
                        }
                    }
                }
            }
        }
        Collections.sort(arrayList, new q());
        rVar.f7860m0 = -1000;
        rVar.d0(arrayList);
    }

    public static void R(r rVar, ExpandableListView expandableListView, int i6) {
        int i10 = rVar.f7850b0.f6892e;
        if (i6 != i10) {
            if (expandableListView.isGroupExpanded(i6)) {
                expandableListView.collapseGroup(i6);
                return;
            } else {
                expandableListView.expandGroup(i6);
                return;
            }
        }
        if (expandableListView.isGroupExpanded(i10)) {
            expandableListView.collapseGroup(rVar.f7850b0.f6892e);
            rVar.f7850b0.f = false;
        } else {
            expandableListView.expandGroup(rVar.f7850b0.f6892e);
            rVar.f7850b0.f = true;
        }
    }

    public static boolean S(r rVar, View view, int i6, int i10, int i11) {
        String playbackUrl;
        if (rVar.Z == null || view == null) {
            return true;
        }
        rVar.f7865r0 = true;
        EpgBeans.EpgBean epgBean = (EpgBeans.EpgBean) view.getTag();
        if (epgBean == null || (playbackUrl = epgBean.getPlaybackUrl()) == null || playbackUrl.equals("")) {
            return true;
        }
        org.bitspark.android.utils.o oVar = org.bitspark.android.utils.o.f;
        oVar.d();
        oVar.f8789b.k();
        oVar.e();
        rVar.Z.setSelectedChild(i6, i10, true);
        Message message = new Message();
        message.what = 80;
        Bundle bundle = new Bundle();
        int iIntValue = ((Integer) view.getTag(R.id.chid)).intValue();
        ChannelBean channelBean = (ChannelBean) ga.d.f7122c.get(Integer.valueOf(i11));
        String strS = channelBean == null ? a2.a.s("lQIUOViCfg==\n", "1mp1VzbnEgY=\n") : channelBean.getName().getInit();
        int level = channelBean == null ? 0 : channelBean.getLevel();
        bundle.putInt(a2.a.s("FL0HJA==\n", "d9VuQFk4XiM=\n"), iIntValue);
        bundle.putInt(a2.a.s("hvJuT5k=\n", "6pcYKvXw4Bc=\n"), level);
        bundle.putString(a2.a.s("O6X1m+k=\n", "SNCX0o0nE7Q=\n"), epgBean.getId());
        bundle.putString(a2.a.s("5fAn\n", "kIJLEBtZTRw=\n"), playbackUrl);
        bundle.putString(a2.a.s("0dNVoQ==\n", "v7I4xO6lfyg=\n"), strS);
        bundle.putString(a2.a.s("WMUISA5YcDw=\n", "K7BqPGcsHFk=\n"), epgBean.getName());
        bundle.putString(a2.a.s("pWKQFA==\n", "0RvgcVPdWAY=\n"), Constants$VIDEO_TYPE.BSPALYBACK.name());
        bundle.putString(a2.a.s("kAaeajfhtWg=\n", "/WPwH2OYxQ0=\n"), ea.d.f6631b.name());
        message.setData(bundle);
        Spark.X1.sendMessage(message);
        fa.k.f6888n = epgBean.getId();
        rVar.f7850b0.notifyDataSetChanged();
        rVar.h0(ea.d.f6632c);
        rVar.f7856h0 = view;
        return false;
    }

    @Override // e8.a, androidx.fragment.app.s
    public final void B() {
        String strS = a2.a.s("N0jmbqxk7Rs=\n", "ei2IG+oWjHw=\n");
        String strS2 = a2.a.s("Pf+6xqIYCw==\n", "UpHpssNqfzM=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strS2);
        super.B();
        this.i0 = true;
    }

    public final void T(int i6) {
        this.f7860m0 = ((Integer) this.X.d.get(i6)).intValue();
        View view = this.X.f6857e;
        if (view != null) {
            view.setSelected(false);
            this.X.a(this.f7860m0, null);
        }
        VerticalGridView verticalGridView = this.V;
        verticalGridView.smoothScrollToPosition(i6);
        p1 p1VarFindViewHolderForAdapterPosition = verticalGridView.findViewHolderForAdapterPosition(i6);
        View view2 = p1VarFindViewHolderForAdapterPosition != null ? p1VarFindViewHolderForAdapterPosition.itemView : null;
        String str = f7845s0;
        String str2 = a2.a.s("22oVbwf8zkjNciRtAcL/T9lsGmQMgZw=\n", "uAJ0AWC7vCc=\n") + view2 + a2.a.s("MeJggZCtxr1jqi31yQ==\n", "DN9dvK2Qoc8=\n") + this.f7860m0 + a2.a.s("XS9wieh/\n", "YBJNtNVCsJA=\n") + i6;
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(str, str2);
        if (view2 != null) {
            view2.setSelected(true);
            this.X.a(this.f7860m0, view2);
        }
        if (ga.d.d != null && ga.d.d.get(Integer.valueOf(this.f7860m0)) != null) {
            Spark.f8661b2 = ((Group) ga.d.d.get(Integer.valueOf(this.f7860m0))).type;
        }
        c0();
    }

    public final void U(Boolean bool, ChannelBean channelBean) {
        int iD = ga.h.d(channelBean);
        if (bool.booleanValue() && f7849w0 != channelBean.getChid()) {
            f7849w0 = channelBean.getChid();
            g0(iD);
        } else {
            if (channelBean.getSources() == null || channelBean.getSources().isEmpty() || channelBean.getSources().get(0).getAddress() == null) {
                return;
            }
            fa.k kVar = this.f7850b0;
            if (kVar != null) {
                fa.k.f6888n = "";
                kVar.notifyDataSetChanged();
            }
        }
        if (ga.h.a(iD) != null) {
            ArrayList arrayListC = ga.h.c(iD);
            if (arrayListC != null) {
                this.f7858k0.f10256l.h((EpgBeans.EpgBean) arrayListC.get(0));
                if (arrayListC.size() > 1) {
                    this.f7858k0.f10257m.h((EpgBeans.EpgBean) arrayListC.get(1));
                } else {
                    this.f7858k0.f10257m.h(null);
                }
            } else {
                this.f7858k0.f10256l.h(null);
            }
        } else {
            this.f7858k0.f10256l.h(null);
            this.f7858k0.f10257m.h(null);
        }
        String address = channelBean.getSources().get(0).getAddress();
        if (address != null && !address.equals("")) {
            b0(channelBean);
            h0(ea.d.f6631b);
        }
        this.f7858k0.f10255k.h(channelBean);
    }

    public final void V(int i6) {
        HashMap map;
        VerticalGridView verticalGridView = this.V;
        if (verticalGridView == null || verticalGridView.getVisibility() != 0 || (map = this.f7857j0) == null) {
            return;
        }
        Integer[] numArr = (Integer[]) map.keySet().toArray(new Integer[0]);
        int i10 = 0;
        while (true) {
            if (i10 >= numArr.length) {
                Arrays.sort(numArr);
                break;
            } else if (numArr[i10] == null) {
                break;
            } else {
                i10++;
            }
        }
        int length = numArr.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length && numArr[i12].intValue() != i6; i12++) {
            i11++;
        }
        View view = this.X.f6857e;
        if (view != null) {
            view.setSelected(false);
        }
        fa.g0 g0Var = this.X;
        g0Var.f6858g = true;
        o9.d.A(this.V, g0Var, i11);
    }

    public final int W() {
        View view;
        fa.g0 g0Var = this.X;
        if (g0Var == null || (view = g0Var.f6857e) == null) {
            return 0;
        }
        return this.V.getChildViewHolder(view).getAbsoluteAdapterPosition();
    }

    public final boolean X(int i6) {
        Integer num = (Integer) this.X.d.get(i6);
        int iIntValue = num.intValue();
        String str = f7845s0;
        String strJ = ea.q.j("9oIowB3tID7ztAbYCPp0e/iDBN0Myiph\n", "n/FrqHyDTls=\n", new StringBuilder(), iIntValue);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(str, strJ);
        if (iIntValue == -3) {
            return true;
        }
        if (ga.d.d == null) {
            Log.i(str, a2.a.s("RyqL02CQVVNCHKXLdYcBFm0xqdVvm1cYSSunznG9U1dAN63XTJ9L\n", "LlnIuwH+OzY=\n"));
            return true;
        }
        HashMap map = this.f7857j0;
        if (map != null && map.get(num) != null) {
            Group group = (Group) this.f7857j0.get(num);
            Objects.requireNonNull(group);
            if (group.restrictedAccess) {
                return true;
            }
        }
        Group group2 = (Group) ga.d.d.get(num);
        Log.i(str, a2.a.s("UtBLQuBlD0ZQ2kZVmS0=\n", "Pr8qJqMNbig=\n") + group2);
        if (group2 == null) {
            return true;
        }
        Log.i(str, a2.a.s("YHS3FdJ63tpifroCqzI=\n", "DBvWcZESv7Q=\n") + group2.channnels);
        List<ChannelBean> list = group2.channnels;
        if (list == null || list.isEmpty()) {
            return true;
        }
        this.f7860m0 = iIntValue;
        Log.i(str, a2.a.s("CpPlw+GoMYkPpcvb9L9lzAqThsXvsn+pDpDS0g==\n", "Y+Cmq4DGX+w=\n"));
        return false;
    }

    public final void Y(int i6) {
        Group group;
        List<ChannelBean> list;
        if (ga.d.d == null || (group = (Group) ga.d.d.get(Integer.valueOf(i6))) == null || (list = group.channnels) == null) {
            this.f7864q0 = Boolean.FALSE;
        } else {
            this.f7860m0 = i6;
            d0(list);
        }
    }

    public final void Z() {
        int i6 = 1;
        if (!this.i0) {
            String str = f7845s0;
            String strS = a2.a.s("4EvgYS9aqY7oSfpwZh77jf1Q+3s=\n", "iSWJFUo+ieg=\n");
            boolean z7 = org.bitspark.android.utils.m.f8784b;
            Log.i(str, strS);
            return;
        }
        if (this.V.getAdapter() != null) {
            return;
        }
        this.f7857j0.clear();
        if (ga.d.d != null) {
            this.f7857j0.putAll(ga.d.d);
        }
        HashMap map = this.f7857j0;
        n nVar = new n(this, i6);
        fa.g0 g0Var = new fa.g0();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        g0Var.f6856c = linkedHashMap;
        ArrayList arrayList = new ArrayList();
        g0Var.d = arrayList;
        g0Var.f6858g = true;
        g0Var.f6859h = false;
        g0Var.f = nVar;
        linkedHashMap.putAll(map);
        arrayList.addAll(new ArrayList(linkedHashMap.keySet()));
        Collections.sort(arrayList);
        this.X = g0Var;
        this.V.setAdapter(g0Var);
        HashMap map2 = this.f7857j0;
        if (map2 == null || map2.size() == 0) {
            String str2 = f7845s0;
            String strS2 = a2.a.s("O6FM9sjVG+A7oUG8l5dDvVXkALWLnVqAd/xBtZCUWu15/kHrydhEqGL5E7U=\n", "Foxh2+X4Ns0=\n");
            boolean z10 = org.bitspark.android.utils.m.f8784b;
            Log.i(str2, strS2);
            return;
        }
        if (this.V.getVisibility() == 8) {
            this.V.setVisibility(0);
        }
        Set setKeySet = this.f7857j0.keySet();
        Integer[] numArr = (Integer[]) setKeySet.toArray(new Integer[setKeySet.size()]);
        if (numArr == null || numArr.length <= 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            if (i10 >= numArr.length) {
                Arrays.sort(numArr);
                break;
            } else if (numArr[i10] == null) {
                break;
            } else {
                i10++;
            }
        }
        this.f7860m0 = numArr[0].intValue();
        c0();
    }

    public final void a0(int i6) {
        ArrayList arrayList = this.f7862o0;
        if (i6 >= arrayList.size() || i6 < 0) {
            return;
        }
        ChannelBean channelBean = (ChannelBean) arrayList.get(i6);
        String strJ = ea.q.j("YFBtI4yvOWNgUG0jjK85Y2BQbm/BxW4lLjAiacznOg==\n", "Q3NOAK+MGkA=\n", new StringBuilder(), i6);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(f7845s0, strJ);
        if (channelBean != null) {
            U(Boolean.FALSE, channelBean);
        }
    }

    public final void b0(ChannelBean channelBean) {
        if (Spark.f8662c2 || channelBean.getLevel() < 18) {
            ra.f.b().e(channelBean, Boolean.TRUE, 0, ea.d.f6631b.name());
        } else {
            if (this.f7861n0) {
                return;
            }
            this.f7861n0 = true;
            l6.h hVar = new l6.h(j());
            hVar.f8017c = new m(this, channelBean);
            sa.e eVarB = hVar.b();
            eVarB.show();
            eVarB.setOnDismissListener(new ea.t(1, this));
        }
    }

    public final void c0() {
        f7846t0.removeMessages(2);
        f7846t0.sendMessage(Message.obtain(f7846t0, 2, this.f7860m0, 0));
    }

    public final void d0(List list) {
        View view;
        View view2;
        ArrayList arrayListC;
        int i6;
        View view3;
        View view4;
        int i10;
        int i11 = 2;
        int i12 = 0;
        if (this.W == null) {
            this.f7864q0 = Boolean.FALSE;
            a2.a.s("5ZuRKS5u3kDnkZwJDHLeAqmXmCwDaNpCxZ2DOTtv2lmpnYNtA3PTQqXUgigZc81A\n", "ifTwTW0Gvy4=\n");
            return;
        }
        if (list == null || list.isEmpty()) {
            fa.d0 d0Var = this.Y;
            if ((d0Var != null && (view2 = d0Var.f6830e) != null && view2.hasFocus()) || ((view = this.f7856h0) != null && view.hasFocus())) {
                h0(ea.d.f6630a);
            }
            this.W.setVisibility(8);
            this.Z.setVisibility(8);
            this.f7864q0 = Boolean.FALSE;
            return;
        }
        ArrayList arrayList = this.f7862o0;
        arrayList.clear();
        arrayList.addAll(list);
        boolean z7 = Spark.f8662c2;
        HashMap map = this.f7857j0;
        if (z7 && (i10 = this.f7860m0) > 0 && !((Group) map.get(Integer.valueOf(i10))).restrictedAccess) {
            Spark.f8662c2 = false;
            this.X.notifyItemChanged(W());
            Spark.X1.sendEmptyMessage(83);
        }
        if (!Spark.f8662c2 && (i6 = this.f7860m0) > 0 && ((Group) map.get(Integer.valueOf(i6))).restrictedAccess) {
            fa.d0 d0Var2 = this.Y;
            if ((d0Var2 != null && (view4 = d0Var2.f6830e) != null && view4.hasFocus()) || ((view3 = this.f7856h0) != null && view3.hasFocus())) {
                h0(ea.d.f6630a);
            }
            this.W.setVisibility(8);
            this.Z.setVisibility(8);
            if (f7848v0 < ea.h.f6688s) {
                f7848v0++;
                Spark.l0(R.string.Click_Restricted_Group);
            }
            this.f7864q0 = Boolean.FALSE;
            String strS = a2.a.s("m66Gv9OfkpSMr7SowpOCk8msh6TUht3Am66BvtOY\n", "6cv1y6H28eA=\n");
            boolean z10 = org.bitspark.android.utils.m.f8784b;
            Log.i(f7845s0, strS);
            return;
        }
        try {
            i0();
            fa.d0 d0Var3 = this.Y;
            if (d0Var3 == null) {
                fa.d0 d0Var4 = new fa.d0(this.f7860m0, new n(this, i11), arrayList);
                this.Y = d0Var4;
                this.W.setAdapter(d0Var4);
                this.Y.f6874b = new n(this, 3);
            } else {
                int i13 = this.f7860m0;
                d0Var3.b(null);
                d0Var3.f6829c = i13;
                ArrayList arrayList2 = d0Var3.d;
                arrayList2.clear();
                arrayList2.addAll(arrayList);
                d0Var3.notifyDataSetChanged();
                this.W.post(new k(this, i12));
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        if (this.W.getVisibility() == 8) {
            this.W.setVisibility(0);
        }
        int iD = ga.h.d((ChannelBean) arrayList.get(0));
        g0(iD);
        HashMap mapA = ga.h.a(iD);
        Message message = new Message();
        if (mapA != null && (arrayListC = ga.h.c(iD)) != null) {
            Bundle bundle = new Bundle();
            bundle.putSerializable(ea.a.f6613q, (Serializable) arrayListC.get(0));
            if (arrayListC.size() > 1) {
                bundle.putSerializable(ea.a.f6614r, (Serializable) arrayListC.get(1));
            }
            message.setData(bundle);
        }
        message.what = 142;
        Spark.X1.sendMessage(message);
        int i14 = this.f7863p0;
        if (i14 == 1) {
            a0(0);
        } else if (i14 == 2) {
            a0(arrayList.size() - 1);
        }
        this.f7864q0 = Boolean.FALSE;
        this.f7863p0 = 0;
    }

    public final void e0() {
        h0(ea.d.f6631b);
        fa.g0 g0Var = this.X;
        g0Var.f6858g = false;
        View view = g0Var.f6857e;
        if (view != null) {
            view.setSelected(true);
        }
        if (this.Y.f6830e != null) {
            this.W.post(new k(this, 1));
        } else {
            f0();
        }
    }

    public final void f0() {
        VerticalGridView verticalGridView;
        if (this.Y == null || (verticalGridView = this.W) == null) {
            return;
        }
        verticalGridView.post(new k(this, 3));
    }

    public final void g0(int i6) {
        int i10 = 0;
        String strJ = ea.q.j("wXb5V2jckl33Y/B2UtadTZ4z\n", "shOXMySz8zk=\n", new StringBuilder(), i6);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        String str = f7845s0;
        Log.i(str, strJ);
        if (h() != null && h().getCurrentFocus() != null && h().getCurrentFocus().getId() == R.id.group_ch_search) {
            this.Z.setVisibility(8);
            return;
        }
        if (this.Z == null) {
            return;
        }
        HashMap mapA = ga.h.a(i6);
        if (mapA == null) {
            this.Z.setVisibility(8);
            return;
        }
        this.f7856h0 = null;
        try {
            fa.k kVar = new fa.k(mapA, this, this.Z, this.f7855g0, i6, new n(this, i10));
            this.f7850b0 = kVar;
            if (kVar.getGroupCount() == 0) {
                Log.i(str, a2.a.s("VrgPe62woP9bow8lyIeCz32lAWqYo4jOVKNTItg=\n", "OtduH+jg57s=\n"));
                this.Z.setVisibility(8);
                return;
            }
            if (this.f7850b0.getGroupCount() == 1 && this.f7850b0.getChildrenCount(0) == 0) {
                Log.i(str, a2.a.s("+Dh0vTe3i0f1I3TjUoCpd9MleqwCpKN2+iMo5EPH7CP3P3y1FqSjdvojNeRS1w==\n", "lFcV2XLnzAM=\n"));
                this.Z.setVisibility(8);
                return;
            }
            this.Z.setAdapter(this.f7850b0);
            if (this.Z.getVisibility() == 8) {
                this.Z.setVisibility(0);
            }
            this.Z.setGroupIndicator(null);
            this.Z.setOnItemSelectedListener(new w1(2, this));
            this.Z.setOnGroupClickListener(new o(this));
            this.Z.setOnChildClickListener(new p(this, i6));
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void h0(ea.d dVar) {
        fa.d0 d0Var;
        String str = a2.a.s("ntMtDCk75RmC1SwzBS3/KrnPKSVyaA==\n", "7bZZQEhIkV8=\n") + dVar;
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(f7845s0, str);
        this.f7854f0 = dVar;
        if (dVar == ea.d.f6630a) {
            fa.g0 g0Var = this.X;
            if (g0Var != null) {
                g0Var.f6858g = true;
                return;
            }
            return;
        }
        if (dVar != ea.d.f6631b || (d0Var = this.Y) == null) {
            return;
        }
        d0Var.f6831g = true;
    }

    public final void i0() {
        if (this.f7860m0 == -3) {
            String strS = a2.a.s("dCR3+pbSX/hF\n", "N0w2nveiK50=\n");
            StringBuilder sb = new StringBuilder();
            sb.append(a2.a.s("DO8cgxxaWbUO5RGjPkZZ9yHfJ8csXUqvBeRRxyxbQr5a\n", "YIB9518yONs=\n"));
            ArrayList arrayList = this.f7862o0;
            sb.append(arrayList.size());
            String string = sb.toString();
            boolean z7 = org.bitspark.android.utils.m.f8784b;
            Log.i(strS, string);
            Collections.sort(arrayList, new l());
        }
    }

    public final void j0(ChannelBean channelBean, int i6) {
        if (channelBean.getSources() == null || channelBean.getSources().size() == 0 || channelBean.getSources().get(0).getAddress() == null) {
            return;
        }
        fa.k kVar = this.f7850b0;
        if (kVar != null) {
            fa.k.f6888n = "";
            kVar.notifyDataSetChanged();
        }
        int chid = channelBean.getChid();
        if (!ga.d.f.contains("" + chid)) {
            if (channelBean.getLevel() >= 18) {
                return;
            }
            ba.d.a(j(), 0, channelBean.getName().getInit() + " " + j().getString(R.string.favorited)).show();
            HashSet hashSet = ga.d.f;
            StringBuilder sb = new StringBuilder("");
            sb.append(chid);
            hashSet.add(sb.toString());
            org.bitspark.android.utils.m.o(a2.a.s("sMC/0bChYjWqxqXIsr98N63VrA==\n", "45Dgl/H3PXk=\n"), ga.d.f);
            ga.d.a();
            this.f7857j0.clear();
            if (ga.d.d != null) {
                this.f7857j0.putAll(ga.d.d);
            }
            if (!this.f7857j0.isEmpty()) {
                fa.g0 g0Var = this.X;
                HashMap map = this.f7857j0;
                LinkedHashMap linkedHashMap = g0Var.f6856c;
                linkedHashMap.clear();
                linkedHashMap.putAll(map);
                Set setKeySet = linkedHashMap.keySet();
                ArrayList arrayList = g0Var.d;
                arrayList.clear();
                arrayList.addAll(new ArrayList(setKeySet));
                Collections.sort(arrayList);
            }
            this.Y.notifyItemChanged(i6);
            return;
        }
        ba.d.a(j(), 0, channelBean.getName().getInit() + " " + j().getString(R.string.remove_fav)).show();
        HashSet hashSet2 = ga.d.f;
        StringBuilder sb2 = new StringBuilder("");
        sb2.append(chid);
        hashSet2.remove(sb2.toString());
        org.bitspark.android.utils.m.o(a2.a.s("e8DqvbOWDfdhxvCksYgT9WbV+Q==\n", "KJC1+/LAUrs=\n"), ga.d.f);
        ga.d.a();
        if (this.f7860m0 != -5) {
            this.Y.notifyItemChanged(i6);
            return;
        }
        List<ChannelBean> list = ((Group) ga.d.d.get(-5)).channnels;
        if (list == null || list.isEmpty()) {
            Spark.X1.sendEmptyMessage(111);
            Y(-5);
            return;
        }
        i0();
        fa.d0 d0Var = this.Y;
        int i10 = this.f7860m0;
        d0Var.b(null);
        d0Var.f6829c = i10;
        ArrayList arrayList2 = d0Var.d;
        arrayList2.clear();
        arrayList2.addAll(list);
        d0Var.notifyDataSetChanged();
        this.W.postDelayed(new r0(this, i6, list, 6), 300L);
    }

    @Override // ka.b, android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        VerticalGridView verticalGridView;
        String str = a2.a.s("PEmdl1QJrnA8SZ2WEhShXDRVycI=\n", "USzz4jJ7zxc=\n") + keyEvent + a2.a.s("PVEFKjmpqw==\n", "AGw4FwSUlvA=\n") + view;
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        String str2 = f7845s0;
        Log.i(str2, str);
        int id = view.getId();
        boolean z10 = keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0;
        if (z10) {
            if (id == R.id.group_item) {
                if (i6 != 22) {
                    if (i6 != 21 && i6 != 4) {
                        return false;
                    }
                    this.X.f6858g = false;
                    Spark spark = (Spark) h();
                    spark.q0(Boolean.TRUE);
                    o9.d.y(spark.B);
                    spark.B.setChecked(true);
                    this.f7854f0 = null;
                    return true;
                }
                Log.i(str2, a2.a.s("lj6RcQg1v5KCOIhtHR3zsLQVvUs8L4y/oQ26WyojlLOl\n", "8Uz+BHhq0/s=\n"));
                VerticalGridView verticalGridView2 = this.W;
                if (verticalGridView2 != null && verticalGridView2.getVisibility() == 0) {
                    Log.i(str2, a2.a.s("svB0oZF9jRW462GZln2Web/3Ye+RbY01\n", "0ZgVz/8Y4Vk=\n"));
                    e0();
                    return true;
                }
                VerticalGridView verticalGridView3 = this.W;
                if (verticalGridView3 != null || verticalGridView3.getVisibility() == 8) {
                    Log.i(str2, a2.a.s("7u6ryKfazLDk9b7woNrX3OPzpso=\n", "jYbKpsm/oPw=\n"));
                    View view2 = this.X.f6857e;
                    if (view2 != null && view2.getTag() != null && ((Integer) this.X.f6857e.getTag()).intValue() == -5 && f7847u0 < ea.h.f6687r) {
                        f7847u0++;
                        Spark.l0(R.string.Fav_channel);
                    }
                }
                return true;
            }
            if (id == R.id.group_ch_search) {
                if (i6 == 22) {
                    VerticalGridView verticalGridView4 = this.W;
                    if (verticalGridView4 != null && verticalGridView4.getVisibility() != 8) {
                        a2.a.s("APdouAllKZMK7H2ADmUy/w3wffYJdSmz\n", "Y58J1mcARd8=\n");
                        e0();
                    }
                    return true;
                }
                if (i6 == 21 || i6 == 4) {
                    Spark spark2 = (Spark) h();
                    if (spark2 != null) {
                        spark2.q0(Boolean.TRUE);
                        o9.d.y(spark2.B);
                        spark2.B.setChecked(true);
                    }
                    return true;
                }
            } else {
                if (id == R.id.epg_day_item || id == R.id.epg_item || id == R.id.epg_item_1line) {
                    if (i6 != 21 && i6 != 4) {
                        if (i6 == 22) {
                            return true;
                        }
                        if (i6 != 23 && i6 != 66) {
                            return false;
                        }
                        ExpandableListView expandableListView = this.Z;
                        expandableListView.performItemClick(view, expandableListView.getSelectedItemPosition(), 0L);
                        return true;
                    }
                    View view3 = this.f7856h0;
                    if (view3 != null) {
                        view3.setSelected(false);
                    }
                    if (this.W != null) {
                        h0(ea.d.f6631b);
                        fa.d0 d0Var = this.Y;
                        if (d0Var != null && (verticalGridView = this.W) != null && d0Var.f6830e != null) {
                            verticalGridView.post(new k(this, 2));
                        }
                    }
                    return true;
                }
                if (id == R.id.channel_item_content) {
                    if ((i6 == 22 || i6 == 21) && keyEvent.getAction() == 1) {
                        return true;
                    }
                    if (i6 == 22) {
                        ExpandableListView expandableListView2 = this.Z;
                        if (expandableListView2 != null && expandableListView2.getVisibility() != 8) {
                            h0(ea.d.f6632c);
                            this.Y.f6831g = false;
                            View view4 = this.f7856h0;
                            if (view4 != null) {
                                o9.d.y(view4);
                            } else {
                                View childAt = this.Z.getChildAt(0);
                                if (childAt != null) {
                                    o9.d.y(childAt);
                                }
                            }
                        }
                        return true;
                    }
                    if (i6 == 21 || i6 == 4) {
                        this.Y.f6831g = false;
                        h0(ea.d.f6630a);
                        fa.g0 g0Var = this.X;
                        if (g0Var != null) {
                            o9.d.y(g0Var.f6857e);
                        }
                        return true;
                    }
                }
            }
        }
        if (id == R.id.group_ch_search && i6 == 66) {
            if (keyEvent.getAction() == 1) {
                EditText editText = this.f7852d0;
                ((InputMethodManager) editText.getContext().getSystemService(a2.a.s("raEsWN71BhiwpzNJ\n", "xM9cLaqqa30=\n"))).hideSoftInputFromWindow(editText.getWindowToken(), 2);
                o9.d.y(this.f7852d0);
            }
            return true;
        }
        if ((id == R.id.group_item || id == R.id.channel_item_content || id == R.id.epg_day_item || id == R.id.epg_item || id == R.id.epg_item_1line) && i6 == 22 && keyEvent.getRepeatCount() > 0) {
            return true;
        }
        if (i6 != 4) {
            Log.i(str2, a2.a.s("YW4jHAtq2LB+ZRpXHT7goHcoHlUZNdKGYWQNVRcmzqt6KVNZ\n", "DgBoeXJQq8U=\n"));
            return false;
        }
        if (z10) {
            boolean zBooleanValue = org.bitspark.android.utils.m.p(j()).booleanValue();
            if (!Spark.f8669j2 && !zBooleanValue) {
                Spark.X1.sendEmptyMessage(100);
            }
        }
        return true;
    }

    @Override // androidx.fragment.app.s
    public final View t(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.U = layoutInflater.inflate(R.layout.fragment_live, (ViewGroup) null);
        this.f7858k0 = (ta.a) new a1.b(h()).n(ta.a.class);
        RelativeLayout relativeLayout = (RelativeLayout) this.U.findViewById(R.id.live_menu);
        this.f7851c0 = relativeLayout;
        relativeLayout.setOnKeyListener(this);
        VerticalGridView verticalGridView = (VerticalGridView) this.U.findViewById(R.id.vg_group);
        this.V = verticalGridView;
        verticalGridView.setAnimation(null);
        ExpandableListView expandableListView = (ExpandableListView) this.U.findViewById(R.id.epg_listview);
        this.Z = expandableListView;
        expandableListView.setItemsCanFocus(true);
        VerticalGridView verticalGridView2 = (VerticalGridView) this.U.findViewById(R.id.rv_channel);
        this.W = verticalGridView2;
        verticalGridView2.setItemAnimator(null);
        this.f7852d0 = (EditText) this.U.findViewById(R.id.group_ch_search);
        this.f7853e0 = this.U.findViewById(R.id.grouch_ch_search_v);
        this.f7852d0.setImeOptions(3);
        this.f7852d0.setOnKeyListener(this);
        this.f7852d0.addTextChangedListener(new p2(3, this));
        this.f7852d0.setOnFocusChangeListener(new r2(6, this));
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.V.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.W.getLayoutParams();
        int i6 = (layoutParams.width * 420) / 335;
        layoutParams2.width = i6;
        if (ea.h.K) {
            layoutParams2.width = (i6 / 4) + i6;
        }
        if (ea.h.L) {
            layoutParams2.width = (i6 / 2) + layoutParams2.width;
        }
        this.W.setLayoutParams(layoutParams2);
        h().setRequestedOrientation(0);
        return this.U;
    }

    @Override // e8.a, androidx.fragment.app.s
    public final void z() {
        String strS = a2.a.s("mElmzjnPQU8=\n", "1SwIu3+9ICg=\n");
        String strS2 = a2.a.s("N3JtUP5E7Ho=\n", "WBw/NY0xgR8=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strS2);
        super.z();
    }
}
