package ka;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.r2;
import androidx.fragment.app.FragmentActivity;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.OkGo;
import com.lzy.okgo.db.CacheManager;
import com.lzy.okgo.request.PostRequest;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import org.bitspark.android.Spark;
import org.bitspark.android.SpkApplication;
import org.bitspark.android.utils.LimitQueue;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class y extends b implements View.OnKeyListener, View.OnClickListener, View.OnFocusChangeListener {

    /* renamed from: u1, reason: collision with root package name */
    public static final String f7876u1 = a2.a.s("mGzqEWh5QUy9\n", "2j+5dBwNKCI=\n");
    public TextView A0;
    public ImageView B0;
    public ImageView C0;
    public RelativeLayout D0;
    public ImageView E0;
    public ImageView F0;
    public RelativeLayout G0;
    public RelativeLayout H0;
    public RelativeLayout I0;
    public RelativeLayout J0;
    public RelativeLayout K0;
    public RelativeLayout L0;
    public TextView M0;
    public ArrayList N0;
    public HashMap O0;
    public ArrayList P0;
    public ArrayList Q0;
    public ArrayList R0;
    public ArrayList S0;
    public ArrayList T0;
    public View U;
    public RelativeLayout V;
    public ArrayList V0;
    public RelativeLayout W;
    public RelativeLayout X;
    public TextView Y;
    public ImageView Z;

    /* renamed from: b0, reason: collision with root package name */
    public ImageView f7878b0;

    /* renamed from: c0, reason: collision with root package name */
    public RelativeLayout f7880c0;

    /* renamed from: d0, reason: collision with root package name */
    public TextView f7882d0;

    /* renamed from: e0, reason: collision with root package name */
    public ImageView f7884e0;

    /* renamed from: f0, reason: collision with root package name */
    public ImageView f7886f0;

    /* renamed from: f1, reason: collision with root package name */
    public ta.a f7887f1;

    /* renamed from: g0, reason: collision with root package name */
    public RelativeLayout f7888g0;

    /* renamed from: g1, reason: collision with root package name */
    public TextView f7889g1;

    /* renamed from: h0, reason: collision with root package name */
    public TextView f7890h0;

    /* renamed from: h1, reason: collision with root package name */
    public RelativeLayout f7891h1;
    public RelativeLayout i0;

    /* renamed from: i1, reason: collision with root package name */
    public RelativeLayout f7892i1;

    /* renamed from: j0, reason: collision with root package name */
    public TextView f7893j0;

    /* renamed from: j1, reason: collision with root package name */
    public RelativeLayout f7894j1;

    /* renamed from: k0, reason: collision with root package name */
    public ImageView f7895k0;

    /* renamed from: k1, reason: collision with root package name */
    public ImageButton f7896k1;

    /* renamed from: l0, reason: collision with root package name */
    public ImageView f7897l0;

    /* renamed from: l1, reason: collision with root package name */
    public TextView f7898l1;

    /* renamed from: m0, reason: collision with root package name */
    public RelativeLayout f7899m0;

    /* renamed from: m1, reason: collision with root package name */
    public ImageView f7900m1;

    /* renamed from: n0, reason: collision with root package name */
    public RelativeLayout f7901n0;

    /* renamed from: n1, reason: collision with root package name */
    public ImageView f7902n1;

    /* renamed from: o0, reason: collision with root package name */
    public ImageView f7903o0;

    /* renamed from: o1, reason: collision with root package name */
    public ImageView f7904o1;

    /* renamed from: p0, reason: collision with root package name */
    public ImageView f7905p0;

    /* renamed from: p1, reason: collision with root package name */
    public ImageView f7906p1;

    /* renamed from: q0, reason: collision with root package name */
    public TextView f7907q0;

    /* renamed from: r0, reason: collision with root package name */
    public TextView f7909r0;

    /* renamed from: r1, reason: collision with root package name */
    public sa.p f7910r1;

    /* renamed from: s0, reason: collision with root package name */
    public ImageView f7911s0;

    /* renamed from: s1, reason: collision with root package name */
    public ea.k f7912s1;

    /* renamed from: t0, reason: collision with root package name */
    public ImageView f7913t0;

    /* renamed from: u0, reason: collision with root package name */
    public RelativeLayout f7915u0;

    /* renamed from: v0, reason: collision with root package name */
    public TextView f7916v0;

    /* renamed from: w0, reason: collision with root package name */
    public ImageView f7917w0;
    public ImageView x0;

    /* renamed from: y0, reason: collision with root package name */
    public RelativeLayout f7918y0;

    /* renamed from: z0, reason: collision with root package name */
    public TextView f7919z0;
    public final ArrayList U0 = new ArrayList();
    public int W0 = 0;
    public int X0 = 0;
    public int Y0 = 0;
    public int Z0 = 0;

    /* renamed from: a1, reason: collision with root package name */
    public int f7877a1 = 0;

    /* renamed from: b1, reason: collision with root package name */
    public boolean f7879b1 = false;

    /* renamed from: c1, reason: collision with root package name */
    public boolean f7881c1 = false;

    /* renamed from: d1, reason: collision with root package name */
    public int f7883d1 = 0;

    /* renamed from: e1, reason: collision with root package name */
    public long f7885e1 = 0;

    /* renamed from: q1, reason: collision with root package name */
    public boolean f7908q1 = false;

    /* renamed from: t1, reason: collision with root package name */
    public boolean f7914t1 = false;

    public final void Q(String str) {
        sa.p pVar = this.f7910r1;
        if (pVar != null) {
            Bundle bundle = new Bundle();
            bundle.putString(sa.p.f9881s0, str);
            pVar.O(bundle);
            pVar.f9888q0.post(new a3.c(pVar, 28, str));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        int i6 = 2;
        int id = view.getId();
        int i10 = 0;
        if (id == this.f7892i1.getId()) {
            boolean zG = this.f7887f1.g();
            ArrayList arrayList = this.U0;
            if (zG) {
                this.f7887f1.f10250e.h(1);
                this.f7898l1.setText((CharSequence) arrayList.get(1));
                org.bitspark.android.utils.m.m(1, a2.a.s("APsulCs1zUMA4jWZIDDa\n", "U6tx3GJxiBw=\n"));
                return;
            } else {
                this.f7887f1.f10250e.h(0);
                this.f7898l1.setText((CharSequence) arrayList.get(0));
                org.bitspark.android.utils.m.m(0, a2.a.s("lJlFn1j8Ol2UgF6SU/kt\n", "x8ka1xG4fwI=\n"));
                return;
            }
        }
        if (id == this.f7891h1.getId()) {
            if (this.f7887f1.h()) {
                this.f7887f1.d.h(0);
                this.f7889g1.setText(n(R.string.device_type_tv));
                org.bitspark.android.utils.m.m(0, a2.a.s("joB1jTlZNNmYj36QLEo=\n", "3dAqyXwPfZo=\n"));
                this.f7892i1.setVisibility(0);
                return;
            }
            this.f7887f1.d.h(1);
            this.f7889g1.setText(n(R.string.device_type_phone));
            org.bitspark.android.utils.m.m(1, a2.a.s("8Wb8Q7ZnDv3nafdeo3Q=\n", "ojajB/MxR74=\n"));
            this.f7892i1.setVisibility(8);
            if (this.f7887f1.g()) {
                this.f7898l1.setText(n(R.string.auto_start_on));
                return;
            } else {
                this.f7898l1.setText(n(R.string.auto_start_off));
                return;
            }
        }
        if (id == this.f7901n0.getId()) {
            ta.a aVar = this.f7887f1;
            int i11 = aVar.f + 1;
            aVar.f = i11;
            ArrayList arrayList2 = aVar.f10252h;
            String str = (String) arrayList2.get(i11 % arrayList2.size());
            org.bitspark.android.utils.m.m(aVar.f % arrayList2.size(), a2.a.s("+LxGHV4RhCf/oFwRRxyTL/+lVgA=\n", "q+wZTgtT0G4=\n"));
            aVar.f10254j.h(str);
            this.f7907q0.setText(str);
            return;
        }
        int id2 = this.D0.getId();
        String str2 = f7876u1;
        if (id == id2) {
            int i12 = this.Z0 + 1;
            this.Z0 = i12;
            int size = i12 % this.R0.size();
            this.A0.setText((CharSequence) this.R0.get(size));
            String strJ = ea.q.j("9vqzjUi6lkfg9OWbB76LSuv85Q==\n", "hZvF6GjM/yM=\n", new StringBuilder(), size);
            boolean z7 = org.bitspark.android.utils.m.f8784b;
            Log.i(str2, strJ);
            org.bitspark.android.utils.m.m(size, a2.a.s("K9GJEXD6J44n0pkVbfcshg==\n", "eIHWRzm+YsE=\n"));
            Message message = new Message();
            message.what = 141;
            message.arg1 = size;
            Spark.X1.sendMessage(message);
            return;
        }
        if (id == this.f7899m0.getId()) {
            int i13 = this.W0 + 1;
            this.W0 = i13;
            TextView textView = this.f7909r0;
            ArrayList arrayList3 = this.N0;
            textView.setText((CharSequence) arrayList3.get(i13 % arrayList3.size()));
            String str3 = a2.a.s("BQ+b+ow75r0lGp/6zRShgCYxvdPtIMqBVg==\n", "dm7tn6x5j9M=\n") + (this.W0 % this.N0.size());
            boolean z10 = org.bitspark.android.utils.m.f8784b;
            Log.i(str2, str3);
            org.bitspark.android.utils.m.m(this.W0 % this.N0.size(), a2.a.s("vz6Rsc1j9mW+\n", "7G7O4YEiryA=\n"));
            ea.k kVar = this.f7912s1;
            if (kVar != null) {
                kVar.f6705b.E0();
                return;
            }
            return;
        }
        if (id == this.f7915u0.getId()) {
            String strG = org.bitspark.android.utils.m.g(a2.a.s("DQAc8cToIh8fFwY=\n", "XlBDvYWmZUo=\n"), a2.a.s("rog=\n", "y+YK4QV0Sbk=\n"));
            Iterator it = this.O0.keySet().iterator();
            String str4 = "";
            boolean z11 = false;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String str5 = (String) it.next();
                if (z11) {
                    str4 = str5;
                    break;
                }
                if (str4.isEmpty()) {
                    str4 = str5;
                }
                if (Objects.equals(strG, str5)) {
                    z11 = true;
                }
            }
            this.f7916v0.setText((CharSequence) this.O0.get(str4));
            Spark.m0(0, String.format(n(R.string.setting_app_restart), this.O0.get(str4)));
            org.bitspark.android.utils.m.n(a2.a.s("HyOQ5jGtvcINNIo=\n", "THPPqnDj+pc=\n"), str4);
            f8.b bVar = f8.b.d;
            if (bVar == null) {
                throw new IllegalStateException("Lingver should be initialized first");
            }
            Context applicationContext = SpkApplication.f8737c.getApplicationContext();
            j9.i.g(applicationContext, "context");
            j9.i.g(str4, "language");
            Locale locale = new Locale(str4, "", "");
            ((SharedPreferences) bVar.f6802b.f169b).edit().putBoolean("follow_system_locale_key", false).apply();
            bVar.a(applicationContext, locale);
            return;
        }
        if (id == this.X.getId()) {
            this.f7879b1 = !this.f7879b1;
            String str6 = a2.a.s("wtk7KigpyBDizD8qaQaPLeHnBBxXKvQq/uceG0k59V4=\n", "sbhNTwhroX4=\n") + this.f7879b1;
            boolean z12 = org.bitspark.android.utils.m.f8784b;
            Log.i(str2, str6);
            this.Y.setText((CharSequence) this.T0.get(!this.f7879b1 ? 1 : 0));
            String strS = a2.a.s("7UqH/gDy/gDqVYfkB+ztAQ==\n", "vhrYt1Otv1U=\n");
            boolean z13 = this.f7879b1;
            SharedPreferences.Editor editorEdit = SpkApplication.f8737c.getApplicationContext().getSharedPreferences(a2.a.s("6253uCuyYGg=\n", "iR0Hyk7UBRo=\n"), 0).edit();
            editorEdit.putBoolean(strS, z13);
            editorEdit.commit();
            return;
        }
        if (id == this.f7888g0.getId()) {
            int i14 = this.X0 + 1;
            this.X0 = i14;
            int size2 = i14 % this.P0.size();
            this.X0 = size2;
            this.f7890h0.setText((CharSequence) this.P0.get(size2));
            String str7 = a2.a.s("hOG+Fw/tsS6k9LoXTsL2E6ffhTdr5pkfo9mYNw8=\n", "94DIci+v2EA=\n") + this.X0;
            boolean z14 = org.bitspark.android.utils.m.f8784b;
            Log.i(str2, str7);
            org.bitspark.android.utils.m.m(this.X0, a2.a.s("DrJUeM94Y70ZokR+0ng=\n", "WP0QJ4I9J/Q=\n"));
            return;
        }
        if (id == this.f7880c0.getId()) {
            int i15 = this.f7877a1 + 1;
            this.f7877a1 = i15;
            int size3 = i15 % this.S0.size();
            this.f7877a1 = size3;
            this.f7882d0.setText((CharSequence) this.S0.get(size3));
            String str8 = a2.a.s("Dzj7Ah3F3ZAvLf8CXOqarSwG3iJv0fGsXA==\n", "fFmNZz2HtP4=\n") + this.f7877a1;
            boolean z15 = org.bitspark.android.utils.m.f8784b;
            Log.i(str2, str8);
            org.bitspark.android.utils.m.m(this.f7877a1, a2.a.s("fVr+z4MN\n", "Lh+smcZfr3A=\n"));
            return;
        }
        if (id == this.G0.getId()) {
            CacheManager.getInstance().clear();
            String str9 = ga.i.f7130a;
            String strS2 = a2.a.s("1G4ipkGlecLEdii1SqU/hZk=\n", "twJHxzOFEas=\n");
            boolean z16 = org.bitspark.android.utils.m.f8784b;
            Log.i(ga.i.f7130a, strS2);
            ga.i.f7133e = new LimitQueue(20);
            ga.i.f = new LimitQueue(50);
            ga.i.f7134g = new LimitQueue(100);
            da.c cVar = Spark.f8663d2;
            String str10 = ga.i.f7131b;
            cVar.g(str10);
            Spark.f8663d2.d(str10, ga.i.f7133e, 315360000);
            da.c cVar2 = Spark.f8663d2;
            String str11 = ga.i.f7132c;
            cVar2.g(str11);
            Spark.f8663d2.d(str11, ga.i.f, 315360000);
            da.c cVar3 = Spark.f8663d2;
            String str12 = ga.i.d;
            cVar3.g(str12);
            Spark.f8663d2.d(str12, ga.i.f7134g, 315360000);
            Spark.f8663d2.a();
            org.bitspark.android.utils.m.m(-1, a2.a.s("nO1ePIt+1wqK4lUhnm0=\n", "z70BeM4onkk=\n"));
            ga.d.a();
            String str13 = r.f7845s0;
            Log.i(r.f7845s0, a2.a.s("ZImgPDQjToJQnqEtCAlZg3mY\n", "F+zOWHhML+Y=\n"));
            Message message2 = new Message();
            message2.what = 1;
            r.f7846t0.sendMessage(message2);
            ga.o.a();
            String str14 = m0.B0;
            Log.i(m0.B0, a2.a.s("vQyRiPCHnfuJG5CZzK2K+qAd\n", "zmn/7Lzo/J8=\n"));
            Message message3 = new Message();
            message3.what = 1;
            m0.E0.sendMessage(message3);
            Spark.l0(R.string.done);
            return;
        }
        if (id == this.I0.getId()) {
            Spark.f8664e2 = true;
            new ga.k().a(a2.a.s("XIIOCF46Hg==\n", "L+d6fDdUeY8=\n"));
            return;
        }
        if (id == this.H0.getId()) {
            Context contextJ = j();
            a0.f fVar = new a0.f(8, false);
            fVar.f38b = contextJ;
            fVar.f39c = new ea.r(3);
            LayoutInflater layoutInflater = (LayoutInflater) contextJ.getSystemService(a2.a.s("TrV0dSOJF/ZMsmF7Ipg6\n", "ItQNGlb9SJ8=\n"));
            sa.e eVar = new sa.e(contextJ, R.style.Dialog);
            View viewInflate = layoutInflater.inflate(R.layout.dialog_new_pwd_layout, (ViewGroup) null);
            eVar.addContentView(viewInflate, new ViewGroup.LayoutParams(-1, -2));
            fVar.d = (EditText) viewInflate.findViewById(R.id.old_password);
            fVar.f40e = (EditText) viewInflate.findViewById(R.id.new_password);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.error);
            Button button = (Button) viewInflate.findViewById(R.id.positiveButton);
            if (((ea.r) fVar.f39c) != null) {
                button.setOnClickListener(new sa.h(fVar, textView2, eVar));
            }
            ((Button) viewInflate.findViewById(R.id.negativeButton)).setOnClickListener(new androidx.appcompat.app.a(18, eVar));
            eVar.setContentView(viewInflate);
            ((EditText) fVar.d).requestFocus();
            eVar.getWindow().setSoftInputMode(4);
            eVar.show();
            return;
        }
        if (id == this.J0.getId()) {
            Context contextJ2 = j();
            sa.k kVar2 = new sa.k(contextJ2);
            kVar2.f9865b = (String) contextJ2.getText(R.string.about_us);
            kVar2.f9866c = (String) contextJ2.getText(R.string.about_us_text);
            kVar2.f9868g = R.mipmap.info_l;
            String string = j().getResources().getString(R.string.close);
            ea.r rVar = new ea.r(2);
            kVar2.f9867e = string;
            kVar2.f9870i = rVar;
            kVar2.a().show();
            kVar2.f9876o.requestFocus();
            return;
        }
        if (id == this.f7918y0.getId()) {
            this.f7881c1 = !this.f7881c1;
            String str15 = a2.a.s("LDSee2aAS18MIZp7J68MYg8KvlECnWVjEAC4Pg==\n", "X1XoHkbCIjE=\n") + this.f7881c1;
            boolean z17 = org.bitspark.android.utils.m.f8784b;
            Log.i(str2, str15);
            this.f7919z0.setText((CharSequence) this.V0.get(!this.f7881c1 ? 1 : 0));
            String strS3 = a2.a.s("/Hn03b20KND9Zv7b\n", "rymri/Lwd5c=\n");
            boolean z18 = this.f7881c1;
            SharedPreferences.Editor editorEdit2 = SpkApplication.f8737c.getApplicationContext().getSharedPreferences(a2.a.s("6253uCuyYGg=\n", "iR0Hyk7UBRo=\n"), 0).edit();
            editorEdit2.putBoolean(strS3, z18);
            editorEdit2.commit();
            Spark.m0(0, String.format(n(R.string.setting_app_restart), this.V0.get(!this.f7881c1 ? 1 : 0)));
            return;
        }
        if (id == this.L0.getId()) {
            if (h() != null) {
                FragmentActivity fragmentActivityH = h();
                sa.d dVar = new sa.d(fragmentActivityH);
                dVar.f9849b = (String) fragmentActivityH.getText(R.string.setting_confirm_logout);
                ea.r rVar2 = new ea.r(5);
                dVar.f9850c = (String) fragmentActivityH.getText(R.string.No);
                dVar.f = rVar2;
                x xVar = new x(i10, this);
                dVar.d = (String) fragmentActivityH.getText(R.string.Yes);
                dVar.f9852g = xVar;
                dVar.a().show();
                return;
            }
            return;
        }
        if (id == this.K0.getId()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            int i16 = jCurrentTimeMillis - this.f7885e1 > 1000 ? 0 : this.f7883d1 + 1;
            this.f7883d1 = i16;
            this.f7885e1 = jCurrentTimeMillis;
            if (i16 >= 4) {
                this.f7883d1 = 0;
                String strA = org.bitspark.android.utils.r.a();
                if (strA == null || strA.isEmpty()) {
                    return;
                }
                String strConcat = a2.a.s("WzUM67kkjKVbOx+urDnAuA10\n", "N1R4jspQrN0=\n").concat(strA);
                boolean z19 = org.bitspark.android.utils.m.f8784b;
                Log.i(str2, strConcat);
                Spark.m0(0, a2.a.s("gHg=\n", "zxPTPmNMo3s=\n"));
                ((PostRequest) ((PostRequest) OkGo.post(a2.a.s("fEmzr5bOTct4SOm9xY8Rx2ZYprKCiA2JJwT+5pXOF8N4Uqa7\n", "FD3H36zhYrM=\n")).tag(this)).headers(a2.a.s("sj73lBQasImHdg==\n", "6hOx/Xh/3ug=\n"), a2.a.s("FhqB6dW/zLw=\n", "enXmj7zTqZE=\n") + ea.a.f6600b + a2.a.s("33+jPA==\n", "8RPMWwzrE1Y=\n"))).upFile(new File(strA)).execute(new ga.j(i6));
            }
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        int id = view.getId();
        a2.a.s("TFopcjE9UlJLVQF6N3IBeUJHKXIxPVIx\n", "IzRvHVJIIRE=\n");
        a2.a.s("grDpmw==\n", "otmNoY+7VIg=\n");
        if (id == this.f7892i1.getId()) {
            if (z7) {
                this.f7904o1.setVisibility(0);
                this.f7906p1.setVisibility(0);
                return;
            } else {
                this.f7904o1.setVisibility(4);
                this.f7906p1.setVisibility(4);
                return;
            }
        }
        if (id == this.f7891h1.getId()) {
            if (z7) {
                this.f7900m1.setVisibility(0);
                this.f7902n1.setVisibility(0);
                return;
            } else {
                this.f7900m1.setVisibility(4);
                this.f7902n1.setVisibility(4);
                return;
            }
        }
        if (id == this.D0.getId()) {
            if (z7) {
                this.B0.setVisibility(0);
                this.C0.setVisibility(0);
                return;
            } else {
                this.B0.setVisibility(4);
                this.C0.setVisibility(4);
                return;
            }
        }
        if (id == this.f7899m0.getId()) {
            if (z7) {
                this.f7911s0.setVisibility(0);
                this.f7913t0.setVisibility(0);
                return;
            } else {
                this.f7911s0.setVisibility(4);
                this.f7913t0.setVisibility(4);
                return;
            }
        }
        if (id == this.f7915u0.getId()) {
            if (z7) {
                this.f7917w0.setVisibility(0);
                this.x0.setVisibility(0);
                return;
            } else {
                this.f7917w0.setVisibility(4);
                this.x0.setVisibility(4);
                return;
            }
        }
        if (id == this.f7918y0.getId()) {
            if (z7) {
                this.E0.setVisibility(0);
                this.F0.setVisibility(0);
                return;
            } else {
                this.E0.setVisibility(4);
                this.F0.setVisibility(4);
                return;
            }
        }
        if (id == this.X.getId()) {
            if (z7) {
                this.Z.setVisibility(0);
                this.f7878b0.setVisibility(0);
                return;
            } else {
                this.Z.setVisibility(4);
                this.f7878b0.setVisibility(4);
                return;
            }
        }
        if (id == this.i0.getId()) {
            if (z7) {
                this.f7895k0.setVisibility(0);
                this.f7897l0.setVisibility(0);
                return;
            } else {
                this.f7895k0.setVisibility(4);
                this.f7897l0.setVisibility(4);
                return;
            }
        }
        if (id == this.f7880c0.getId()) {
            StringBuilder sb = new StringBuilder();
            sb.append(a2.a.s("cW8fQhu0oPx2YDdKHeGg2mx3PF80oKrQa3V5F1ipssxYbjpYC+E=\n", "HgFZLXjB078=\n"));
            sb.append(z7);
            String strJ = ea.q.j("tLY+Lg==\n", "lN9aFAMcc2o=\n", sb, id);
            boolean z10 = org.bitspark.android.utils.m.f8784b;
            Log.i(f7876u1, strJ);
            if (z7) {
                this.f7884e0.setVisibility(0);
                this.f7886f0.setVisibility(0);
            } else {
                this.f7884e0.setVisibility(4);
                this.f7886f0.setVisibility(4);
            }
        }
    }

    @Override // ka.b, android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        boolean z7 = keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0;
        a2.a.s("Gxw5W8zCK84RCzFR0Z0r\n", "dHJyPrX4C6U=\n");
        a2.a.s("mobehLUv8j/VhN7X5A==\n", "uvOw7cRal3s=\n");
        a2.a.s("yfuOtOTl6YmG8tE=\n", "6ZzrwKWGneA=\n");
        keyEvent.getAction();
        int id = view.getId();
        if (z7) {
            if (i6 == 21) {
                Spark spark = (Spark) h();
                if (spark != null) {
                    spark.q0(Boolean.TRUE);
                    spark.G.requestFocus();
                }
                return true;
            }
            if (i6 == 4) {
                Spark.X1.sendEmptyMessage(113);
                return true;
            }
        }
        if (id == this.V.getId() && i6 == 19) {
            return true;
        }
        if ((id == this.W.getId() && i6 == 20) || i6 == 22) {
            return true;
        }
        return super.onKey(view, i6, keyEvent);
    }

    @Override // androidx.fragment.app.s
    public final View t(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws Resources.NotFoundException {
        this.U = layoutInflater.inflate(R.layout.fragment_setting, (ViewGroup) null);
        this.f7887f1 = (ta.a) new a1.b(h()).n(ta.a.class);
        ArrayList arrayList = new ArrayList();
        this.T0 = arrayList;
        arrayList.add(n(R.string.auto_start_on));
        this.T0.add(n(R.string.auto_start_off));
        ArrayList arrayList2 = this.U0;
        arrayList2.add(n(R.string.auto_start_on));
        arrayList2.add(n(R.string.auto_start_off));
        this.X = (RelativeLayout) this.U.findViewById(R.id.auto_start_bg);
        this.Y = (TextView) this.U.findViewById(R.id.poweron_text);
        this.Z = (ImageView) this.U.findViewById(R.id.poweron_left);
        this.f7878b0 = (ImageView) this.U.findViewById(R.id.poweron_right);
        this.X.setOnClickListener(this);
        this.X.setOnKeyListener(this);
        this.X.setOnFocusChangeListener(this);
        String strS = a2.a.s("cO1wZKtS4Lx38nB+rEzzvQ==\n", "I70vLfgNoek=\n");
        String str = ea.h.f6672a;
        this.f7879b1 = org.bitspark.android.utils.m.e(strS, false).booleanValue();
        String str2 = a2.a.s("cp6enRipf5R6n6vS\n", "G+3f6GzGLOA=\n") + this.f7879b1;
        String str3 = f7876u1;
        Log.i(str3, str2);
        if (this.f7879b1) {
            this.Y.setText(R.string.auto_start_on);
        } else {
            this.Y.setText(R.string.auto_start_off);
        }
        ArrayList arrayList3 = new ArrayList();
        this.S0 = arrayList3;
        arrayList3.add(n(R.string.server_main));
        this.S0.add(n(R.string.server_bk) + a2.a.s("QFo=\n", "YGueYIkp4Mo=\n"));
        this.S0.add(n(R.string.server_bk) + a2.a.s("EXg=\n", "MUp+B3sS76M=\n"));
        this.f7880c0 = (RelativeLayout) this.U.findViewById(R.id.server_bg);
        this.f7882d0 = (TextView) this.U.findViewById(R.id.server_text);
        this.f7884e0 = (ImageView) this.U.findViewById(R.id.server_left);
        this.f7886f0 = (ImageView) this.U.findViewById(R.id.server_right);
        this.f7880c0.setOnClickListener(this);
        this.f7880c0.setOnKeyListener(this);
        this.f7880c0.setOnFocusChangeListener(this);
        this.f7877a1 = org.bitspark.android.utils.m.f(0, a2.a.s("UIhAX6MP\n", "A80SCeZdfjg=\n")).intValue();
        Log.i(str3, a2.a.s("fH53C00ZyMhrfn1H\n", "DxsFfShrgaY=\n") + this.f7877a1);
        this.f7882d0.setText((CharSequence) this.S0.get(this.f7877a1));
        this.f7880c0.setVisibility(8);
        ArrayList arrayList4 = new ArrayList();
        this.P0 = arrayList4;
        arrayList4.add(a2.a.s("Cwhgmw==\n", "Rjs1o+HOV/I=\n"));
        this.P0.add(a2.a.s("nuc=\n", "yrTMCXez34Q=\n"));
        this.f7888g0 = (RelativeLayout) this.U.findViewById(R.id.media_type_bg);
        this.f7890h0 = (TextView) this.U.findViewById(R.id.media_type_text);
        this.f7888g0.setOnClickListener(this);
        this.f7888g0.setOnKeyListener(this);
        this.f7888g0.setOnFocusChangeListener(this);
        this.X0 = org.bitspark.android.utils.m.f(0, a2.a.s("m9bQOgv92TKMxsA8Fv0=\n", "zZmUZUa4nXs=\n")).intValue();
        Log.i(str3, a2.a.s("Ao6pEc5quMIKoqMcykb7\n", "b+vNeK8+wbI=\n") + this.X0);
        this.f7890h0.setText((CharSequence) this.P0.get(this.X0));
        this.f7888g0.setVisibility(8);
        ArrayList arrayList5 = new ArrayList();
        this.Q0 = arrayList5;
        arrayList5.add(n(R.string.vod_conn_type_auto));
        this.Q0.add(n(R.string.vod_conn_type_tcp));
        this.Q0.add(n(R.string.vod_conn_type_udp));
        this.i0 = (RelativeLayout) this.U.findViewById(R.id.vod_conn_type_bg);
        this.f7893j0 = (TextView) this.U.findViewById(R.id.vod_conn_type_text);
        this.f7895k0 = (ImageView) this.U.findViewById(R.id.vod_conn_type_left);
        this.f7897l0 = (ImageView) this.U.findViewById(R.id.vod_conn_type_right);
        this.i0.setOnClickListener(this);
        this.i0.setOnKeyListener(this);
        this.i0.setOnFocusChangeListener(this);
        this.Y0 = org.bitspark.android.utils.m.f(0, a2.a.s("9bx1WjnBPgz8p2hVPw==\n", "o/MxBXqOcEI=\n")).intValue();
        Log.i(str3, a2.a.s("1noxav3yctPZZTBg/Ph5/5o=\n", "oBVVKZKcHIc=\n") + this.Y0);
        this.f7893j0.setText((CharSequence) this.Q0.get(this.Y0));
        this.i0.setVisibility(8);
        ArrayList arrayList6 = new ArrayList();
        this.R0 = arrayList6;
        arrayList6.add(n(R.string.video_sorting_default));
        this.R0.add(n(R.string.video_sorting_update_time));
        this.R0.add(n(R.string.video_sorting_a_2_z));
        this.R0.add(n(R.string.video_sorting_z_2_a));
        this.D0 = (RelativeLayout) this.U.findViewById(R.id.video_sorting_bg);
        this.A0 = (TextView) this.U.findViewById(R.id.video_sorting_text);
        this.B0 = (ImageView) this.U.findViewById(R.id.video_sorting_left);
        this.C0 = (ImageView) this.U.findViewById(R.id.video_sorting_right);
        this.D0.setOnClickListener(this);
        this.D0.setOnKeyListener(this);
        this.D0.setOnFocusChangeListener(this);
        int iIntValue = org.bitspark.android.utils.m.f(0, a2.a.s("ScVLaRb1KSNFxlttC/giKw==\n", "GpUUP1+xbGw=\n")).intValue();
        this.Z0 = iIntValue;
        this.A0.setText((CharSequence) this.R0.get(iIntValue));
        ArrayList arrayList7 = new ArrayList();
        this.N0 = arrayList7;
        arrayList7.add(n(R.string.player_system));
        this.N0.add(n(R.string.player_exo));
        ta.a aVar = this.f7887f1;
        FragmentActivity fragmentActivityH = h();
        ArrayList arrayList8 = aVar.f10252h;
        arrayList8.add(fragmentActivityH.getString(R.string.Top));
        arrayList8.add(fragmentActivityH.getString(R.string.Bottom));
        int iIntValue2 = org.bitspark.android.utils.m.f(ea.h.A, a2.a.s("o8/IeEbcQJyk09J0X9FXlKTW2GU=\n", "8J+XKxOeFNU=\n")).intValue();
        aVar.f = iIntValue2;
        aVar.f10254j.h((String) arrayList8.get(iIntValue2 % arrayList8.size()));
        this.f7899m0 = (RelativeLayout) this.U.findViewById(R.id.player_bg);
        RelativeLayout relativeLayout = (RelativeLayout) this.U.findViewById(R.id.rv_vod_subtitle_location);
        this.f7901n0 = relativeLayout;
        relativeLayout.setOnClickListener(this);
        this.f7901n0.setOnKeyListener(this);
        this.f7903o0 = (ImageView) this.U.findViewById(R.id.vod_subtitle_location_left);
        this.f7905p0 = (ImageView) this.U.findViewById(R.id.vod_subtitle_location_right);
        this.f7901n0.setOnFocusChangeListener(new r2(7, this));
        this.f7907q0 = (TextView) this.U.findViewById(R.id.tv_vod_subtitle_location);
        this.f7909r0 = (TextView) this.U.findViewById(R.id.player_text);
        this.f7911s0 = (ImageView) this.U.findViewById(R.id.player_left);
        this.f7913t0 = (ImageView) this.U.findViewById(R.id.player_right);
        this.f7899m0.setOnClickListener(this);
        this.f7899m0.setOnKeyListener(this);
        this.f7899m0.setOnFocusChangeListener(this);
        this.W0 = org.bitspark.android.utils.m.f(ea.h.f6695z, a2.a.s("vDQnCpvYJ/e9\n", "72R4WteZfrI=\n")).intValue();
        this.f7887f1.f10254j.e(h(), new v(this));
        Log.i(str3, a2.a.s("jPKmrh3RDRmY+7/t\n", "/J7H13ijRHc=\n") + this.W0);
        this.f7909r0.setText((CharSequence) this.N0.get(this.W0));
        if (!ea.h.O) {
            this.f7899m0.setVisibility(8);
        }
        HashMap map = new HashMap();
        this.O0 = map;
        map.put(a2.a.s("6C4=\n", "jUClHiYvdWM=\n"), a2.a.s("LR5XPqkBcQ==\n", "aHAwUsByGfE=\n"));
        this.O0.put(a2.a.s("OG8=\n", "Qge6f2UCZX4=\n"), a2.a.s("tJCU8RUH\n", "UCg5F4OADG4=\n"));
        this.O0.put(a2.a.s("EKM=\n", "YNf1aIteUGw=\n"), a2.a.s("hf5BCb/rvmh/4g==\n", "1ZEzfcqMy6s=\n"));
        this.O0.put(a2.a.s("ip8=\n", "4fAw2BUY9wg=\n"), a2.a.s("VUu6frw5jKYM\n", "uN4mlAmUYDA=\n"));
        this.O0.put(a2.a.s("SX8=\n", "OxAwhR5kDJM=\n"), a2.a.s("o17XVQuztCU=\n", "8TG6lqndcKY=\n"));
        this.O0.put(a2.a.s("ZJk=\n", "AeqMhIuLSz4=\n"), a2.a.s("skuC7wSmYmw=\n", "9zjyjscXDQA=\n"));
        RelativeLayout relativeLayout2 = (RelativeLayout) this.U.findViewById(R.id.lang_bg);
        this.f7915u0 = relativeLayout2;
        relativeLayout2.setOnClickListener(this);
        this.f7915u0.setOnKeyListener(this);
        this.f7915u0.setOnFocusChangeListener(this);
        this.f7916v0 = (TextView) this.U.findViewById(R.id.lang_text);
        f8.b bVar = f8.b.d;
        if (bVar == null) {
            throw new IllegalStateException("Lingver should be initialized first");
        }
        String language = bVar.f6802b.B().getLanguage();
        j9.i.b(language, "getLocale().language");
        int iHashCode = language.hashCode();
        if (iHashCode != 3365) {
            if (iHashCode != 3374) {
                if (iHashCode == 3391 && language.equals("ji")) {
                    language = "yi";
                }
            } else if (language.equals("iw")) {
                language = "he";
            }
        } else if (language.equals("in")) {
            language = TtmlNode.ATTR_ID;
        }
        if (language.length() > 2) {
            language = language.substring(0, 2);
        }
        this.f7916v0.setText((CharSequence) this.O0.get(language));
        this.f7917w0 = (ImageView) this.U.findViewById(R.id.lang_left);
        this.x0 = (ImageView) this.U.findViewById(R.id.lang_right);
        RelativeLayout relativeLayout3 = (RelativeLayout) this.U.findViewById(R.id.change_lock);
        this.H0 = relativeLayout3;
        relativeLayout3.setOnKeyListener(this);
        this.H0.setOnClickListener(this);
        this.H0.setOnFocusChangeListener(this);
        if (ea.h.f6693x == "") {
            this.H0.setVisibility(8);
        }
        ArrayList arrayList9 = new ArrayList();
        this.V0 = arrayList9;
        arrayList9.add(n(R.string.Horizontal));
        this.V0.add(n(R.string.Vertical));
        this.f7918y0 = (RelativeLayout) this.U.findViewById(R.id.vod_group_bg);
        this.f7919z0 = (TextView) this.U.findViewById(R.id.vod_group_text);
        this.E0 = (ImageView) this.U.findViewById(R.id.vod_group_left);
        this.F0 = (ImageView) this.U.findViewById(R.id.vod_group_right);
        this.f7918y0.setOnClickListener(this);
        this.f7918y0.setOnKeyListener(this);
        this.f7918y0.setOnFocusChangeListener(this);
        if (SpkApplication.f8737c.getApplicationContext().getSharedPreferences(a2.a.s("Rjg6iuYm9iM=\n", "JEtK+INAk1E=\n"), 0).contains(a2.a.s("dnvYO83+Juh3ZNI9\n", "JSuHbYK6ea8=\n"))) {
            this.f7881c1 = org.bitspark.android.utils.m.e(a2.a.s("p88gH5Bfeymm0CoZ\n", "9J9/Sd8bJG4=\n"), false).booleanValue();
        } else {
            this.f7881c1 = ea.h.N;
        }
        Log.i(str3, a2.a.s("E2tYrdtC1/MUbHGukw==\n", "ehgQwqkrrZw=\n") + this.f7881c1);
        if (this.f7881c1) {
            this.f7919z0.setText(R.string.Horizontal);
        } else {
            this.f7919z0.setText(R.string.Vertical);
        }
        int iIntValue3 = org.bitspark.android.utils.m.f(0, a2.a.s("juvOqSiOnr+Y5MW0PZ0=\n", "3buR7W3Y1/w=\n")).intValue();
        boolean zG = this.f7887f1.g();
        this.f7889g1 = (TextView) this.U.findViewById(R.id.tv_device_type);
        this.f7891h1 = (RelativeLayout) this.U.findViewById(R.id.rl_device_type);
        RelativeLayout relativeLayout4 = (RelativeLayout) this.U.findViewById(R.id.rl_hide_sidebar);
        this.f7892i1 = relativeLayout4;
        relativeLayout4.setOnClickListener(this);
        this.f7892i1.setOnFocusChangeListener(this);
        this.f7892i1.setOnKeyListener(this);
        RelativeLayout relativeLayout5 = (RelativeLayout) this.U.findViewById(R.id.rl_network_speed_test);
        this.f7894j1 = relativeLayout5;
        relativeLayout5.setOnClickListener(this);
        this.f7894j1.setOnFocusChangeListener(this);
        this.f7894j1.setOnKeyListener(this);
        this.f7896k1 = (ImageButton) this.U.findViewById(R.id.ib_network_speed_test_right_icon);
        this.f7894j1.setOnClickListener(new androidx.appcompat.app.a(15, this));
        this.f7904o1 = (ImageView) this.U.findViewById(R.id.iv_hide_sidebar_left);
        this.f7906p1 = (ImageView) this.U.findViewById(R.id.iv_hide_sidebar_right);
        this.f7898l1 = (TextView) this.U.findViewById(R.id.tv_hide_sidebar);
        this.f7900m1 = (ImageView) this.U.findViewById(R.id.iv_device_type_left);
        this.f7902n1 = (ImageView) this.U.findViewById(R.id.iv_device_type_right);
        this.f7891h1.setOnClickListener(this);
        this.f7891h1.setOnFocusChangeListener(this);
        this.f7891h1.setOnKeyListener(this);
        boolean z7 = iIntValue3 == 0;
        if (zG) {
            this.f7898l1.setText(n(R.string.auto_start_on));
        } else {
            this.f7898l1.setText(n(R.string.auto_start_off));
        }
        if (z7) {
            this.f7889g1.setText(n(R.string.device_type_tv));
            this.f7892i1.setVisibility(0);
        } else {
            this.f7889g1.setText(n(R.string.device_type_phone));
            this.f7892i1.setVisibility(8);
        }
        RelativeLayout relativeLayout6 = (RelativeLayout) this.U.findViewById(R.id.clear_data_bg);
        this.G0 = relativeLayout6;
        relativeLayout6.setOnKeyListener(this);
        this.G0.setOnClickListener(this);
        this.G0.setOnFocusChangeListener(this);
        this.I0 = (RelativeLayout) this.U.findViewById(R.id.update_bg);
        this.M0 = (TextView) this.U.findViewById(R.id.update_text);
        String string = j().getResources().getString(R.string.current_version);
        TextView textView = this.M0;
        StringBuilder sbM = ea.q.m(string);
        sbM.append(a2.a.s("2w==\n", "4W0mktYxzkE=\n"));
        sbM.append(ea.a.f6603g);
        textView.setText(sbM.toString());
        this.I0.setOnKeyListener(this);
        this.I0.setOnClickListener(this);
        this.I0.setOnFocusChangeListener(this);
        RelativeLayout relativeLayout7 = (RelativeLayout) this.U.findViewById(R.id.aboutus_bg);
        this.J0 = relativeLayout7;
        relativeLayout7.setOnKeyListener(this);
        this.J0.setOnClickListener(this);
        this.J0.setOnFocusChangeListener(this);
        this.J0.setVisibility(8);
        if (!ea.h.f6682m) {
            this.i0.setVisibility(8);
        }
        RelativeLayout relativeLayout8 = (RelativeLayout) this.U.findViewById(R.id.system_info);
        this.K0 = relativeLayout8;
        relativeLayout8.setOnKeyListener(this);
        this.K0.setOnClickListener(this);
        this.K0.setOnFocusChangeListener(this);
        this.K0.setVisibility(0);
        String str4 = Build.BRAND + a2.a.s("XQ==\n", "cm/WwjEKmqE=\n") + Build.MODEL + a2.a.s("tA==\n", "mw9gHc8LwHA=\n") + Build.VERSION.RELEASE;
        String strL = r4.b.l(j());
        if (strL.length() > 6) {
            strL = strL.substring(0, 6);
        }
        ((TextView) this.U.findViewById(R.id.system_info_txt)).setText(ea.q.k("mw==\n", "tBAtn8wSTxk=\n", ea.q.m(str4), strL));
        RelativeLayout relativeLayout9 = (RelativeLayout) this.U.findViewById(R.id.settings_logout);
        this.L0 = relativeLayout9;
        relativeLayout9.setOnKeyListener(this);
        this.L0.setOnClickListener(this);
        this.L0.setOnFocusChangeListener(this);
        this.L0.setVisibility(0);
        this.V = this.f7891h1;
        this.W = this.L0;
        Log.i(a2.a.s("OuKUqu3O8GUA7oyu\n", "dIfg3YK8mzA=\n"), a2.a.s("BJJGfPsOgCgPpEZd9weJPQvXAgGiSQ==\n", "Y/cyL5Jp7kk=\n"));
        FragmentActivity fragmentActivityH2 = h();
        if (fragmentActivityH2 != null) {
            String string2 = fragmentActivityH2.getString(R.string.network_status_not_good);
            boolean zB = org.bitspark.android.utils.k.b(fragmentActivityH2);
            int i6 = R.mipmap.network_icon4_3x;
            if (zB) {
                int iCalculateSignalLevel = WifiManager.calculateSignalLevel(((WifiManager) fragmentActivityH2.getApplicationContext().getSystemService(a2.a.s("Ih9x5w==\n", "VXYXjgke6jY=\n"))).getConnectionInfo().getRssi(), 5);
                if (iCalculateSignalLevel == 1) {
                    i6 = R.mipmap.network_icon1_3x;
                } else if (iCalculateSignalLevel == 2) {
                    i6 = R.mipmap.network_icon2_3x;
                } else if (iCalculateSignalLevel == 3) {
                    i6 = R.mipmap.network_icon3_3x;
                } else if (iCalculateSignalLevel != 4) {
                    this.f7908q1 = true;
                    Q(string2);
                    i6 = R.mipmap.network_icon_no_3x;
                }
            }
            this.f7896k1.setImageResource(i6);
            if (org.bitspark.android.utils.k.a(fragmentActivityH2)) {
                org.bitspark.android.utils.k.e(new v(this));
            } else {
                this.f7896k1.setImageResource(R.mipmap.network_icon_no_3x);
                this.f7908q1 = true;
                Q(string2);
            }
        }
        return this.U;
    }
}
