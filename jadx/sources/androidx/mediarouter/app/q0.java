package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import q1.u0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q0 extends androidx.appcompat.app.i0 {
    public static final /* synthetic */ int S = 0;
    public ImageButton A;
    public Button B;
    public ImageView C;
    public View D;
    public ImageView E;
    public TextView F;
    public TextView G;
    public String H;
    public MediaControllerCompat I;
    public final f0 J;
    public MediaDescriptionCompat K;
    public e0 L;
    public Bitmap M;
    public Uri N;
    public boolean O;
    public Bitmap P;
    public int Q;
    public final boolean R;

    /* renamed from: e, reason: collision with root package name */
    public final u0 f2658e;
    public final i0 f;

    /* renamed from: g, reason: collision with root package name */
    public q1.l0 f2659g;

    /* renamed from: h, reason: collision with root package name */
    public q1.s0 f2660h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f2661i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f2662j;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f2663k;

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f2664l;

    /* renamed from: m, reason: collision with root package name */
    public final Context f2665m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f2666n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f2667o;

    /* renamed from: p, reason: collision with root package name */
    public long f2668p;

    /* renamed from: q, reason: collision with root package name */
    public final c f2669q;

    /* renamed from: r, reason: collision with root package name */
    public RecyclerView f2670r;

    /* renamed from: s, reason: collision with root package name */
    public o0 f2671s;

    /* renamed from: t, reason: collision with root package name */
    public p0 f2672t;

    /* renamed from: u, reason: collision with root package name */
    public HashMap f2673u;

    /* renamed from: v, reason: collision with root package name */
    public q1.s0 f2674v;

    /* renamed from: w, reason: collision with root package name */
    public HashMap f2675w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f2676x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f2677y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f2678z;

    static {
        Log.isLoggable("MediaRouteCtrlDialog", 3);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public q0(Context context) {
        ContextThemeWrapper contextThemeWrapperG = o9.d.g(context, false);
        super(contextThemeWrapperG, o9.d.h(contextThemeWrapperG));
        this.f2659g = q1.l0.f9055c;
        this.f2661i = new ArrayList();
        this.f2662j = new ArrayList();
        this.f2663k = new ArrayList();
        this.f2664l = new ArrayList();
        this.f2669q = new c(2, this);
        Context context2 = getContext();
        this.f2665m = context2;
        this.f2658e = u0.d(context2);
        this.R = u0.g();
        this.f = new i0(this, 0);
        this.f2660h = u0.f();
        this.J = new f0(this);
        k(u0.e());
    }

    public final void i(List list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            q1.s0 s0Var = (q1.s0) list.get(size);
            if (s0Var.d() || !s0Var.f9133g || !s0Var.h(this.f2659g) || this.f2660h == s0Var) {
                list.remove(size);
            }
        }
    }

    public final void j() {
        MediaDescriptionCompat mediaDescriptionCompat = this.K;
        Bitmap iconBitmap = mediaDescriptionCompat == null ? null : mediaDescriptionCompat.getIconBitmap();
        MediaDescriptionCompat mediaDescriptionCompat2 = this.K;
        Uri iconUri = mediaDescriptionCompat2 != null ? mediaDescriptionCompat2.getIconUri() : null;
        e0 e0Var = this.L;
        Bitmap bitmap = e0Var == null ? this.M : e0Var.f2579a;
        Uri uri = e0Var == null ? this.N : e0Var.f2580b;
        if (bitmap != iconBitmap || (bitmap == null && !Objects.equals(uri, iconUri))) {
            e0 e0Var2 = this.L;
            if (e0Var2 != null) {
                e0Var2.cancel(true);
            }
            e0 e0Var3 = new e0(this);
            this.L = e0Var3;
            e0Var3.execute(new Void[0]);
        }
    }

    public final void k(MediaSessionCompat.Token token) {
        MediaControllerCompat mediaControllerCompat = this.I;
        f0 f0Var = this.J;
        if (mediaControllerCompat != null) {
            mediaControllerCompat.unregisterCallback(f0Var);
            this.I = null;
        }
        if (token != null && this.f2667o) {
            MediaControllerCompat mediaControllerCompat2 = new MediaControllerCompat(this.f2665m, token);
            this.I = mediaControllerCompat2;
            mediaControllerCompat2.registerCallback(f0Var);
            MediaMetadataCompat metadata = this.I.getMetadata();
            this.K = metadata != null ? metadata.getDescription() : null;
            j();
            n();
        }
    }

    public final void l(q1.l0 l0Var) {
        if (l0Var == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (this.f2659g.equals(l0Var)) {
            return;
        }
        this.f2659g = l0Var;
        if (this.f2667o) {
            u0 u0Var = this.f2658e;
            i0 i0Var = this.f;
            u0Var.h(i0Var);
            u0Var.a(l0Var, i0Var, 1);
            o();
        }
    }

    public final void m() {
        Context context = this.f2665m;
        getWindow().setLayout(!context.getResources().getBoolean(R.bool.is_tablet) ? -1 : n5.d.v(context), context.getResources().getBoolean(R.bool.is_tablet) ? -2 : -1);
        this.M = null;
        this.N = null;
        j();
        n();
        p();
    }

    public final void n() {
        Bitmap bitmap;
        if ((this.f2674v != null || this.f2676x) ? true : !this.f2666n) {
            this.f2678z = true;
            return;
        }
        this.f2678z = false;
        if (!this.f2660h.g() || this.f2660h.d()) {
            dismiss();
        }
        if (!this.O || (((bitmap = this.P) != null && bitmap.isRecycled()) || this.P == null)) {
            Bitmap bitmap2 = this.P;
            if (bitmap2 != null && bitmap2.isRecycled()) {
                Log.w("MediaRouteCtrlDialog", "Can't set artwork image with recycled bitmap: " + this.P);
            }
            this.E.setVisibility(8);
            this.D.setVisibility(8);
            this.C.setImageBitmap(null);
        } else {
            this.E.setVisibility(0);
            this.E.setImageBitmap(this.P);
            this.E.setBackgroundColor(this.Q);
            this.D.setVisibility(0);
            Bitmap bitmap3 = this.P;
            RenderScript renderScriptCreate = RenderScript.create(this.f2665m);
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap3);
            Allocation allocationCreateTyped = Allocation.createTyped(renderScriptCreate, allocationCreateFromBitmap.getType());
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            scriptIntrinsicBlurCreate.setRadius(10.0f);
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.forEach(allocationCreateTyped);
            Bitmap bitmapCopy = bitmap3.copy(bitmap3.getConfig(), true);
            allocationCreateTyped.copyTo(bitmapCopy);
            allocationCreateFromBitmap.destroy();
            allocationCreateTyped.destroy();
            scriptIntrinsicBlurCreate.destroy();
            renderScriptCreate.destroy();
            this.C.setImageBitmap(bitmapCopy);
        }
        this.O = false;
        this.P = null;
        this.Q = 0;
        MediaDescriptionCompat mediaDescriptionCompat = this.K;
        CharSequence title = mediaDescriptionCompat == null ? null : mediaDescriptionCompat.getTitle();
        boolean zIsEmpty = TextUtils.isEmpty(title);
        MediaDescriptionCompat mediaDescriptionCompat2 = this.K;
        CharSequence subtitle = mediaDescriptionCompat2 != null ? mediaDescriptionCompat2.getSubtitle() : null;
        boolean zIsEmpty2 = TextUtils.isEmpty(subtitle);
        if (zIsEmpty) {
            this.F.setText(this.H);
        } else {
            this.F.setText(title);
        }
        if (zIsEmpty2) {
            this.G.setVisibility(8);
        } else {
            this.G.setText(subtitle);
            this.G.setVisibility(0);
        }
    }

    public final void o() {
        ArrayList arrayList = this.f2661i;
        arrayList.clear();
        ArrayList arrayList2 = this.f2662j;
        arrayList2.clear();
        ArrayList arrayList3 = this.f2663k;
        arrayList3.clear();
        arrayList.addAll(Collections.unmodifiableList(this.f2660h.f9148v));
        q1.p0 p0VarA = this.f2660h.a();
        if (p0VarA != null) {
            q1.r0 r0Var = this.f2660h.f9129a;
            r0Var.getClass();
            u0.b();
            for (q1.s0 s0Var : Collections.unmodifiableList(r0Var.f9123b)) {
                if (p0VarA.o(s0Var)) {
                    arrayList2.add(s0Var);
                }
                q1.z zVar = (q1.z) p0VarA.f9106x.get(s0Var.f9131c);
                if (zVar != null && zVar.f9188e) {
                    arrayList3.add(s0Var);
                }
            }
        }
        i(arrayList2);
        i(arrayList3);
        e eVar = e.d;
        Collections.sort(arrayList, eVar);
        Collections.sort(arrayList2, eVar);
        Collections.sort(arrayList3, eVar);
        this.f2671s.d();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2667o = true;
        this.f2658e.a(this.f2659g, this.f, 1);
        o();
        k(u0.e());
    }

    @Override // androidx.appcompat.app.i0, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mr_cast_dialog);
        Context context = this.f2665m;
        getWindow().getDecorView().setBackgroundColor(u7.d.i(context, o9.d.t(context) ? R.color.mr_dynamic_dialog_background_light : R.color.mr_dynamic_dialog_background_dark));
        ImageButton imageButton = (ImageButton) findViewById(R.id.mr_cast_close_button);
        this.A = imageButton;
        imageButton.setColorFilter(-1);
        this.A.setOnClickListener(new d0(this, 0));
        Button button = (Button) findViewById(R.id.mr_cast_stop_button);
        this.B = button;
        button.setTextColor(-1);
        this.B.setOnClickListener(new d0(this, 1));
        this.f2671s = new o0(this);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.mr_cast_list);
        this.f2670r = recyclerView;
        recyclerView.setAdapter(this.f2671s);
        this.f2670r.setLayoutManager(new LinearLayoutManager(1));
        this.f2672t = new p0(this);
        this.f2673u = new HashMap();
        this.f2675w = new HashMap();
        this.C = (ImageView) findViewById(R.id.mr_cast_meta_background);
        this.D = findViewById(R.id.mr_cast_meta_black_scrim);
        this.E = (ImageView) findViewById(R.id.mr_cast_meta_art);
        TextView textView = (TextView) findViewById(R.id.mr_cast_meta_title);
        this.F = textView;
        textView.setTextColor(-1);
        TextView textView2 = (TextView) findViewById(R.id.mr_cast_meta_subtitle);
        this.G = textView2;
        textView2.setTextColor(-1);
        this.H = context.getResources().getString(R.string.mr_cast_dialog_title_view_placeholder);
        this.f2666n = true;
        m();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f2667o = false;
        this.f2658e.h(this.f);
        this.f2669q.removeCallbacksAndMessages(null);
        k(null);
    }

    public final void p() {
        if (this.f2667o) {
            if (SystemClock.uptimeMillis() - this.f2668p < 300) {
                c cVar = this.f2669q;
                cVar.removeMessages(1);
                cVar.sendEmptyMessageAtTime(1, this.f2668p + 300);
                return;
            }
            if ((this.f2674v != null || this.f2676x) ? true : !this.f2666n) {
                this.f2677y = true;
                return;
            }
            this.f2677y = false;
            if (!this.f2660h.g() || this.f2660h.d()) {
                dismiss();
            }
            this.f2668p = SystemClock.uptimeMillis();
            this.f2671s.c();
        }
    }

    public final void q() {
        if (this.f2677y) {
            p();
        }
        if (this.f2678z) {
            n();
        }
    }
}
