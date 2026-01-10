package com.google.android.gms.cast.framework.media.widget;

import android.app.Activity;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.renderscript.Allocation;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.g0;
import androidx.appcompat.app.s0;
import androidx.appcompat.app.x0;
import androidx.appcompat.widget.Toolbar;
import b5.l;
import c2.b;
import com.google.android.gms.cast.AdBreakClipInfo;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.internal.cast.h0;
import com.google.android.gms.internal.cast.i0;
import com.google.android.gms.internal.cast.j0;
import com.google.android.gms.internal.cast.k0;
import com.google.android.gms.internal.cast.l0;
import com.google.android.gms.internal.cast.l2;
import com.google.android.gms.internal.cast.m0;
import com.google.android.gms.internal.cast.m2;
import com.google.android.gms.internal.cast.n0;
import com.google.android.gms.internal.cast.o0;
import com.p2elite.brtv2.R;
import java.lang.reflect.InvocationTargetException;
import java.util.Timer;
import q4.a;
import q4.d;
import q4.f;
import r4.n;
import u4.c;
import u4.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class ExpandedControllerActivity extends AppCompatActivity {

    /* renamed from: n0, reason: collision with root package name */
    public static final /* synthetic */ int f3868n0 = 0;
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public TextView R;
    public CastSeekBar S;
    public ImageView T;
    public ImageView U;
    public int[] V;
    public View X;
    public View Y;
    public ImageView Z;

    /* renamed from: b0, reason: collision with root package name */
    public TextView f3869b0;

    /* renamed from: c0, reason: collision with root package name */
    public TextView f3870c0;

    /* renamed from: d0, reason: collision with root package name */
    public TextView f3871d0;

    /* renamed from: e0, reason: collision with root package name */
    public TextView f3872e0;

    /* renamed from: f0, reason: collision with root package name */
    public b f3873f0;

    /* renamed from: g0, reason: collision with root package name */
    public t4.b f3874g0;

    /* renamed from: h0, reason: collision with root package name */
    public f f3875h0;
    public j0 i0;

    /* renamed from: j0, reason: collision with root package name */
    public boolean f3876j0;

    /* renamed from: k0, reason: collision with root package name */
    public boolean f3877k0;

    /* renamed from: l0, reason: collision with root package name */
    public Timer f3878l0;

    /* renamed from: m0, reason: collision with root package name */
    public String f3879m0;

    /* renamed from: z, reason: collision with root package name */
    public int f3882z;

    /* renamed from: x, reason: collision with root package name */
    public final c f3880x = new c(this);

    /* renamed from: y, reason: collision with root package name */
    public final e f3881y = new e(this);
    public final ImageView[] W = new ImageView[4];

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) throws IllegalAccessException, Resources.NotFoundException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.onCreate(bundle);
        f fVarA = a.b(this).a();
        this.f3875h0 = fVarA;
        if (fVarA.c() == null) {
            finish();
        }
        t4.b bVar = new t4.b(this);
        this.f3874g0 = bVar;
        l.b("Must be called from the main thread.");
        bVar.f = this.f3881y;
        setContentView(R.layout.cast_expanded_controller_activity);
        TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(new int[]{R.attr.selectableItemBackgroundBorderless});
        this.f3882z = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = obtainStyledAttributes(null, d.f9222a, R.attr.castExpandedControllerStyle, R.style.CastExpandedController);
        this.N = typedArrayObtainStyledAttributes2.getResourceId(7, 0);
        this.A = typedArrayObtainStyledAttributes2.getResourceId(16, 0);
        this.B = typedArrayObtainStyledAttributes2.getResourceId(15, 0);
        this.C = typedArrayObtainStyledAttributes2.getResourceId(26, 0);
        this.D = typedArrayObtainStyledAttributes2.getResourceId(25, 0);
        this.E = typedArrayObtainStyledAttributes2.getResourceId(24, 0);
        this.F = typedArrayObtainStyledAttributes2.getResourceId(17, 0);
        this.G = typedArrayObtainStyledAttributes2.getResourceId(12, 0);
        this.H = typedArrayObtainStyledAttributes2.getResourceId(14, 0);
        this.I = typedArrayObtainStyledAttributes2.getResourceId(8, 0);
        int resourceId = typedArrayObtainStyledAttributes2.getResourceId(9, 0);
        if (resourceId != 0) {
            TypedArray typedArrayObtainTypedArray = getResources().obtainTypedArray(resourceId);
            if (typedArrayObtainTypedArray.length() != 4) {
                throw new IllegalArgumentException();
            }
            this.V = new int[typedArrayObtainTypedArray.length()];
            for (int i6 = 0; i6 < typedArrayObtainTypedArray.length(); i6++) {
                this.V[i6] = typedArrayObtainTypedArray.getResourceId(i6, 0);
            }
            typedArrayObtainTypedArray.recycle();
        } else {
            this.V = new int[]{R.id.cast_button_type_empty, R.id.cast_button_type_empty, R.id.cast_button_type_empty, R.id.cast_button_type_empty};
        }
        this.M = typedArrayObtainStyledAttributes2.getColor(11, 0);
        this.J = getResources().getColor(typedArrayObtainStyledAttributes2.getResourceId(4, 0));
        this.K = getResources().getColor(typedArrayObtainStyledAttributes2.getResourceId(3, 0));
        this.L = getResources().getColor(typedArrayObtainStyledAttributes2.getResourceId(6, 0));
        this.O = typedArrayObtainStyledAttributes2.getResourceId(5, 0);
        this.P = typedArrayObtainStyledAttributes2.getResourceId(1, 0);
        this.Q = typedArrayObtainStyledAttributes2.getResourceId(2, 0);
        int resourceId2 = typedArrayObtainStyledAttributes2.getResourceId(10, 0);
        if (resourceId2 != 0) {
            this.f3879m0 = getApplicationContext().getResources().getString(resourceId2);
        }
        typedArrayObtainStyledAttributes2.recycle();
        View viewFindViewById = findViewById(R.id.expanded_controller_layout);
        t4.b bVar2 = this.f3874g0;
        this.T = (ImageView) viewFindViewById.findViewById(R.id.background_image_view);
        this.U = (ImageView) viewFindViewById.findViewById(R.id.blurred_background_image_view);
        View viewFindViewById2 = viewFindViewById.findViewById(R.id.background_place_holder_image_view);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        ImageView imageView = this.T;
        ImageHints imageHints = new ImageHints(4, displayMetrics.widthPixels, displayMetrics.heightPixels);
        c cVar = new c(this);
        bVar2.getClass();
        l.b("Must be called from the main thread.");
        bVar2.s(imageView, new i0(imageView, bVar2.f10138a, imageHints, viewFindViewById2, cVar));
        this.R = (TextView) viewFindViewById.findViewById(R.id.status_text);
        ProgressBar progressBar = (ProgressBar) viewFindViewById.findViewById(R.id.loading_indicator);
        Drawable indeterminateDrawable = progressBar.getIndeterminateDrawable();
        int i10 = this.M;
        if (i10 != 0) {
            indeterminateDrawable.setColorFilter(i10, PorterDuff.Mode.SRC_IN);
        }
        l.b("Must be called from the main thread.");
        bVar2.s(progressBar, new l0(progressBar));
        TextView textView = (TextView) viewFindViewById.findViewById(R.id.start_text);
        TextView textView2 = (TextView) viewFindViewById.findViewById(R.id.end_text);
        CastSeekBar castSeekBar = (CastSeekBar) viewFindViewById.findViewById(R.id.cast_seek_bar);
        this.S = castSeekBar;
        l.b("Must be called from the main thread.");
        l2.a(m2.SEEK_CONTROLLER);
        castSeekBar.f = new s2.c(2, bVar2);
        n nVar = bVar2.f10141e;
        bVar2.s(castSeekBar, new h0(castSeekBar, nVar));
        t4.a m0Var = new m0(textView, nVar, 1);
        l.b("Must be called from the main thread.");
        bVar2.s(textView, m0Var);
        t4.a m0Var2 = new m0(textView2, nVar, 0);
        l.b("Must be called from the main thread.");
        bVar2.s(textView2, m0Var2);
        View viewFindViewById3 = viewFindViewById.findViewById(R.id.live_indicators);
        t4.a n0Var = new n0(viewFindViewById3, nVar);
        l.b("Must be called from the main thread.");
        bVar2.s(viewFindViewById3, n0Var);
        RelativeLayout relativeLayout = (RelativeLayout) viewFindViewById.findViewById(R.id.tooltip_container);
        o0 o0Var = new o0(relativeLayout, this.S, nVar);
        l.b("Must be called from the main thread.");
        bVar2.s(relativeLayout, o0Var);
        bVar2.d.add(o0Var);
        ImageView imageView2 = (ImageView) viewFindViewById.findViewById(R.id.button_0);
        ImageView[] imageViewArr = this.W;
        imageViewArr[0] = imageView2;
        imageViewArr[1] = (ImageView) viewFindViewById.findViewById(R.id.button_1);
        imageViewArr[2] = (ImageView) viewFindViewById.findViewById(R.id.button_2);
        imageViewArr[3] = (ImageView) viewFindViewById.findViewById(R.id.button_3);
        q(viewFindViewById, R.id.button_0, this.V[0], bVar2);
        q(viewFindViewById, R.id.button_1, this.V[1], bVar2);
        q(viewFindViewById, R.id.button_play_pause_toggle, R.id.cast_button_type_play_pause_toggle, bVar2);
        q(viewFindViewById, R.id.button_2, this.V[2], bVar2);
        q(viewFindViewById, R.id.button_3, this.V[3], bVar2);
        View viewFindViewById4 = findViewById(R.id.ad_container);
        this.X = viewFindViewById4;
        this.Z = (ImageView) viewFindViewById4.findViewById(R.id.ad_image_view);
        this.Y = this.X.findViewById(R.id.ad_background_image_view);
        TextView textView3 = (TextView) this.X.findViewById(R.id.ad_label);
        this.f3870c0 = textView3;
        textView3.setTextColor(this.L);
        this.f3870c0.setBackgroundColor(this.J);
        this.f3869b0 = (TextView) this.X.findViewById(R.id.ad_in_progress_label);
        this.f3872e0 = (TextView) findViewById(R.id.ad_skip_text);
        TextView textView4 = (TextView) findViewById(R.id.ad_skip_button);
        this.f3871d0 = textView4;
        textView4.setOnClickListener(new androidx.appcompat.app.a(21, this));
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        g0 g0Var = (g0) m();
        if (g0Var.f273j instanceof Activity) {
            g0Var.B();
            l5.a aVar = g0Var.f278o;
            if (aVar instanceof x0) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            g0Var.f279p = null;
            if (aVar != null) {
                aVar.C();
            }
            g0Var.f278o = null;
            if (toolbar != null) {
                Object obj = g0Var.f273j;
                s0 s0Var = new s0(toolbar, obj instanceof Activity ? ((Activity) obj).getTitle() : g0Var.f280q, g0Var.f276m);
                g0Var.f278o = s0Var;
                g0Var.f276m.f386b = s0Var.f358t;
                toolbar.setBackInvokedCallbackEnabled(true);
            } else {
                g0Var.f276m.f386b = null;
            }
            g0Var.b();
        }
        l5.a aVarN = n();
        if (aVarN != null) {
            aVarN.K(true);
            aVarN.L();
        }
        s();
        t();
        TextView textView5 = this.f3869b0;
        if (textView5 != null && this.Q != 0) {
            if (Build.VERSION.SDK_INT >= 23) {
                textView5.setTextAppearance(this.P);
            } else {
                textView5.setTextAppearance(getApplicationContext(), this.P);
            }
            this.f3869b0.setTextColor(this.K);
            this.f3869b0.setText(this.Q);
        }
        b bVar3 = new b(getApplicationContext(), new ImageHints(-1, this.Z.getWidth(), this.Z.getHeight()));
        this.f3873f0 = bVar3;
        bVar3.f = new c(this);
        l2.a(m2.CAF_EXPANDED_CONTROLLER);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        b bVar = this.f3873f0;
        bVar.j();
        bVar.f = null;
        t4.b bVar2 = this.f3874g0;
        if (bVar2 != null) {
            l.b("Must be called from the main thread.");
            bVar2.f = null;
            t4.b bVar3 = this.f3874g0;
            bVar3.getClass();
            l.b("Must be called from the main thread.");
            bVar3.q();
            bVar3.f10140c.clear();
            f fVar = bVar3.f10139b;
            if (fVar != null) {
                fVar.e(bVar3);
            }
            bVar3.f = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        finish();
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        f fVar = this.f3875h0;
        if (fVar == null) {
            return;
        }
        q4.b bVarC = fVar.c();
        j0 j0Var = this.i0;
        if (j0Var != null && bVarC != null) {
            l.b("Must be called from the main thread.");
            bVarC.d.remove(j0Var);
            this.i0 = null;
        }
        this.f3875h0.e(this.f3880x);
        super.onPause();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0068  */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onResume() {
        /*
            r9 = this;
            r0 = 2
            r1 = 1
            r2 = 0
            q4.f r3 = r9.f3875h0
            if (r3 != 0) goto L8
            return
        L8:
            u4.c r4 = r9.f3880x
            r3.a(r4)
            q4.f r3 = r9.f3875h0
            q4.b r3 = r3.c()
            if (r3 == 0) goto L68
            boolean r4 = r3.a()
            java.lang.String r5 = "Must be called from the main thread."
            if (r4 != 0) goto L58
            b5.l.b(r5)
            q4.u r4 = r3.f9224a
            if (r4 == 0) goto L54
            q4.s r4 = (q4.s) r4     // Catch: android.os.RemoteException -> L3e
            android.os.Parcel r6 = r4.l()     // Catch: android.os.RemoteException -> L3e
            r7 = 6
            android.os.Parcel r4 = r4.w(r6, r7)     // Catch: android.os.RemoteException -> L3e
            int r6 = com.google.android.gms.internal.cast.d0.f4128a     // Catch: android.os.RemoteException -> L3e
            int r6 = r4.readInt()     // Catch: android.os.RemoteException -> L3e
            if (r6 == 0) goto L39
            r6 = 1
            goto L3a
        L39:
            r6 = 0
        L3a:
            r4.recycle()     // Catch: android.os.RemoteException -> L3e
            goto L55
        L3e:
            r4 = move-exception
            java.lang.Class<q4.u> r6 = q4.u.class
            java.lang.String r6 = r6.getSimpleName()
            java.lang.Object[] r7 = new java.lang.Object[r0]
            java.lang.String r8 = "isConnecting"
            r7[r2] = r8
            r7[r1] = r6
            java.lang.String r6 = "Unable to call %s on %s."
            v4.b r8 = q4.e.f9223b
            r8.a(r4, r6, r7)
        L54:
            r6 = 0
        L55:
            if (r6 != 0) goto L58
            goto L68
        L58:
            com.google.android.gms.internal.cast.j0 r4 = new com.google.android.gms.internal.cast.j0
            r4.<init>(r0, r9)
            r9.i0 = r4
            b5.l.b(r5)
            java.util.HashSet r0 = r3.d
            r0.add(r4)
            goto L6b
        L68:
            r9.finish()
        L6b:
            r4.f r0 = r9.p()
            if (r0 == 0) goto L79
            boolean r0 = r0.i()
            if (r0 != 0) goto L78
            goto L79
        L78:
            r1 = 0
        L79:
            r9.f3876j0 = r1
            r9.s()
            r9.u()
            super.onResume()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity.onResume():void");
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() ^ 4102);
            setImmersive(true);
        }
    }

    public final r4.f p() {
        q4.b bVarC = this.f3875h0.c();
        if (bVarC == null || !bVarC.a()) {
            return null;
        }
        return bVarC.f();
    }

    public final void q(View view, int i6, int i10, t4.b bVar) {
        ImageView imageView = (ImageView) view.findViewById(i6);
        if (i10 == R.id.cast_button_type_empty) {
            imageView.setVisibility(4);
            return;
        }
        if (i10 == R.id.cast_button_type_play_pause_toggle) {
            imageView.setBackgroundResource(this.f3882z);
            Drawable drawableA = u4.f.a(this, this.N, this.B);
            Drawable drawableA2 = u4.f.a(this, this.N, this.A);
            Drawable drawableA3 = u4.f.a(this, this.N, this.C);
            imageView.setImageDrawable(drawableA2);
            bVar.getClass();
            l.b("Must be called from the main thread.");
            l2.a(m2.PAUSE_CONTROLLER);
            imageView.setOnClickListener(new t4.c(bVar, 1));
            bVar.s(imageView, new k0(imageView, bVar.f10138a, drawableA2, drawableA, drawableA3));
            return;
        }
        if (i10 == R.id.cast_button_type_skip_previous) {
            imageView.setBackgroundResource(this.f3882z);
            imageView.setImageDrawable(u4.f.a(this, this.N, this.D));
            imageView.setContentDescription(getResources().getString(R.string.cast_skip_prev));
            bVar.getClass();
            l.b("Must be called from the main thread.");
            imageView.setOnClickListener(new t4.c(bVar, 3));
            bVar.s(imageView, new l0(imageView, 1));
            return;
        }
        if (i10 == R.id.cast_button_type_skip_next) {
            imageView.setBackgroundResource(this.f3882z);
            imageView.setImageDrawable(u4.f.a(this, this.N, this.E));
            imageView.setContentDescription(getResources().getString(R.string.cast_skip_next));
            bVar.getClass();
            l.b("Must be called from the main thread.");
            imageView.setOnClickListener(new t4.c(bVar, 2));
            bVar.s(imageView, new l0(imageView, 0));
            return;
        }
        if (i10 == R.id.cast_button_type_rewind_30_seconds) {
            imageView.setBackgroundResource(this.f3882z);
            imageView.setImageDrawable(u4.f.a(this, this.N, this.F));
            imageView.setContentDescription(getResources().getString(R.string.cast_rewind_30));
            bVar.getClass();
            l.b("Must be called from the main thread.");
            imageView.setOnClickListener(new t4.c(bVar, 5));
            bVar.s(imageView, new h0(imageView, bVar.f10141e, 1));
            return;
        }
        if (i10 == R.id.cast_button_type_forward_30_seconds) {
            imageView.setBackgroundResource(this.f3882z);
            imageView.setImageDrawable(u4.f.a(this, this.N, this.G));
            imageView.setContentDescription(getResources().getString(R.string.cast_forward_30));
            bVar.getClass();
            l.b("Must be called from the main thread.");
            imageView.setOnClickListener(new t4.c(bVar, 4));
            bVar.s(imageView, new h0(imageView, bVar.f10141e, 0));
            return;
        }
        if (i10 == R.id.cast_button_type_mute_toggle) {
            imageView.setBackgroundResource(this.f3882z);
            imageView.setImageDrawable(u4.f.a(this, this.N, this.H));
            bVar.getClass();
            l.b("Must be called from the main thread.");
            imageView.setOnClickListener(new t4.c(bVar, 0));
            bVar.s(imageView, new i0(imageView, bVar.f10138a));
            return;
        }
        if (i10 == R.id.cast_button_type_closed_caption) {
            imageView.setBackgroundResource(this.f3882z);
            imageView.setImageDrawable(u4.f.a(this, this.N, this.I));
            bVar.getClass();
            l.b("Must be called from the main thread.");
            imageView.setOnClickListener(new t4.c(bVar, 6));
            bVar.s(imageView, new com.google.android.gms.internal.cast.g0(imageView, bVar.f10138a));
        }
    }

    public final void r(r4.f fVar) {
        MediaStatus mediaStatusF;
        if (this.f3876j0 || (mediaStatusF = fVar.f()) == null || fVar.j()) {
            return;
        }
        this.f3871d0.setVisibility(8);
        this.f3872e0.setVisibility(8);
        AdBreakClipInfo adBreakClipInfoJ = mediaStatusF.j();
        if (adBreakClipInfoJ != null) {
            long j10 = adBreakClipInfoJ.f3632j;
            if (j10 != -1) {
                if (!this.f3877k0) {
                    u4.d dVar = new u4.d(this, fVar);
                    Timer timer = new Timer();
                    this.f3878l0 = timer;
                    timer.scheduleAtFixedRate(dVar, 0L, 500L);
                    this.f3877k0 = true;
                }
                if (j10 - fVar.b() > 0.0f) {
                    this.f3872e0.setVisibility(0);
                    this.f3872e0.setText(getResources().getString(R.string.cast_expanded_controller_skip_ad_text, Integer.valueOf((int) Math.ceil(r14 / 1000.0f))));
                    this.f3871d0.setClickable(false);
                } else {
                    if (this.f3877k0) {
                        this.f3878l0.cancel();
                        this.f3877k0 = false;
                    }
                    this.f3871d0.setVisibility(0);
                    this.f3871d0.setClickable(true);
                }
            }
        }
    }

    public final void s() {
        CastDevice castDeviceE;
        q4.b bVarC = this.f3875h0.c();
        if (bVarC != null && (castDeviceE = bVarC.e()) != null) {
            String str = castDeviceE.d;
            if (!TextUtils.isEmpty(str)) {
                this.R.setText(getResources().getString(R.string.cast_casting_to_device, str));
                return;
            }
        }
        this.R.setText("");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0056 A[PHI: r0
  0x0056: PHI (r0v8 java.lang.String) = (r0v6 java.lang.String), (r0v7 java.lang.String) binds: [B:28:0x0054, B:31:0x005e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void t() {
        /*
            r7 = this;
            r4.f r0 = r7.p()
            if (r0 == 0) goto L72
            boolean r1 = r0.i()
            if (r1 == 0) goto L72
            com.google.android.gms.cast.MediaInfo r0 = r0.e()
            if (r0 == 0) goto L72
            com.google.android.gms.cast.MediaMetadata r0 = r0.d
            if (r0 == 0) goto L72
            l5.a r1 = r7.n()
            if (r1 == 0) goto L72
            java.lang.String r2 = "com.google.android.gms.cast.metadata.TITLE"
            r3 = 1
            com.google.android.gms.cast.MediaMetadata.j(r3, r2)
            android.os.Bundle r4 = r0.f3717b
            java.lang.String r2 = r4.getString(r2)
            r1.P(r2)
            v4.b r2 = s4.l.f9818a
            java.lang.String r2 = "com.google.android.gms.cast.metadata.SUBTITLE"
            boolean r5 = r4.containsKey(r2)
            if (r5 != 0) goto L66
            int r0 = r0.f3718c
            if (r0 == r3) goto L64
            r5 = 2
            if (r0 == r5) goto L61
            r5 = 3
            java.lang.String r6 = "com.google.android.gms.cast.metadata.ARTIST"
            if (r0 == r5) goto L47
            r5 = 4
            if (r0 == r5) goto L45
            goto L66
        L45:
            r2 = r6
            goto L66
        L47:
            boolean r0 = r4.containsKey(r6)
            if (r0 == 0) goto L4e
            goto L45
        L4e:
            java.lang.String r0 = "com.google.android.gms.cast.metadata.ALBUM_ARTIST"
            boolean r5 = r4.containsKey(r0)
            if (r5 == 0) goto L58
        L56:
            r2 = r0
            goto L66
        L58:
            java.lang.String r0 = "com.google.android.gms.cast.metadata.COMPOSER"
            boolean r5 = r4.containsKey(r0)
            if (r5 == 0) goto L66
            goto L56
        L61:
            java.lang.String r2 = "com.google.android.gms.cast.metadata.SERIES_TITLE"
            goto L66
        L64:
            java.lang.String r2 = "com.google.android.gms.cast.metadata.STUDIO"
        L66:
            com.google.android.gms.cast.MediaMetadata.j(r3, r2)
            java.lang.String r0 = r4.getString(r2)
            if (r0 == 0) goto L72
            r1.O(r0)
        L72:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity.t():void");
    }

    public final void u() {
        MediaStatus mediaStatusF;
        String str;
        String string;
        Drawable drawable;
        Bitmap bitmap;
        r4.f fVarP = p();
        if (fVarP == null || (mediaStatusF = fVarP.f()) == null) {
            return;
        }
        if (!mediaStatusF.f3753r) {
            this.f3872e0.setVisibility(8);
            this.f3871d0.setVisibility(8);
            this.X.setVisibility(8);
            this.U.setVisibility(8);
            this.U.setImageBitmap(null);
            return;
        }
        if (this.U.getVisibility() == 8 && (drawable = this.T.getDrawable()) != null && (drawable instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) drawable).getBitmap()) != null) {
            v4.b bVar = u4.f.f10341a;
            Object[] objArr = {bitmap, Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight())};
            v4.b bVar2 = u4.f.f10341a;
            bVar2.b("Begin blurring bitmap %s, original width = %d, original height = %d.", objArr);
            int iRound = Math.round(bitmap.getWidth() * 0.25f);
            int iRound2 = Math.round(bitmap.getHeight() * 0.25f);
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, iRound, iRound2, false);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iRound, iRound2, bitmapCreateScaledBitmap.getConfig());
            RenderScript renderScriptCreate = RenderScript.create(this);
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateScaledBitmap);
            Allocation allocationCreateTyped = Allocation.createTyped(renderScriptCreate, allocationCreateFromBitmap.getType());
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, allocationCreateFromBitmap.getElement());
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.setRadius(7.5f);
            scriptIntrinsicBlurCreate.forEach(allocationCreateTyped);
            allocationCreateTyped.copyTo(bitmapCreateBitmap);
            renderScriptCreate.destroy();
            bVar2.b("End blurring bitmap %s, original width = %d, original height = %d.", bitmapCreateScaledBitmap, Integer.valueOf(iRound), Integer.valueOf(iRound2));
            if (bitmapCreateBitmap != null) {
                this.U.setImageBitmap(bitmapCreateBitmap);
                this.U.setVisibility(0);
            }
        }
        AdBreakClipInfo adBreakClipInfoJ = mediaStatusF.j();
        if (adBreakClipInfoJ != null) {
            string = adBreakClipInfoJ.f3626b;
            str = adBreakClipInfoJ.f3631i;
        } else {
            str = null;
            string = null;
        }
        if (!TextUtils.isEmpty(str)) {
            this.f3873f0.i(Uri.parse(str));
            this.Y.setVisibility(8);
        } else if (TextUtils.isEmpty(this.f3879m0)) {
            this.f3869b0.setVisibility(0);
            this.Y.setVisibility(0);
            this.Z.setVisibility(8);
        } else {
            this.f3873f0.i(Uri.parse(this.f3879m0));
            this.Y.setVisibility(8);
        }
        TextView textView = this.f3870c0;
        if (TextUtils.isEmpty(string)) {
            string = getResources().getString(R.string.cast_ad_label);
        }
        textView.setText(string);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f3870c0.setTextAppearance(this.O);
        } else {
            this.f3870c0.setTextAppearance(this, this.O);
        }
        this.X.setVisibility(0);
        r(fVarP);
    }
}
