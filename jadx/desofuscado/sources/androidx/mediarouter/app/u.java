package androidx.mediarouter.app;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import q1.u0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u extends androidx.appcompat.app.j {

    /* renamed from: p0, reason: collision with root package name */
    public static final int f2694p0;
    public RelativeLayout A;
    public LinearLayout B;
    public View C;
    public OverlayListView D;
    public t E;
    public ArrayList F;
    public HashSet G;
    public HashSet H;
    public HashSet I;
    public SeekBar J;
    public s K;
    public q1.s0 L;
    public int M;
    public int N;
    public int O;
    public final int P;
    public HashMap Q;
    public MediaControllerCompat R;
    public final r S;
    public PlaybackStateCompat T;
    public MediaDescriptionCompat U;
    public q V;
    public Bitmap W;
    public Uri X;
    public boolean Y;
    public Bitmap Z;

    /* renamed from: b0, reason: collision with root package name */
    public int f2695b0;

    /* renamed from: c0, reason: collision with root package name */
    public boolean f2696c0;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f2697d0;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f2698e0;
    public final u0 f;

    /* renamed from: f0, reason: collision with root package name */
    public boolean f2699f0;

    /* renamed from: g, reason: collision with root package name */
    public final i0 f2700g;

    /* renamed from: g0, reason: collision with root package name */
    public boolean f2701g0;

    /* renamed from: h, reason: collision with root package name */
    public final q1.s0 f2702h;

    /* renamed from: h0, reason: collision with root package name */
    public int f2703h0;

    /* renamed from: i, reason: collision with root package name */
    public final Context f2704i;
    public int i0;

    /* renamed from: j, reason: collision with root package name */
    public boolean f2705j;

    /* renamed from: j0, reason: collision with root package name */
    public int f2706j0;

    /* renamed from: k, reason: collision with root package name */
    public boolean f2707k;

    /* renamed from: k0, reason: collision with root package name */
    public Interpolator f2708k0;

    /* renamed from: l, reason: collision with root package name */
    public int f2709l;

    /* renamed from: l0, reason: collision with root package name */
    public final Interpolator f2710l0;

    /* renamed from: m, reason: collision with root package name */
    public Button f2711m;

    /* renamed from: m0, reason: collision with root package name */
    public final Interpolator f2712m0;

    /* renamed from: n, reason: collision with root package name */
    public Button f2713n;

    /* renamed from: n0, reason: collision with root package name */
    public final AccessibilityManager f2714n0;

    /* renamed from: o, reason: collision with root package name */
    public ImageButton f2715o;

    /* renamed from: o0, reason: collision with root package name */
    public final i f2716o0;

    /* renamed from: p, reason: collision with root package name */
    public MediaRouteExpandCollapseButton f2717p;

    /* renamed from: q, reason: collision with root package name */
    public FrameLayout f2718q;

    /* renamed from: r, reason: collision with root package name */
    public LinearLayout f2719r;

    /* renamed from: s, reason: collision with root package name */
    public FrameLayout f2720s;

    /* renamed from: t, reason: collision with root package name */
    public ImageView f2721t;

    /* renamed from: u, reason: collision with root package name */
    public TextView f2722u;

    /* renamed from: v, reason: collision with root package name */
    public TextView f2723v;

    /* renamed from: w, reason: collision with root package name */
    public TextView f2724w;

    /* renamed from: x, reason: collision with root package name */
    public final boolean f2725x;

    /* renamed from: y, reason: collision with root package name */
    public final boolean f2726y;

    /* renamed from: z, reason: collision with root package name */
    public LinearLayout f2727z;

    static {
        Log.isLoggable("MediaRouteCtrlDialog", 3);
        f2694p0 = (int) TimeUnit.SECONDS.toMillis(30L);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public u(Context context) {
        ContextThemeWrapper contextThemeWrapperG = o9.d.g(context, true);
        super(contextThemeWrapperG, o9.d.h(contextThemeWrapperG));
        this.f2725x = true;
        this.f2716o0 = new i(0, this);
        Context context2 = getContext();
        this.f2704i = context2;
        this.S = new r(this);
        this.f = u0.d(context2);
        this.f2726y = u0.g();
        this.f2700g = new i0(this, 3);
        this.f2702h = u0.f();
        r(u0.e());
        this.P = context2.getResources().getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_padding_top);
        this.f2714n0 = (AccessibilityManager) context2.getSystemService("accessibility");
        this.f2710l0 = AnimationUtils.loadInterpolator(contextThemeWrapperG, R.interpolator.mr_linear_out_slow_in);
        this.f2712m0 = AnimationUtils.loadInterpolator(contextThemeWrapperG, R.interpolator.mr_fast_out_slow_in);
    }

    public static void q(int i6, View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i6;
        view.setLayoutParams(layoutParams);
    }

    public final void j(int i6, View view) {
        m mVar = new m(view.getLayoutParams().height, i6, 0, view);
        mVar.setDuration(this.f2703h0);
        mVar.setInterpolator(this.f2708k0);
        view.startAnimation(mVar);
    }

    public final boolean k() {
        return (this.U == null && this.T == null) ? false : true;
    }

    public final void l(boolean z7) {
        HashSet hashSet;
        int firstVisiblePosition = this.D.getFirstVisiblePosition();
        for (int i6 = 0; i6 < this.D.getChildCount(); i6++) {
            View childAt = this.D.getChildAt(i6);
            q1.s0 s0Var = (q1.s0) this.E.getItem(firstVisiblePosition + i6);
            if (!z7 || (hashSet = this.G) == null || !hashSet.contains(s0Var)) {
                ((LinearLayout) childAt.findViewById(R.id.volume_item_container)).setVisibility(0);
                AnimationSet animationSet = new AnimationSet(true);
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 1.0f);
                alphaAnimation.setDuration(0L);
                animationSet.addAnimation(alphaAnimation);
                new TranslateAnimation(0.0f, 0.0f, 0.0f, 0.0f).setDuration(0L);
                animationSet.setFillAfter(true);
                animationSet.setFillEnabled(true);
                childAt.clearAnimation();
                childAt.startAnimation(animationSet);
            }
        }
        Iterator it = this.D.f2542a.iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            r0Var.f2687j = true;
            r0Var.f2688k = true;
            a7.f fVar = r0Var.f2689l;
            if (fVar != null) {
                u uVar = (u) fVar.f170c;
                uVar.I.remove((q1.s0) fVar.f169b);
                uVar.E.notifyDataSetChanged();
            }
        }
        if (z7) {
            return;
        }
        m(false);
    }

    public final void m(boolean z7) {
        this.G = null;
        this.H = null;
        this.f2699f0 = false;
        if (this.f2701g0) {
            this.f2701g0 = false;
            v(z7);
        }
        this.D.setEnabled(true);
    }

    public final int n(int i6, int i10) {
        return i6 >= i10 ? (int) (((this.f2709l * i10) / i6) + 0.5f) : (int) (((this.f2709l * 9.0f) / 16.0f) + 0.5f);
    }

    public final int o(boolean z7) {
        if (!z7 && this.B.getVisibility() != 0) {
            return 0;
        }
        int paddingBottom = this.f2727z.getPaddingBottom() + this.f2727z.getPaddingTop();
        if (z7) {
            paddingBottom += this.A.getMeasuredHeight();
        }
        int measuredHeight = this.B.getVisibility() == 0 ? this.B.getMeasuredHeight() + paddingBottom : paddingBottom;
        return (z7 && this.B.getVisibility() == 0) ? this.C.getMeasuredHeight() + measuredHeight : measuredHeight;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2707k = true;
        this.f.a(q1.l0.f9055c, this.f2700g, 2);
        r(u0.e());
    }

    @Override // androidx.appcompat.app.j, androidx.appcompat.app.i0, android.app.Dialog
    public final void onCreate(Bundle bundle) throws Resources.NotFoundException {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        setContentView(R.layout.mr_controller_material_dialog_b);
        findViewById(android.R.id.button3).setVisibility(8);
        p pVar = new p(this);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.mr_expandable_area);
        this.f2718q = frameLayout;
        frameLayout.setOnClickListener(new k(this, 1));
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.mr_dialog_area);
        this.f2719r = linearLayout;
        linearLayout.setOnClickListener(new j());
        Context context = this.f2704i;
        int iR = o9.d.r(context, 0, R.attr.colorPrimary);
        if (f0.a.c(iR, o9.d.r(context, 0, android.R.attr.colorBackground)) < 3.0d) {
            iR = o9.d.r(context, 0, R.attr.colorAccent);
        }
        Button button = (Button) findViewById(android.R.id.button2);
        this.f2711m = button;
        button.setText(R.string.mr_controller_disconnect);
        this.f2711m.setTextColor(iR);
        this.f2711m.setOnClickListener(pVar);
        Button button2 = (Button) findViewById(android.R.id.button1);
        this.f2713n = button2;
        button2.setText(R.string.mr_controller_stop_casting);
        this.f2713n.setTextColor(iR);
        this.f2713n.setOnClickListener(pVar);
        this.f2724w = (TextView) findViewById(R.id.mr_name);
        ((ImageButton) findViewById(R.id.mr_close)).setOnClickListener(pVar);
        this.f2720s = (FrameLayout) findViewById(R.id.mr_default_control);
        k kVar = new k(this, 2);
        ImageView imageView = (ImageView) findViewById(R.id.mr_art);
        this.f2721t = imageView;
        imageView.setOnClickListener(kVar);
        findViewById(R.id.mr_control_title_container).setOnClickListener(kVar);
        this.f2727z = (LinearLayout) findViewById(R.id.mr_media_main_control);
        this.C = findViewById(R.id.mr_control_divider);
        this.A = (RelativeLayout) findViewById(R.id.mr_playback_control);
        this.f2722u = (TextView) findViewById(R.id.mr_control_title);
        this.f2723v = (TextView) findViewById(R.id.mr_control_subtitle);
        ImageButton imageButton = (ImageButton) findViewById(R.id.mr_control_playback_ctrl);
        this.f2715o = imageButton;
        imageButton.setOnClickListener(pVar);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.mr_volume_control);
        this.B = linearLayout2;
        linearLayout2.setVisibility(8);
        SeekBar seekBar = (SeekBar) findViewById(R.id.mr_volume_slider);
        this.J = seekBar;
        q1.s0 s0Var = this.f2702h;
        seekBar.setTag(s0Var);
        s sVar = new s(this);
        this.K = sVar;
        this.J.setOnSeekBarChangeListener(sVar);
        this.D = (OverlayListView) findViewById(R.id.mr_volume_group_list);
        this.F = new ArrayList();
        t tVar = new t(this, this.D.getContext(), this.F);
        this.E = tVar;
        this.D.setAdapter((ListAdapter) tVar);
        this.I = new HashSet();
        LinearLayout linearLayout3 = this.f2727z;
        OverlayListView overlayListView = this.D;
        boolean zP = p();
        int iR2 = o9.d.r(context, 0, R.attr.colorPrimary);
        int iR3 = o9.d.r(context, 0, R.attr.colorPrimaryDark);
        if (zP && o9.d.l(context, 0) == -570425344) {
            iR3 = iR2;
            iR2 = -1;
        }
        linearLayout3.setBackgroundColor(iR2);
        overlayListView.setBackgroundColor(iR3);
        linearLayout3.setTag(Integer.valueOf(iR2));
        overlayListView.setTag(Integer.valueOf(iR3));
        MediaRouteVolumeSlider mediaRouteVolumeSlider = (MediaRouteVolumeSlider) this.J;
        LinearLayout linearLayout4 = this.f2727z;
        int iL = o9.d.l(context, 0);
        if (Color.alpha(iL) != 255) {
            iL = f0.a.f(iL, ((Integer) linearLayout4.getTag()).intValue());
        }
        mediaRouteVolumeSlider.a(iL, iL);
        HashMap map = new HashMap();
        this.Q = map;
        map.put(s0Var, this.J);
        MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton = (MediaRouteExpandCollapseButton) findViewById(R.id.mr_group_expand_collapse);
        this.f2717p = mediaRouteExpandCollapseButton;
        mediaRouteExpandCollapseButton.f2538i = new k(this, 0);
        this.f2708k0 = this.f2698e0 ? this.f2710l0 : this.f2712m0;
        this.f2703h0 = context.getResources().getInteger(R.integer.mr_controller_volume_group_list_animation_duration_ms);
        this.i0 = context.getResources().getInteger(R.integer.mr_controller_volume_group_list_fade_in_duration_ms);
        this.f2706j0 = context.getResources().getInteger(R.integer.mr_controller_volume_group_list_fade_out_duration_ms);
        this.f2705j = true;
        u();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.f.h(this.f2700g);
        r(null);
        this.f2707k = false;
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.app.j, android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i6, KeyEvent keyEvent) {
        if (i6 != 25 && i6 != 24) {
            return super.onKeyDown(i6, keyEvent);
        }
        if (this.f2726y || !this.f2698e0) {
            this.f2702h.k(i6 == 25 ? -1 : 1);
        }
        return true;
    }

    @Override // androidx.appcompat.app.j, android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i6, KeyEvent keyEvent) {
        if (i6 == 25 || i6 == 24) {
            return true;
        }
        return super.onKeyUp(i6, keyEvent);
    }

    public final boolean p() {
        q1.s0 s0Var = this.f2702h;
        return s0Var.e() && Collections.unmodifiableList(s0Var.f9148v).size() > 1;
    }

    public final void r(MediaSessionCompat.Token token) {
        MediaControllerCompat mediaControllerCompat = this.R;
        r rVar = this.S;
        if (mediaControllerCompat != null) {
            mediaControllerCompat.unregisterCallback(rVar);
            this.R = null;
        }
        if (token != null && this.f2707k) {
            MediaControllerCompat mediaControllerCompat2 = new MediaControllerCompat(this.f2704i, token);
            this.R = mediaControllerCompat2;
            mediaControllerCompat2.registerCallback(rVar);
            MediaMetadataCompat metadata = this.R.getMetadata();
            this.U = metadata != null ? metadata.getDescription() : null;
            this.T = this.R.getPlaybackState();
            t();
            s(false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0166  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void s(boolean r13) {
        /*
            Method dump skipped, instructions count: 497
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.u.s(boolean):void");
    }

    public final void t() {
        MediaDescriptionCompat mediaDescriptionCompat = this.U;
        Bitmap iconBitmap = mediaDescriptionCompat == null ? null : mediaDescriptionCompat.getIconBitmap();
        MediaDescriptionCompat mediaDescriptionCompat2 = this.U;
        Uri iconUri = mediaDescriptionCompat2 != null ? mediaDescriptionCompat2.getIconUri() : null;
        q qVar = this.V;
        Bitmap bitmap = qVar == null ? this.W : qVar.f2654a;
        Uri uri = qVar == null ? this.X : qVar.f2655b;
        if (bitmap == iconBitmap) {
            if (bitmap != null) {
                return;
            }
            if (uri != null && uri.equals(iconUri)) {
                return;
            }
            if (uri == null && iconUri == null) {
                return;
            }
        }
        if (!p() || this.f2726y) {
            q qVar2 = this.V;
            if (qVar2 != null) {
                qVar2.cancel(true);
            }
            q qVar3 = new q(this);
            this.V = qVar3;
            qVar3.execute(new Void[0]);
        }
    }

    public final void u() throws Resources.NotFoundException {
        Context context = this.f2704i;
        int iV = n5.d.v(context);
        getWindow().setLayout(iV, -2);
        View decorView = getWindow().getDecorView();
        this.f2709l = (iV - decorView.getPaddingLeft()) - decorView.getPaddingRight();
        Resources resources = context.getResources();
        this.M = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_item_icon_size);
        this.N = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_item_height);
        this.O = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_max_height);
        this.W = null;
        this.X = null;
        t();
        s(false);
    }

    public final void v(boolean z7) {
        this.f2720s.requestLayout();
        this.f2720s.getViewTreeObserver().addOnGlobalLayoutListener(new l(this, z7));
    }

    public final void w(boolean z7) {
        int i6 = 0;
        this.C.setVisibility((this.B.getVisibility() == 0 && z7) ? 0 : 8);
        LinearLayout linearLayout = this.f2727z;
        if (this.B.getVisibility() == 8 && !z7) {
            i6 = 8;
        }
        linearLayout.setVisibility(i6);
    }
}
