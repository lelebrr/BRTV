package la;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import ea.g;
import ea.h;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.AuthInfo;
import org.bitspark.android.utils.m;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class e extends ka.b implements View.OnKeyListener, View.OnClickListener {
    public Button U;
    public TextView V;
    public TextView W;
    public TextView X;
    public TextView Y;
    public TextView Z;

    /* renamed from: b0, reason: collision with root package name */
    public TextView f8093b0;

    /* renamed from: c0, reason: collision with root package name */
    public TextView f8094c0;

    /* renamed from: d0, reason: collision with root package name */
    public TextView f8095d0;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f8096e0 = false;

    /* renamed from: f0, reason: collision with root package name */
    public View f8097f0;

    @Override // e8.a, androidx.fragment.app.s
    public final void B() {
        super.B();
        this.f8096e0 = true;
        String strS = a2.a.s("wsqAuDGfGh3a\n", "rqXn0V/NaXE=\n");
        String strS2 = a2.a.s("ju5AVSQ2XB4=\n", "4YASMFdDMXs=\n");
        boolean z7 = m.f8784b;
        Log.i(strS, strS2);
        R();
    }

    public final void Q() {
        Button button;
        Button button2;
        if (h.f6675e && (button2 = this.U) != null && button2.getVisibility() != 0) {
            this.U.setVisibility(0);
        } else {
            if (!h.f6675e || (button = this.U) == null) {
                return;
            }
            button.getVisibility();
        }
    }

    public final void R() {
        AuthInfo.ServiceBean serviceBean;
        String strS = a2.a.s("mrb0yimc1/ui\n", "1tmTo0fOpJc=\n");
        String strS2 = a2.a.s("4pXC+XDbjAbYk8vhC4bH\n", "kf2tjiWo6XQ=\n");
        boolean z7 = m.f8784b;
        Log.i(strS, strS2);
        if (!this.f8096e0) {
            Log.i(a2.a.s("YjVFRXnAXhZa\n", "LloiLBeSLXo=\n"), a2.a.s("WETGHzE+cshQRtwOdCg32kRYwQ==\n", "MSqva1RaUq4=\n"));
            return;
        }
        AuthInfo authInfo = ga.m.f7150e;
        if (authInfo == null || (serviceBean = authInfo.service) == null) {
            return;
        }
        this.V.setText(serviceBean.name);
        this.W.setText(ga.m.f7150e.service.reseller);
        this.Y.setTextColor(u7.d.i(j(), R.color.user_center_txt_color));
        AuthInfo.UserBean userBean = ga.m.f7150e.user;
        if (userBean != null) {
            if (userBean.user_name != null) {
                if (m.f(0, g.f6659b).intValue() == 2) {
                    this.X.setText(a2.a.s("uDVYQCUtZEE=\n", "+mcMFgV7LRE=\n"));
                } else {
                    this.X.setText(ga.m.f7150e.user.user_name.replace(h.d, ""));
                }
            }
            this.X.setSelected(true);
            String string = m().getString(R.string.user_status_enabled);
            int i6 = ga.m.f7150e.user.user_status;
            if (i6 == -1) {
                string = m().getString(R.string.user_status_registered);
            } else if (i6 == 0) {
                string = m().getString(R.string.user_status_disabled);
                this.Y.setTextColor(-65536);
            }
            this.Y.setText(string);
            if (ga.m.f7150e.user.EndTime > 0) {
                this.Z.setText(new SimpleDateFormat(a2.a.s("RQgAkgQy0mxYFQ==\n", "PHF56yl/n0E=\n"), Locale.getDefault()).format(Long.valueOf(ga.m.f7150e.user.EndTime)));
                long jCurrentTimeMillis = ((ga.m.f7150e.user.EndTime - (System.currentTimeMillis() + m.f8783a)) / 3600) / 1000;
                int i10 = (int) (jCurrentTimeMillis / 24);
                int i11 = (int) (jCurrentTimeMillis % 24);
                if (i10 < 0) {
                    i10 = 0;
                }
                if (i11 < 0) {
                    i11 = 0;
                }
                if (i10 == 0) {
                    this.f8093b0.setText(String.format(n(R.string.service_expire_info_hours), Integer.valueOf(i11)));
                } else {
                    this.f8093b0.setText(String.format(n(R.string.service_expire_info), Integer.valueOf(i10)));
                }
            } else {
                this.Z.setText(m().getString(R.string.nolimit));
            }
        }
        if (ga.m.f7150e.service.type == 1) {
            this.f8093b0.setText(m().getString(R.string.demo_service));
        }
        this.f8094c0.setText(ga.m.f7150e.service.telephone);
        this.f8095d0.setText(ga.m.f7150e.service.website);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view.getId() == R.id.logout) {
            ((Spark) h()).J0();
        }
    }

    @Override // ka.b, android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        int id = view.getId();
        if (keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0) {
            if (id == R.id.logout && (i6 == 19 || i6 == 20)) {
                this.U.requestFocus();
                this.U.setSelected(true);
                return true;
            }
            if (i6 == 21 || i6 == 4) {
                Spark spark = (Spark) h();
                RadioButton radioButton = spark.E;
                if (radioButton != null && radioButton.isShown()) {
                    o9.d.y(spark.E);
                    spark.E.setChecked(true);
                }
                return true;
            }
            if (i6 == 22) {
                return true;
            }
        }
        return super.onKey(view, i6, keyEvent);
    }

    @Override // androidx.fragment.app.s
    public final View t(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.userviewpager_loginsuccess, (ViewGroup) null);
        Button button = (Button) viewInflate.findViewById(R.id.logout);
        this.U = button;
        button.setOnClickListener(this);
        this.U.setOnKeyListener(this);
        this.V = (TextView) viewInflate.findViewById(R.id.service_name);
        this.W = (TextView) viewInflate.findViewById(R.id.reseller);
        this.X = (TextView) viewInflate.findViewById(R.id.username);
        this.Y = (TextView) viewInflate.findViewById(R.id.user_status);
        this.Z = (TextView) viewInflate.findViewById(R.id.expire_time);
        this.f8093b0 = (TextView) viewInflate.findViewById(R.id.expire_notice);
        this.f8094c0 = (TextView) viewInflate.findViewById(R.id.phone);
        this.f8095d0 = (TextView) viewInflate.findViewById(R.id.website);
        View viewFindViewById = viewInflate.findViewById(R.id.servie_period_panel);
        this.f8097f0 = viewFindViewById;
        if (!h.B) {
            viewFindViewById.setVisibility(8);
        }
        if (!h.f6675e) {
            this.U.setVisibility(8);
            this.V.setFocusable(true);
            this.V.setOnKeyListener(this);
        }
        return viewInflate;
    }
}
