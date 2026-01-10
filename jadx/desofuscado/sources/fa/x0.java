package fa;

import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.view.GradientBorderView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x0 extends o implements Filterable {

    /* renamed from: j, reason: collision with root package name */
    public ArrayList f6972j;

    /* renamed from: k, reason: collision with root package name */
    public FragmentActivity f6973k;

    /* renamed from: l, reason: collision with root package name */
    public int f6974l;

    /* renamed from: m, reason: collision with root package name */
    public final AsyncTask f6975m;

    /* renamed from: n, reason: collision with root package name */
    public g0.g f6976n;

    /* renamed from: o, reason: collision with root package name */
    public g0.g f6977o;

    /* renamed from: p, reason: collision with root package name */
    public o0 f6978p;

    /* renamed from: q, reason: collision with root package name */
    public int[] f6979q;

    /* renamed from: r, reason: collision with root package name */
    public androidx.media3.common.x f6980r;

    static {
        a2.a.s("TYLWTeB2LZ9+gfNq6Wc3lGk=\n", "G+2yDogXQ/E=\n");
    }

    public x0(String str, FragmentActivity fragmentActivity, int i6) {
        super(fragmentActivity, ea.d.f6633e);
        ArrayList arrayList = new ArrayList();
        this.f6972j = arrayList;
        this.f6978p = null;
        this.f6979q = null;
        this.f6980r = null;
        this.f6973k = fragmentActivity;
        arrayList.clear();
        this.f6974l = i6;
        b();
        a2.a.s("jP7OBxl1FOe//esgEGQO7Kg=\n", "2pGqRHEUeok=\n");
        a2.a.s("B3avQHPj/dEFeJhnOvXx5DJsn2kyoKA=\n", "URnrDBqQiYE=\n");
        this.f6975m = new androidx.core.app.h(this).execute(str);
        a2.a.s("xYl/xPx9h1P2ilrj9WydWOE=\n", "k+Ybh5Qc6T0=\n");
        a2.a.s("NTyYDWSraiY3Mq8qLb1mEwAmqCQl6Tc=\n", "Y1PcQQ3YHnY=\n");
    }

    public final void b() {
        FragmentActivity fragmentActivity = this.f6973k;
        this.f6976n = new g0.g(fragmentActivity.getResources(), BitmapFactory.decodeResource(fragmentActivity.getResources(), R.mipmap.loading));
        float fQ = n5.d.q(fragmentActivity, 9);
        this.f6976n.a(fQ);
        g0.g gVar = this.f6976n;
        gVar.d.setAntiAlias(true);
        gVar.invalidateSelf();
        g0.g gVar2 = new g0.g(fragmentActivity.getResources(), BitmapFactory.decodeResource(fragmentActivity.getResources(), R.mipmap.load_error));
        this.f6977o = gVar2;
        gVar2.a(fQ);
        g0.g gVar3 = this.f6977o;
        gVar3.d.setAntiAlias(true);
        gVar3.invalidateSelf();
    }

    @Override // android.widget.Filterable
    public final Filter getFilter() {
        return new v0(this);
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return this.f6972j.size();
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(androidx.recyclerview.widget.p1 p1Var, int i6) {
        w0 w0Var = (w0) p1Var;
        a2.a.s("LImJBkRKZlpmxg==\n", "XOb6bzAjCTQ=\n");
        a2.a.s("G/Ry//cueslfzmP2/3cu\n", "O4cXk5JNDqw=\n");
        a2.a.s("+0MgjuNZJbq+TjG/428t7Ps=\n", "2y1F9pcKQNY=\n");
        boolean z7 = i6 == this.f6926b && this.d >= 0;
        if (this.f6972j.size() == 0) {
            return;
        }
        int size = i6 >= this.f6972j.size() ? this.f6972j.size() - 1 : i6;
        if (ga.o.f7156e == null) {
            return;
        }
        ChannelBean channelBean = (ChannelBean) this.f6972j.get(size);
        String init = channelBean.getName().getInit();
        String big = channelBean.getLogo().getImage().getBig();
        if (big == null || big.isEmpty()) {
            big = channelBean.getLogo().getImage().getSmall();
        }
        if (ga.o.f7156e.contains("" + ((ChannelBean) this.f6972j.get(size)).getChid())) {
            init = ea.q.k("lVat\n", "d84oq2/wm7E=\n", new StringBuilder(), init);
        }
        w0Var.f6968b.setText(init);
        if (z7) {
            GradientBorderView gradientBorderView = w0Var.f6970e;
            if (this.f6979q == null) {
                ArrayList arrayList = new ArrayList();
                String[] strArr = {a2.a.s("vo+MNTb37uatkrcJO/Tz8JeTnAsm7A==\n", "yODoalSYnII=\n"), a2.a.s("z4ez0qtBpEfcmojupkK5UeaFvumtQrM=\n", "uejXjcku1iM=\n"), a2.a.s("GTXjoeNfwS0KKNid7lzcOzA/6Zo=\n", "b1qH/oEws0k=\n"), a2.a.s("xrPdw9Kq00zVrub/36nOWu+51/iC\n", "sNy5nLDFoSg=\n")};
                for (int i10 = 0; i10 < 4; i10++) {
                    String str = strArr[i10];
                    FragmentActivity fragmentActivity = this.f6973k;
                    int identifier = fragmentActivity.getResources().getIdentifier(str, a2.a.s("d7DbRp8=\n", "FN+3Ke0JpeY=\n"), fragmentActivity.getPackageName());
                    if (identifier != 0) {
                        arrayList.add(Integer.valueOf(u7.d.i(fragmentActivity, identifier)));
                    }
                }
                if (arrayList.size() == 1) {
                    arrayList.add((Integer) arrayList.get(0));
                }
                int[] iArr = new int[arrayList.size()];
                for (int i11 = 0; i11 < arrayList.size(); i11++) {
                    iArr[i11] = ((Integer) arrayList.get(i11)).intValue();
                }
                this.f6979q = iArr;
            }
            gradientBorderView.setColor(this.f6979q);
            int i12 = this.f6926b;
            if (i12 != this.f6927c) {
                this.f6927c = i12;
            }
            w0Var.f6968b.getPaint().setFakeBoldText(true);
        } else {
            w0Var.f6970e.setColor(0);
            w0Var.f6968b.getPaint().setFakeBoldText(false);
        }
        w0Var.itemView.setSelected(z7);
        w0Var.f6969c.setOnFocusChangeListener(new h0());
        int chid = channelBean.getChid();
        if (ga.o.f7156e.contains("" + chid)) {
            w0Var.d.setVisibility(0);
        } else {
            w0Var.d.setVisibility(8);
        }
        int iQ = n5.d.q(this.f6973k, 9);
        com.bumptech.glide.l lVar = (com.bumptech.glide.l) ((com.bumptech.glide.l) ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.e(this.f6973k).o(big).l(this.f6976n)).f(this.f6977o)).d(x2.k.d)).r(false);
        lVar.getClass();
        com.bumptech.glide.l lVar2 = (com.bumptech.glide.l) lVar.t(e3.n.d, new e3.h());
        n3.e eVar = new n3.e();
        v2.a aVar = v2.a.f10657b;
        lVar2.a(n3.e.x(new e3.x(iQ))).B(w0Var.f6967a);
        w0Var.itemView.setOnLongClickListener(new t0(this, channelBean, chid, i6));
        w0Var.itemView.setOnClickListener(new u0(this, i6, w0Var, channelBean));
    }

    @Override // androidx.recyclerview.widget.k0
    public final androidx.recyclerview.widget.p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        View viewI = a.e.i(viewGroup, R.layout.vod_channel_item, viewGroup, false);
        w0 w0Var = new w0(viewI);
        w0Var.f6969c = viewI.findViewById(R.id.cell_root);
        w0Var.f6967a = (ImageView) viewI.findViewById(R.id.image);
        w0Var.f6968b = (TextView) viewI.findViewById(R.id.channel_name);
        w0Var.f6970e = (GradientBorderView) viewI.findViewById(R.id.image_border);
        w0Var.d = (ImageView) viewI.findViewById(R.id.collectedIcon);
        return w0Var;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onViewRecycled(androidx.recyclerview.widget.p1 p1Var) {
        w0 w0Var = (w0) p1Var;
        super.onViewRecycled(w0Var);
        com.bumptech.glide.b.e(w0Var.f6967a.getContext()).k(w0Var.f6967a);
    }
}
