package org.bitspark.android;

import android.content.Context;
import android.content.res.Resources;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.VideoView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.leanback.widget.HorizontalGridView;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.MappingTrackSelector;
import androidx.media3.ui.PlayerView;
import androidx.media3.ui.SubtitleView;
import androidx.mediarouter.app.MediaRouteButton;
import androidx.recyclerview.widget.RecyclerView;
import ba.d;
import com.google.android.material.imageview.ShapeableImageView;
import com.nmmedit.protect.NativeUtil;
import com.tvbus.engine.TVCore;
import da.c;
import ea.f0;
import ea.k;
import ea.o0;
import ea.q0;
import ea.r0;
import ea.s0;
import ea.t0;
import ea.u;
import ea.u0;
import ea.v;
import ea.v0;
import fa.b1;
import fa.m1;
import fa.o1;
import fa.x;
import ga.h;
import ga.i;
import ga.m;
import ga.o;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import ka.e;
import ka.j;
import ka.m0;
import ka.r;
import ka.y;
import ka.z;
import okhttp3.OkHttpClient;
import org.bitspark.android.beans.HistoryBean;
import org.bitspark.android.view.AutoLayoutRadioGroup;
import org.bitspark.android.view.CircularProgressBar;
import org.bitspark.android.view.MyViewPager;
import org.greenrobot.eventbus.ThreadMode;
import qa.g;
import ra.a;
import ra.b;

@UnstableApi
/* loaded from: classes.dex */
public class Spark extends AppCompatActivity implements View.OnKeyListener, View.OnClickListener, View.OnTouchListener, View.OnFocusChangeListener {
    public static u X1;
    public static i Y1;
    public static DisplayMetrics Z1;

    /* renamed from: a2, reason: collision with root package name */
    public static boolean f8660a2;

    /* renamed from: b2, reason: collision with root package name */
    public static int f8661b2;

    /* renamed from: c2, reason: collision with root package name */
    public static boolean f8662c2;

    /* renamed from: d2, reason: collision with root package name */
    public static c f8663d2;

    /* renamed from: e2, reason: collision with root package name */
    public static boolean f8664e2;

    /* renamed from: f2, reason: collision with root package name */
    public static boolean f8665f2;

    /* renamed from: g2, reason: collision with root package name */
    public static boolean f8666g2;

    /* renamed from: h2, reason: collision with root package name */
    public static String f8667h2;

    /* renamed from: i2, reason: collision with root package name */
    public static int f8668i2;

    /* renamed from: j2, reason: collision with root package name */
    public static boolean f8669j2;

    /* renamed from: k2, reason: collision with root package name */
    public static VideoView f8670k2;

    /* renamed from: l2, reason: collision with root package name */
    public static int f8671l2;

    /* renamed from: m2, reason: collision with root package name */
    public static int f8672m2;

    /* renamed from: n2, reason: collision with root package name */
    public static final String f8673n2;

    /* renamed from: o2, reason: collision with root package name */
    public static final String f8674o2;

    /* renamed from: p2, reason: collision with root package name */
    public static final String f8675p2;

    /* renamed from: q2, reason: collision with root package name */
    public static final String f8676q2;

    /* renamed from: r2, reason: collision with root package name */
    public static final String f8677r2;

    /* renamed from: s2, reason: collision with root package name */
    public static final String f8678s2;

    /* renamed from: t2, reason: collision with root package name */
    public static final String f8679t2;

    /* renamed from: u2, reason: collision with root package name */
    public static final String f8680u2;

    /* renamed from: v2, reason: collision with root package name */
    public static final String f8681v2;

    /* renamed from: w2, reason: collision with root package name */
    public static final String f8682w2;

    /* renamed from: x2, reason: collision with root package name */
    public static final String f8683x2;

