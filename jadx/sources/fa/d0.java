package fa;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import java.util.ArrayList;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.EpgBeans;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d0 extends i0 {

    /* renamed from: i, reason: collision with root package name */
    public static final String f6828i = a2.a.s("mTjZdbhPyVK4AP58qVXCRQ==\n", "1EGaHdkhpzc=\n");

    /* renamed from: c, reason: collision with root package name */
    public int f6829c;
    public final ArrayList d;

    /* renamed from: e, reason: collision with root package name */
    public View f6830e;
    public final ka.n f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f6831g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f6832h;

    public d0(int i6, ka.n nVar, ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        this.d = arrayList2;
        this.f6831g = true;
        this.f6832h = false;
        this.f6829c = i6;
        arrayList2.addAll(arrayList);
        this.f = nVar;
    }

    public final int a() {
        int i6 = this.f6829c;
        int i10 = ra.f.b().f9645j;
        String str = f6828i;
        if (i6 != i10) {
            String strS = a2.a.s("eZM8xEcdj9P6Wd5WrOwMXpfBuw6jsXBtLttz\n", "HuFTsTdU6/M=\n");
            boolean z7 = org.bitspark.android.utils.m.f8784b;
            Log.i(str, strS);
            return 0;
        }
        int iIndexOf = this.d.indexOf(ra.f.b().f9641e);
        String strJ = ea.q.j("WxC0rgkIPCFSEpCRFgAxIVMb+t4=\n", "PHXA/mVpRUg=\n", new StringBuilder(), iIndexOf);
        boolean z10 = org.bitspark.android.utils.m.f8784b;
        Log.i(str, strJ);
        return iIndexOf;
    }

    public final void b(View view) {
        String str = a2.a.s("mKYbjyjRduOfpguKJNhkuss=\n", "68Nv3E29E4A=\n") + view;
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(f6828i, str);
        this.f6830e = view;
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return this.d.size();
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(androidx.recyclerview.widget.p1 p1Var, int i6) {
        c0 c0Var = (c0) p1Var;
        int absoluteAdapterPosition = c0Var.getAbsoluteAdapterPosition();
        ChannelBean channelBean = (ChannelBean) this.d.get(absoluteAdapterPosition);
        int iD = ga.h.d(channelBean);
        String init = channelBean.getName().getInit();
        ArrayList arrayListC = ga.h.c(iD);
        String name = (arrayListC == null || arrayListC.isEmpty()) ? "" : ((EpgBeans.EpgBean) arrayListC.get(0)).getName();
        boolean zIsEmpty = TextUtils.isEmpty(name);
        if (ea.h.K) {
            c0Var.f6822c.setVisibility(0);
        } else {
            c0Var.f6822c.setVisibility(8);
        }
        c0Var.itemView.setOnFocusChangeListener(new a0(this, absoluteAdapterPosition, channelBean));
        int i10 = 1;
        c0Var.itemView.setOnClickListener(new q(this, i6, i10));
        c0Var.itemView.setOnTouchListener(new h(i6, i10, this));
        c0Var.itemView.setOnLongClickListener(new b0(this, absoluteAdapterPosition));
        c0Var.itemView.setOnKeyListener(new f(absoluteAdapterPosition, 1, this));
        ChannelBean.LogoBean.ImageBean image = channelBean.getLogo().getImage();
        String big = !TextUtils.isEmpty(image.getBig()) ? image.getBig() : image.getSmall();
        if (ea.h.K) {
            boolean zIsEmpty2 = big.isEmpty();
            x2.k kVar = x2.k.f10912c;
            if (zIsEmpty2) {
                com.bumptech.glide.l lVar = (com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.e(c0Var.itemView.getContext()).n(Integer.valueOf(R.mipmap.channel_logo_holder)).a(n3.e.x(new e3.x(6))).d(kVar)).r(false);
                lVar.getClass();
                ((com.bumptech.glide.l) lVar.p(i3.j.f7336b, Boolean.TRUE)).B(c0Var.f6822c);
            } else {
                com.bumptech.glide.l lVar2 = (com.bumptech.glide.l) ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.e(c0Var.itemView.getContext()).o(big).k()).a(n3.e.x(new e3.x(6))).d(kVar)).r(false);
                lVar2.getClass();
                ((com.bumptech.glide.l) lVar2.p(i3.j.f7336b, Boolean.TRUE)).B(c0Var.f6822c);
            }
        }
        if (this.f6829c != -3 && channelBean.getSid() > 0) {
            init = channelBean.getSid() + a2.a.s("4w==\n", "zUfwsJQdFN8=\n") + init;
        }
        c0Var.f6820a.setText(init);
        if (zIsEmpty) {
            c0Var.f6821b.setVisibility(8);
            c0Var.f6823e.setVisibility(0);
        } else {
            c0Var.f6821b.setVisibility(0);
            c0Var.f6823e.setVisibility(8);
            c0Var.f6821b.setText(name);
        }
        c0Var.itemView.setTag(channelBean);
        if (ga.d.f.contains("" + channelBean.getChid())) {
            c0Var.d.setVisibility(0);
        } else {
            c0Var.d.setVisibility(8);
        }
    }

    @Override // androidx.recyclerview.widget.k0
    public final androidx.recyclerview.widget.p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        View viewI = a.e.i(viewGroup, R.layout.my_channel_item, viewGroup, false);
        c0 c0Var = new c0(viewI);
        c0Var.d = (ImageView) viewI.findViewById(R.id.channel_type_icon);
        c0Var.f6820a = (TextView) viewI.findViewById(R.id.channel_name);
        c0Var.f6823e = (TextView) viewI.findViewById(R.id.topView);
        c0Var.f6821b = (TextView) viewI.findViewById(R.id.program_item);
        c0Var.f6822c = (ImageView) viewI.findViewById(R.id.channel_logo);
        return c0Var;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onViewRecycled(androidx.recyclerview.widget.p1 p1Var) {
        c0 c0Var = (c0) p1Var;
        super.onViewRecycled(c0Var);
        com.bumptech.glide.b.e(c0Var.itemView.getContext()).k(c0Var.d);
        com.bumptech.glide.b.e(c0Var.itemView.getContext()).k(c0Var.f6822c);
    }
}
