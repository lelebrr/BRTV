package qa;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.leanback.widget.VerticalGridView;
import androidx.leanback.widget.d0;
import com.p2elite.brtv2.R;
import ja.p;
import java.util.ArrayList;
import org.bitspark.android.beans.Menu;
import org.bitspark.android.beans.SubtitleMenu;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l {
    public final a1.b A;
    public final d0 B;
    public final ArrayList C;
    public final ArrayList D;
    public final ArrayList E;
    public j F;
    public int G;

    /* renamed from: a, reason: collision with root package name */
    public final Activity f9401a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9402b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9403c;
    public Dialog d;

    /* renamed from: e, reason: collision with root package name */
    public a f9404e;
    public final w0.e f;

    /* renamed from: g, reason: collision with root package name */
    public d f9405g;

    /* renamed from: h, reason: collision with root package name */
    public c f9406h;

    /* renamed from: i, reason: collision with root package name */
    public c f9407i;

    /* renamed from: j, reason: collision with root package name */
    public d f9408j;

    /* renamed from: k, reason: collision with root package name */
    public d f9409k;

    /* renamed from: l, reason: collision with root package name */
    public ja.l f9410l;

    /* renamed from: m, reason: collision with root package name */
    public ja.n f9411m;

    /* renamed from: n, reason: collision with root package name */
    public p f9412n;

    /* renamed from: o, reason: collision with root package name */
    public ja.j f9413o;

    /* renamed from: p, reason: collision with root package name */
    public final m f9414p;

    /* renamed from: q, reason: collision with root package name */
    public final a1.b f9415q;

    /* renamed from: r, reason: collision with root package name */
    public final d0 f9416r;

    /* renamed from: s, reason: collision with root package name */
    public final m f9417s;

    /* renamed from: t, reason: collision with root package name */
    public final a1.b f9418t;

    /* renamed from: u, reason: collision with root package name */
    public final d0 f9419u;

    /* renamed from: v, reason: collision with root package name */
    public final m f9420v;

    /* renamed from: w, reason: collision with root package name */
    public final a1.b f9421w;

    /* renamed from: x, reason: collision with root package name */
    public final d0 f9422x;

    /* renamed from: y, reason: collision with root package name */
    public final m f9423y;

    /* renamed from: z, reason: collision with root package name */
    public final m f9424z;

    public l(Activity activity) {
        j9.i.f(activity, a2.a.s("Vwu+S/Y3LQ==\n", "NGTQP5NPWVM=\n"));
        a2.a.s("S+hLSSFPFA==\n", "KIclPUQ3YMk=\n");
        j9.i.f(activity, a2.a.s("7RCtzi9aYw==\n", "jn/DukoiF5E=\n"));
        this.f9401a = activity;
        this.f9402b = -2;
        this.f9403c = -1;
        w0.e eVarA = w0.c.a(LayoutInflater.from(activity), R.layout.layout_live_setting_container, null);
        j9.i.e(eVarA, a2.a.s("aNSc+4oH0isvlNS+\n", "Abr6l+tztwM=\n"));
        this.f = eVarA;
        String strS = a2.a.s("hd0PVXREs4TMllUu\n", "4rh7Bxsrx6w=\n");
        View view = eVarA.d;
        j9.i.e(view, strS);
        a2.a.s("gClCAg==\n", "9kAndRjxdcg=\n");
        final Dialog dialog = new Dialog(this.f9401a);
        dialog.setContentView(view);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setLayout(this.f9402b, this.f9403c);
            window.setGravity(8388613);
            window.setFlags(32, 32);
            window.clearFlags(8);
        }
        dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: ia.c
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i6, KeyEvent keyEvent) {
                if (i6 != 4 || keyEvent.getAction() != 1) {
                    return false;
                }
                qa.a aVar = this.f7365a.f9404e;
                if (!(aVar != null ? ((Boolean) aVar.invoke()).booleanValue() : false)) {
                    dialog.dismiss();
                }
                return true;
            }
        });
        a2.a.s("ppOj5ZLwvQ==\n", "muDGkb/Pg8s=\n");
        this.d = dialog;
        m mVar = new m(2);
        this.f9414p = mVar;
        a1.b bVar = new a1.b(mVar);
        this.f9415q = bVar;
        this.f9416r = new d0(bVar);
        m mVar2 = new m(1);
        this.f9417s = mVar2;
        a1.b bVar2 = new a1.b(mVar2);
        this.f9418t = bVar2;
        this.f9419u = new d0(bVar2);
        m mVar3 = new m(0);
        this.f9420v = mVar3;
        a1.b bVar3 = new a1.b(mVar3);
        this.f9421w = bVar3;
        this.f9422x = new d0(bVar3);
        m mVar4 = new m(5);
        m mVar5 = new m(4);
        this.f9423y = mVar5;
        m mVar6 = new m(3);
        this.f9424z = mVar6;
        androidx.leanback.widget.m mVar7 = new androidx.leanback.widget.m();
        mVar7.b(String.class, mVar4);
        mVar7.b(SubtitleMenu.class, mVar5);
        mVar7.b(Menu.class, mVar6);
        a1.b bVar4 = new a1.b(mVar7);
        this.A = bVar4;
        this.B = new d0(bVar4);
        this.C = new ArrayList();
        String string = activity.getString(R.string.original);
        j9.i.e(string, a2.a.s("BebJ9Pe8/mYFq5OJrec=\n", "YoO9p4POlwg=\n"));
        Menu menu = new Menu(string, true);
        String string2 = activity.getString(R.string.full_screen);
        j9.i.e(string2, a2.a.s("dgk+UULQxfN2RGQsGIs=\n", "EWxKAjairJ0=\n"));
        this.D = new ArrayList(new x8.g(new Menu[]{menu, new Menu(string2, false)}, true));
        String string3 = activity.getString(R.string.Top);
        j9.i.e(string3, a2.a.s("o6TNsc3K2Yej6ZfMl5E=\n", "xMG54rm4sOk=\n"));
        Menu menu2 = new Menu(string3, false);
        String string4 = activity.getString(R.string.Bottom);
        j9.i.e(string4, a2.a.s("m+PSCJr1rjObroh1wK4=\n", "/IamW+6Hx10=\n"));
        this.E = new ArrayList(new x8.g(new Menu[]{menu2, new Menu(string4, false)}, true));
        this.F = j.f9396a;
        this.f9404e = new a(1, this);
    }

    public final Dialog a() {
        Dialog dialog = this.d;
        if (dialog != null) {
            return dialog;
        }
        j9.i.l(a2.a.s("Su0p/BCw\n", "LoRIkH/X0Ds=\n"));
        throw null;
    }

    public final void b() {
        VerticalGridView verticalGridView;
        VerticalGridView verticalGridView2;
        TextView textView;
        if (this.f9410l == null) {
            Activity activity = this.f9401a;
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(activity);
            FrameLayout frameLayout = ((ja.h) this.f).f7501l;
            int i6 = ja.l.f7510o;
            this.f9410l = (ja.l) w0.c.a(layoutInflaterFrom, R.layout.view_live_setting_main, frameLayout);
            Typeface typefaceCreateFromAsset = Typeface.createFromAsset(activity.getAssets(), a2.a.s("CFeH4ZLMh5gAUZu7yfmS\n", "bjjplb2N8f0=\n"));
            ja.l lVar = this.f9410l;
            if (lVar != null && (textView = lVar.f7512m) != null) {
                textView.setTypeface(typefaceCreateFromAsset);
            }
            ja.l lVar2 = this.f9410l;
            if (lVar2 != null && (verticalGridView2 = lVar2.f7513n) != null) {
                verticalGridView2.setAdapter(this.f9419u);
            }
            h hVar = new h(this, 2);
            m mVar = this.f9417s;
            mVar.f9425a = hVar;
            mVar.f9426b = new i(this);
        }
        ja.l lVar3 = this.f9410l;
        j9.i.c(lVar3);
        String strS = a2.a.s("BYWCKRcH8l1MzthS\n", "YuD2e3hohnU=\n");
        View view = lVar3.d;
        j9.i.e(view, strS);
        c(view, j.f9396a);
        ja.l lVar4 = this.f9410l;
        if (lVar4 == null || (verticalGridView = lVar4.f7513n) == null) {
            return;
        }
        com.bumptech.glide.d.D(verticalGridView, this.G);
    }

    public final void c(View view, j jVar) {
        w0.e eVar = this.f;
        ((ja.h) eVar).f7501l.removeAllViews();
        ((ja.h) eVar).f7501l.addView(view);
        this.F = jVar;
    }
}