    /* renamed from: y2, reason: collision with root package name */
    public static d f8684y2;
    public ArrayList A;
    public HorizontalGridView A0;
    public SeekBar A1;
    public RadioButton B;
    public HorizontalGridView B0;
    public TextView B1;
    public RadioButton C;
    public ShapeableImageView C0;
    public TextView C1;
    public RadioButton D;
    public ImageView D0;
    public TextView D1;
    public RadioButton E;
    public MediaRouteButton E0;
    public RadioButton F;
    public RadioButton G;
    public RadioButton H;
    public r I;
    public ra.c I1;
    public m0 J;
    public ea.d J0;
    public ExoPlayer J1;
    public e K;
    public PlayerView K1;
    public z L;
    public a L1;
    public y M;
    public j N;
    public b N1;
    public fa.y O;
    public DefaultTrackSelector O1;
    public FrameLayout P;
    public FrameLayout Q;
    public ImageView R;
    public ImageView S;
    public boolean S0;
    public m T;
    public AudioManager T0;
    public MediaRouteButton T1;
    public ga.d U;
    public int U0;
    public x U1;
    public o V;
    public int V0;
    public RecyclerView V1;
    public h W;
    public float W0;
    public k W1;
    public ga.b X;
    public float X0;
    public Bundle Y;
    public float Y0;

    /* renamed from: b0, reason: collision with root package name */
    public ImageView f8686b0;

    /* renamed from: c0, reason: collision with root package name */
    public TextView f8688c0;

    /* renamed from: f0, reason: collision with root package name */
    public HistoryBean f8694f0;

    /* renamed from: f1, reason: collision with root package name */
    public int f8695f1;

    /* renamed from: g0, reason: collision with root package name */
    public ImageView f8696g0;

    /* renamed from: g1, reason: collision with root package name */
    public int f8697g1;

    /* renamed from: h0, reason: collision with root package name */
    public ImageView f8698h0;

    /* renamed from: h1, reason: collision with root package name */
    public int f8699h1;
    public ta.a i0;

    /* renamed from: j0, reason: collision with root package name */
    public FrameLayout f8701j0;

    /* renamed from: j1, reason: collision with root package name */
    public TextView f8702j1;

    /* renamed from: k1, reason: collision with root package name */
    public RelativeLayout f8704k1;

    /* renamed from: l1, reason: collision with root package name */
    public TextView f8706l1;

    /* renamed from: m0, reason: collision with root package name */
    public TextView f8707m0;

    /* renamed from: m1, reason: collision with root package name */
    public RelativeLayout f8708m1;

    /* renamed from: n1, reason: collision with root package name */
    public RelativeLayout f8710n1;

    /* renamed from: o0, reason: collision with root package name */
    public boolean f8711o0;

    /* renamed from: o1, reason: collision with root package name */
    public RelativeLayout f8712o1;

    /* renamed from: p1, reason: collision with root package name */
    public ConstraintLayout f8714p1;

    /* renamed from: q0, reason: collision with root package name */
    public a3.c f8715q0;

    /* renamed from: q1, reason: collision with root package name */
    public CheckBox f8716q1;

    /* renamed from: r0, reason: collision with root package name */
    public ImageView f8717r0;

    /* renamed from: r1, reason: collision with root package name */
    public ProgressBar f8718r1;

    /* renamed from: s0, reason: collision with root package name */
    public SubtitleView f8719s0;

    /* renamed from: s1, reason: collision with root package name */
    public TextView f8720s1;

    /* renamed from: t0, reason: collision with root package name */
    public o1 f8721t0;

    /* renamed from: t1, reason: collision with root package name */
    public TextView f8722t1;

    /* renamed from: u0, reason: collision with root package name */
    public m1 f8723u0;

    /* renamed from: u1, reason: collision with root package name */
    public TextView f8724u1;

    /* renamed from: v0, reason: collision with root package name */
    public b1 f8725v0;

    /* renamed from: v1, reason: collision with root package name */
    public TextView f8726v1;

    /* renamed from: w0, reason: collision with root package name */
    public o1 f8727w0;

    /* renamed from: w1, reason: collision with root package name */
    public CircularProgressBar f8728w1;
    public o1 x0;
    public TextView x1;

    /* renamed from: y, reason: collision with root package name */
    public MyViewPager f8730y;

    /* renamed from: y0, reason: collision with root package name */
    public o1 f8731y0;

    /* renamed from: y1, reason: collision with root package name */
    public TextView f8732y1;

    /* renamed from: z, reason: collision with root package name */
    public AutoLayoutRadioGroup f8733z;

    /* renamed from: z0, reason: collision with root package name */
    public HorizontalGridView f8734z0;

