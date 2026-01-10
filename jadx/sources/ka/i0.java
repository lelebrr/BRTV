package ka;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.r0;
import androidx.fragment.app.FragmentActivity;
import androidx.leanback.widget.VerticalGridView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.p2elite.brtv2.R;
import fa.q0;
import java.util.ArrayList;
import org.bitspark.android.R$drawable;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.HistoryBean;
import org.bitspark.android.view.AlwaysMarqueeTextView;
import org.bitspark.android.view.LeanbackTabLayout;
import org.bitspark.android.view.MyProcessRelativeLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class i0 extends b {
    public static final String i0;
    public ta.a U;
    public ViewStub V;
    public LeanbackTabLayout X;
    public ImageView Z;

    /* renamed from: b0, reason: collision with root package name */
    public View f7795b0;

    /* renamed from: c0, reason: collision with root package name */
    public MyProcessRelativeLayout f7796c0;

    /* renamed from: e0, reason: collision with root package name */
    public ViewPager2 f7798e0;

    /* renamed from: f0, reason: collision with root package name */
    public RelativeLayout f7799f0;

    /* renamed from: g0, reason: collision with root package name */
    public RecyclerView f7800g0;
    public q0 W = null;
    public int Y = 7;

    /* renamed from: d0, reason: collision with root package name */
    public final Handler f7797d0 = new Handler(Looper.myLooper());

    /* renamed from: h0, reason: collision with root package name */
    public boolean f7801h0 = false;

    static {
        a2.a.s("IBmK39Y/8/QaMJz61Cb38wI=\n", "dnbum7NLkp0=\n");
        i0 = a2.a.s("IsE6pT8DZw==\n", "SqhJ0VBxHjQ=\n");
        a2.a.s("CVJ4Hw==\n", "YT0VelOynv0=\n");
    }

    public final void Q() {
        int i6 = this.U.f10263s;
        int currentItem = this.f7798e0.getCurrentItem();
        String str = a2.a.s("iw==\n", "7aLLekYKds4=\n") + this.U.f10263s;
        if (((sa.l) h().k().z(str)) != null && i6 == currentItem) {
            R(str);
            return;
        }
        this.f7801h0 = true;
        LeanbackTabLayout leanbackTabLayout = this.X;
        leanbackTabLayout.l(leanbackTabLayout.h(i6), true);
    }

    public final void R(String str) {
        sa.l lVar = (sa.l) h().k().z(str);
        if (lVar != null) {
            fa.m0 m0Var = lVar.T;
            if ((m0Var != null ? m0Var.d : null) != null) {
                int iE = this.U.e(m0Var != null ? m0Var.d : null);
                if (iE != -1) {
                    this.f7797d0.postDelayed(new r0(this, str, iE, 7, false), 200L);
                    return;
                }
                x6.h hVarH = this.X.h(this.U.f10263s);
                if (hVarH != null) {
                    o9.d.y(hVarH.f11062g);
                }
            }
        }
    }

    public final void S(ChannelBean channelBean, String str) {
        if (org.bitspark.android.utils.o.f.f8791e) {
            int seasons = channelBean.getSeasons();
            String str2 = i0;
            if (seasons <= 1) {
                if (channelBean.getSources() == null || channelBean.getSources().isEmpty()) {
                    this.f7796c0.setVisibility(0);
                    this.f7796c0.setOnClickListener(new e0(this, 1));
                    this.f7796c0.requestFocus();
                    return;
                }
                if (channelBean.getSources() != null && channelBean.getSources().size() == 1) {
                    T();
                    this.f7796c0.setVisibility(0);
                    this.f7796c0.setOnClickListener(new g0(this, channelBean));
                    this.f7796c0.requestFocus();
                    return;
                }
                fa.m0 m0Var = new fa.m0();
                m0Var.f6917c = 7;
                ArrayList arrayList = new ArrayList();
                m0Var.d = arrayList;
                m0Var.f6918e = channelBean;
                arrayList.addAll(channelBean.getSources());
                m0Var.f6916b = new a0(this, 0);
                m0Var.f6915a = new h0(this, m0Var, channelBean);
                m0Var.f6917c = this.Y;
                this.f7800g0.setAdapter(m0Var);
                this.f7800g0.setVisibility(0);
                if (!str.equals(str2)) {
                    o9.d.y(this.f7800g0);
                    return;
                }
                RecyclerView recyclerView = this.f7800g0;
                if (recyclerView != null) {
                    fa.m0 m0Var2 = (fa.m0) recyclerView.getAdapter();
                    m0Var2.notifyDataSetChanged();
                    this.f7797d0.postDelayed(new a3.c(this, 21, m0Var2), 200L);
                    return;
                }
                return;
            }
            this.f7800g0.setVisibility(8);
            this.f7799f0.setVisibility(0);
            this.X.setupWithViewPager(this.f7798e0);
            ViewPager2 viewPager2 = this.f7798e0;
            viewPager2.setAdapter(new d0(this, (FragmentActivity) j(), channelBean, viewPager2, seasons));
            this.X.a(new b0());
            LeanbackTabLayout leanbackTabLayout = this.X;
            ViewPager2 viewPager22 = this.f7798e0;
            x6.o oVar = new x6.o(leanbackTabLayout, viewPager22, new j7.c(7, this));
            if (oVar.f11087e) {
                throw new IllegalStateException("TabLayoutMediator is already attached");
            }
            androidx.recyclerview.widget.k0 adapter = viewPager22.getAdapter();
            oVar.d = adapter;
            if (adapter == null) {
                throw new IllegalStateException("TabLayoutMediator attached before ViewPager2 has an adapter");
            }
            oVar.f11087e = true;
            viewPager22.registerOnPageChangeCallback(new x6.n(leanbackTabLayout));
            leanbackTabLayout.a(new x6.l(viewPager22, 1));
            oVar.d.registerAdapterDataObserver(new x6.m(oVar));
            oVar.a();
            leanbackTabLayout.n(viewPager22.getCurrentItem(), 0.0f, true, true);
            for (int i6 = 0; i6 < this.X.getTabCount(); i6++) {
                x6.h hVarH = this.X.h(i6);
                if (hVarH != null) {
                    hVarH.f11062g.setNextFocusDownId(R.id.episode_list_view);
                    hVarH.f11062g.setOnKeyListener(new fa.l(this, 3, hVarH));
                }
            }
            if (this.X.getVisibility() == 0) {
                if (str.equals(str2)) {
                    ViewPager2 viewPager23 = this.f7798e0;
                    if (viewPager23 != null) {
                        viewPager23.post(new a.f(22, this));
                        return;
                    }
                    return;
                }
                x6.h hVarH2 = this.X.h(0);
                if (hVarH2 != null) {
                    o9.d.y(hVarH2.f11062g);
                }
            }
        }
    }

    public final void T() {
        int i6;
        ChannelBean channelBean = this.U.f10261q;
        if (channelBean == null || this.f7795b0 == null || this.f7796c0 == null) {
            return;
        }
        int i10 = 0;
        ChannelBean.SourcesBean sourcesBean = channelBean.getSources().get(0);
        HistoryBean historyBeanA = ga.i.a(channelBean.getChid(), "" + sourcesBean.getId());
        long j10 = 0;
        if (historyBeanA != null) {
            long j11 = historyBeanA.lastPosition;
            if (j11 > 0) {
                j10 = j11;
            }
        }
        if (historyBeanA != null && (i6 = historyBeanA.duration) > 0) {
            i10 = (((int) j10) * 100) / i6;
        }
        this.f7796c0.setProgress(i10);
    }

    public final void U(ChannelBean channelBean, String str) {
        AlwaysMarqueeTextView alwaysMarqueeTextView;
        TextView textView;
        this.U.f10261q = channelBean;
        View view = this.f7795b0;
        if (view == null || channelBean == null) {
            return;
        }
        ImageView imageView = (ImageView) view.findViewById(R.id.vod_image);
        ImageView imageView2 = (ImageView) this.f7795b0.findViewById(R.id.iv_vod_detail_bg);
        AlwaysMarqueeTextView alwaysMarqueeTextView2 = (AlwaysMarqueeTextView) this.f7795b0.findViewById(R.id.vod_detail_name);
        this.f7796c0.setBackgroundPaintColor(j().getResources().getColor(R.color.white));
        TextView textView2 = (TextView) this.f7795b0.findViewById(R.id.tv_ratingbar);
        LinearLayout linearLayout = (LinearLayout) this.f7795b0.findViewById(R.id.ll_ratingbar);
        TextView textView3 = (TextView) this.f7795b0.findViewById(R.id.vod_tag);
        textView3.setText(str);
        textView3.setVisibility(0);
        TextView textView4 = (TextView) this.f7795b0.findViewById(R.id.vod_description);
        this.f7799f0 = (RelativeLayout) this.f7795b0.findViewById(R.id.vod_season_layout);
        this.f7800g0.setVisibility(8);
        this.f7799f0.setVisibility(8);
        if (channelBean.getLogo() == null || channelBean.getLogo().getImage() == null || channelBean.getLogo().getImage().getBig() == null) {
            alwaysMarqueeTextView = alwaysMarqueeTextView2;
            textView = textView4;
        } else {
            Context contextJ = j();
            String big = channelBean.getLogo().getImage().getBig();
            if (big == null || big.isEmpty()) {
                big = channelBean.getLogo().getImage().getSmall();
            }
            com.bumptech.glide.l lVar = (com.bumptech.glide.l) com.bumptech.glide.b.f(this).o(big).f(m().getDrawable(R$drawable.shape_leftbg));
            x2.k kVar = x2.k.d;
            com.bumptech.glide.l lVar2 = (com.bumptech.glide.l) ((com.bumptech.glide.l) lVar.d(kVar)).r(false);
            n3.e eVar = new n3.e();
            v2.a aVar = v2.a.f10657b;
            v2.g gVar = e3.p.f;
            n3.a aVarP = eVar.p(gVar, aVar);
            v2.g gVar2 = i3.j.f7335a;
            com.bumptech.glide.l lVarY = lVar2.a(aVarP.p(gVar2, aVar));
            g3.b bVar = new g3.b();
            textView = textView4;
            alwaysMarqueeTextView = alwaysMarqueeTextView2;
            bVar.f3579a = new j7.c(21, false);
            lVarY.E(bVar).B(imageView2);
            g0.g gVar3 = new g0.g(contextJ.getResources(), BitmapFactory.decodeResource(contextJ.getResources(), R.mipmap.loading));
            float fQ = n5.d.q(h(), 4);
            gVar3.a(fQ);
            gVar3.d.setAntiAlias(true);
            gVar3.invalidateSelf();
            g0.g gVar4 = new g0.g(contextJ.getResources(), BitmapFactory.decodeResource(contextJ.getResources(), R.mipmap.load_error));
            gVar4.a(fQ);
            gVar4.d.setAntiAlias(true);
            gVar4.invalidateSelf();
            if (this.U.h()) {
                org.bitspark.android.utils.b.c().getClass();
            }
            com.bumptech.glide.l lVar3 = (com.bumptech.glide.l) ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.e(j()).o(big).f(gVar4)).d(kVar)).r(false);
            lVar3.getClass();
            com.bumptech.glide.l lVar4 = (com.bumptech.glide.l) lVar3.t(e3.n.d, new e3.h());
            com.bumptech.glide.l lVarY2 = lVar4.a(n3.e.x(new e3.x(8)));
            g3.b bVar2 = new g3.b();
            bVar2.f3579a = new j7.c(21, false);
            lVarY2.E(bVar2).B(imageView);
        }
        if (channelBean.getRating() > 0.0f) {
            this.W.f6943a = channelBean.getRating() / 2.0f;
            this.W.notifyDataSetChanged();
            textView2.setText(channelBean.getRating() + "");
            linearLayout.setVisibility(0);
        } else {
            linearLayout.setVisibility(8);
        }
        TextView textView5 = (TextView) this.f7795b0.findViewById(R.id.tv_year);
        if (channelBean.getYear() != 0) {
            textView5.setText(channelBean.getYear() + "");
            textView5.setVisibility(0);
        } else {
            textView5.setVisibility(8);
        }
        if (channelBean.getName() != null && channelBean.getName().getInit() != null && !channelBean.getName().getInit().equals("")) {
            AlwaysMarqueeTextView alwaysMarqueeTextView3 = alwaysMarqueeTextView;
            alwaysMarqueeTextView3.setText(channelBean.getName().getInit());
            alwaysMarqueeTextView3.setVisibility(0);
        }
        if (channelBean.getDescription() == null || channelBean.getDescription().isEmpty()) {
            textView.setVisibility(8);
            return;
        }
        TextView textView6 = textView;
        textView6.setMaxLines(8);
        textView6.setEllipsize(TextUtils.TruncateAt.END);
        textView6.setText(channelBean.getDescription());
        textView6.setVisibility(0);
    }

    @Override // androidx.fragment.app.s
    public final View t(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws Resources.NotFoundException {
        this.U = (ta.a) new a1.b(J()).n(ta.a.class);
        View viewInflate = layoutInflater.inflate(R.layout.fragment_vod_detail, (ViewGroup) null, false);
        this.f7795b0 = viewInflate;
        this.V = (ViewStub) viewInflate.findViewById(R.id.vod_vg);
        this.Z = (ImageView) this.f7795b0.findViewById(R.id.backImage);
        sa.b bVar = new sa.b(0, 0, n5.d.q(h(), 5), n5.d.q(h(), 11));
        if (this.U.h()) {
            this.Z.setVisibility(0);
            this.V.setLayoutResource(R.layout.layout_vod_recyclerview);
            this.V.inflate();
            RecyclerView recyclerView = (RecyclerView) this.f7795b0.findViewById(R.id.vod_rv);
            recyclerView.addItemDecoration(bVar);
            this.f7800g0 = recyclerView;
        } else {
            this.Z.setVisibility(8);
            this.V.setLayoutResource(R.layout.layout_vertical_grid_view);
            this.V.inflate();
            VerticalGridView verticalGridView = (VerticalGridView) this.f7795b0.findViewById(R.id.vod_vgv);
            verticalGridView.addItemDecoration(bVar);
            this.f7800g0 = verticalGridView;
        }
        ta.a aVar = this.U;
        String str = aVar.f10259o;
        ChannelBean channelBean = aVar.f10261q;
        if (str == null || !str.equals(i0)) {
            this.U.f10260p = ea.d.f6633e;
        } else {
            this.U.f10260p = ea.d.f;
        }
        Context contextJ = j();
        this.Z.setOnClickListener(new e0(this, 0));
        this.X = (LeanbackTabLayout) this.f7795b0.findViewById(R.id.tab_layout);
        this.f7796c0 = (MyProcessRelativeLayout) this.f7795b0.findViewById(R.id.vod_play);
        ViewPager2 viewPager2 = (ViewPager2) this.f7795b0.findViewById(R.id.view_pager);
        this.f7798e0 = viewPager2;
        viewPager2.registerOnPageChangeCallback(new f0(this));
        this.f7796c0.setOnKeyListener(new a0(this, 1));
        RecyclerView recyclerView2 = (RecyclerView) this.f7795b0.findViewById(R.id.hg_ratingbar);
        q0 q0Var = new q0();
        q0Var.f6943a = 0.0f;
        this.W = q0Var;
        recyclerView2.setAdapter(q0Var);
        androidx.recyclerview.widget.l lVar = new androidx.recyclerview.widget.l(contextJ);
        Drawable drawable = contextJ.getResources().getDrawable(R$drawable.shape_rating_bar_divider);
        if (drawable == null) {
            throw new IllegalArgumentException("Drawable cannot be null.");
        }
        lVar.f2884a = drawable;
        recyclerView2.setLayoutManager(new LinearLayoutManager(0));
        recyclerView2.addItemDecoration(lVar);
        U(channelBean, str);
        View viewFindViewById = this.f7795b0.findViewById(R.id.detail_content);
        viewFindViewById.post(new androidx.appcompat.app.c(this, viewFindViewById, new androidx.media3.exoplayer.hls.b(this, channelBean, str, 8), 4));
        return this.f7795b0;
    }

    @Override // e8.a, androidx.fragment.app.s
    public final void v() {
        super.v();
        View view = this.f7795b0;
        if (view != null) {
            ImageView imageView = (ImageView) view.findViewById(R.id.vod_image);
            ImageView imageView2 = (ImageView) this.f7795b0.findViewById(R.id.iv_vod_detail_bg);
            com.bumptech.glide.b.f(this).k(imageView);
            com.bumptech.glide.b.f(this).k(imageView2);
        }
    }
}