    /* renamed from: z1, reason: collision with root package name */
    public SeekBar f8735z1;

    /* renamed from: x, reason: collision with root package name */
    public final String f8729x = a2.a.s("VUsjUz2f\n", "FxhuMlTxCYo=\n");
    public String Z = "";

    /* renamed from: d0, reason: collision with root package name */
    public int f8690d0 = 0;

    /* renamed from: e0, reason: collision with root package name */
    public final List f8692e0 = Arrays.asList(7, 8, 9, 10, 11, 12, 13, 14, 15, 16);

    /* renamed from: k0, reason: collision with root package name */
    public int f8703k0 = 0;

    /* renamed from: l0, reason: collision with root package name */
    public int f8705l0 = 0;

    /* renamed from: n0, reason: collision with root package name */
    public float f8709n0 = 0.0f;

    /* renamed from: p0, reason: collision with root package name */
    public float f8713p0 = 0.0f;
    public boolean F0 = false;
    public boolean G0 = false;
    public ra.e H0 = null;
    public boolean I0 = false;
    public boolean K0 = false;
    public int L0 = 0;
    public long M0 = 0;
    public int N0 = 0;
    public long O0 = 0;
    public int P0 = 0;
    public long Q0 = 0;
    public RadioButton R0 = null;
    public boolean Z0 = true;

    /* renamed from: a1, reason: collision with root package name */
    public boolean f8685a1 = false;

    /* renamed from: b1, reason: collision with root package name */
    public TVCore f8687b1 = null;

    /* renamed from: c1, reason: collision with root package name */
    public int f8689c1 = 0;

    /* renamed from: d1, reason: collision with root package name */
    public int f8691d1 = 0;

    /* renamed from: e1, reason: collision with root package name */
    public int f8693e1 = 0;

    /* renamed from: i1, reason: collision with root package name */
    public long f8700i1 = 0;
    public Constants$VIDEO_TYPE E1 = Constants$VIDEO_TYPE.BSLIVE;
    public int F1 = 0;
    public long G1 = 0;
    public f0 H1 = null;
    public final v M1 = new v(this, 2);
    public o0 P1 = null;
    public OkHttpClient Q1 = null;
    public ea.j R1 = null;
    public g S1 = null;

    public static native void A(Spark spark);

    public static native void B(Spark spark);

    public static native void C(Spark spark);

    public static native boolean D(Spark spark, Bundle bundle);

    public static native void F(Spark spark, String str);

    public static native void I(Spark spark, int i6);

    public static native void J(Spark spark);

    public static native boolean K(Spark spark, String str, String str2);

    public static native void L(int i6, MappingTrackSelector.MappedTrackInfo mappedTrackInfo, ArrayList arrayList);

    public static native String S();

    public static native String b0(Bundle bundle);

    public static native void l0(int i6);

    public static native void m0(int i6, String str);

    public static native void q(Spark spark);

    public static native void r(Spark spark);

    public static native void s(Spark spark);

    public static native void u(Spark spark);

    public static native void v(Spark spark, String str);

    public static native void w(Spark spark, String str);

    public static native void x(Spark spark);

    public static native void y(Spark spark);

    public static native void z(Spark spark);

    public final native void A0();

    public final native void B0(int i6, String str);

    public final native void C0();

    public final native void D0();

    public final native void E0();

    public final native void F0(boolean z7);

    public final native void G0();

    public final native void H0(Message message);

    public final native void I0();

    public final native void J0();

    public final native boolean K0(int i6, KeyEvent keyEvent);

    public final native void M();

    public final native void N(boolean z7);

    public final native void O();

    public final native void P(float f, float f3);

    public final native void Q();

    public final native void R();

    public final native void T();

    public final native void U();

    public final native boolean V();

    public final native boolean W();

    public final native boolean X();

    public final native boolean Y();

    public final native void Z(int i6);

    public final native void a0(String str, int i6, ImageView imageView);

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final native void attachBaseContext(Context context);

    public final native void c0(boolean z7);

    public final native void d0(boolean z7);

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final native boolean dispatchKeyEvent(KeyEvent keyEvent);

    public final native void e0(Bundle bundle);

    public final native void f0();

    public final native void g0();

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final native Resources getResources();

    public final native void h0();

    public final native void i0();

    public final native void j0();

    public final native void k0(int i6, ArrayList arrayList);

    public final native void n0(String str);

    public final native void o0();

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final native void onBackPressed();

    @Override // android.view.View.OnClickListener
    public native void onClick(View view);

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final native void onCreate(Bundle bundle);

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final native void onDestroy();

    @Override // android.view.View.OnFocusChangeListener
    public final native void onFocusChange(View view, boolean z7);

    @Override // android.view.View.OnKeyListener
    public final native boolean onKey(View view, int i6, KeyEvent keyEvent);

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public final native boolean onKeyDown(int i6, KeyEvent keyEvent);

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final native boolean onKeyLongPress(int i6, KeyEvent keyEvent);

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final native boolean onKeyUp(int i6, KeyEvent keyEvent);

    @ua.j(threadMode = ThreadMode.MAIN)
    public native void onMessageEvent(q0 q0Var);

    @ua.j(threadMode = ThreadMode.MAIN)
    public native void onMessageEvent(r0 r0Var);

    @ua.j(threadMode = ThreadMode.MAIN)
    public native void onMessageEvent(s0 s0Var);

    @ua.j(threadMode = ThreadMode.MAIN)
    public native void onMessageEvent(t0 t0Var);

    @ua.j(threadMode = ThreadMode.MAIN)
    public native void onMessageEvent(u0 u0Var);

    @ua.j(threadMode = ThreadMode.MAIN)
    public native void onMessageEvent(v0 v0Var);

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final native void onPause();

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final native void onResume();

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final native void onStop();

    @Override // android.view.View.OnTouchListener
    public final native boolean onTouch(View view, MotionEvent motionEvent);

    @Override // android.app.Activity
    public final native boolean onTouchEvent(MotionEvent motionEvent);

    @Override // android.app.Activity, android.view.Window.Callback
    public final native void onWindowFocusChanged(boolean z7);

    public final native void p();

    public final native void p0();

    public final native void q0(Boolean bool);

    public final native void r0();

    public final native void s0();

    public final native void t0(RadioButton radioButton);

    public final native void u0();

    public final native void v0(String str);

    public final native void w0(float f);

    public final native void x0();

    public final native void y0();

    public final native void z0(int i6);

    static {
        NativeUtil.classesInit0(4);
        f8673n2 = a2.a.s("fLXoidahtxd0qvbKx++7E3iizbfz\n", "HcWY5b/C1mM=\n");
        f8674o2 = a2.a.s("Ll9EPcqiXKomQFp+x6BOtmRXWT0=\n", "Ty80UaPBPd4=\n");
        f8675p2 = a2.a.s("1tkwXjgIwarexi4dJwXE8NrabUEiH9L1z8Qs\n", "t6lAMlFroN4=\n");
        f8676q2 = a2.a.s("JXm9ze+g40pn\n", "UxDZqICPjjo=\n");
        f8677r2 = a2.a.s("am5TjSHC+tRufA==\n", "Cxs35E7tl6Q=\n");
        f8678s2 = a2.a.s("6i66hfKkGwn+Kg==\n", "nEfe4J2LbGw=\n");
        a2.a.s("rssofWZYBvOt0w==\n", "z75MFAl3cZY=\n");
        f8679t2 = a2.a.s("gNStdSlKWIPEyQ==\n", "9r3JEEZlNfM=\n");
        f8680u2 = a2.a.s("2tC7ZdqVeK7axg==\n", "u6XfDLW6HsI=\n");
        f8681v2 = a2.a.s("cu13AKFKCMMn+T4FrxEI\n", "E5gTac5lZbM=\n");
        f8682w2 = a2.a.s("umQTiH2AYDC8\n", "2xF34RKvD1c=\n");
        f8683x2 = a2.a.s("woMSdTy0kQDWhQ==\n", "o/Z2HFOb/nA=\n");
        f8660a2 = false;
        f8661b2 = 100;
        f8662c2 = false;
        f8664e2 = false;
        f8665f2 = false;
        f8666g2 = true;
        f8669j2 = true;
        f8671l2 = 0;
        f8672m2 = ea.h.f6695z;
        f8684y2 = null;
    }
}
