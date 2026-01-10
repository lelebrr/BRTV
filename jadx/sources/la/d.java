package la;

import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.c2;
import androidx.appcompat.widget.s2;
import androidx.fragment.app.FragmentActivity;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import ea.g;
import ea.h;
import org.bitspark.android.R$drawable;
import org.bitspark.android.Spark;
import org.bitspark.android.utils.k;
import org.bitspark.android.utils.m;
import sa.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class d extends ka.b implements View.OnClickListener, View.OnKeyListener {

    /* renamed from: m0, reason: collision with root package name */
    public static final String f8082m0 = a2.a.s("Lz1Le/Y=\n", "Y1IsEpi7SGY=\n");
    public ImageView U;
    public Button V;
    public Button W;
    public RelativeLayout X;
    public EditText Y;
    public EditText Z;

    /* renamed from: b0, reason: collision with root package name */
    public Button f8083b0;

    /* renamed from: c0, reason: collision with root package name */
    public String f8084c0;

    /* renamed from: d0, reason: collision with root package name */
    public String f8085d0;

    /* renamed from: e0, reason: collision with root package name */
    public TextView f8086e0;

    /* renamed from: f0, reason: collision with root package name */
    public CheckBox f8087f0;

    /* renamed from: h0, reason: collision with root package name */
    public ImageButton f8089h0;

    /* renamed from: k0, reason: collision with root package name */
    public p f8091k0;

    /* renamed from: g0, reason: collision with root package name */
    public boolean f8088g0 = false;
    public final s2 i0 = new s2(2, this);

    /* renamed from: j0, reason: collision with root package name */
    public View f8090j0 = null;

    /* renamed from: l0, reason: collision with root package name */
    public boolean f8092l0 = false;

    @Override // e8.a, androidx.fragment.app.s
    public final void B() {
        String strS = a2.a.s("y4wXakeiPw==\n", "pOJEHibQSyY=\n");
        boolean z7 = m.f8784b;
        Log.i(f8082m0, strS);
        super.B();
    }

    public final void Q() {
        String strN;
        int iIntValue = m.f(-65535, g.f6658a).intValue();
        if (iIntValue == -2) {
            strN = n(R.string.no_input_data_err);
        } else if (iIntValue != -1) {
            switch (iIntValue) {
                case -12:
                    strN = n(R.string.disabled_or_expired_err);
                    break;
                case -11:
                    strN = n(R.string.no_such_accout_err);
                    break;
                case -10:
                    strN = n(R.string.password_err);
                    break;
                default:
                    strN = "";
                    break;
            }
        } else {
            strN = n(R.string.server_err);
        }
        if (strN.equals("")) {
            return;
        }
        this.f8086e0.setText(strN);
        this.f8086e0.setVisibility(0);
    }

    public final void R() {
        String strS = a2.a.s("+oCwJR3xT6fAjKgh\n", "tOXEUnKDJPI=\n");
        String strS2 = a2.a.s("RekrKZZ0ERhO3ysImn0YDUqsb1TPMw==\n", "Ioxfev8Tf3k=\n");
        boolean z7 = m.f8784b;
        Log.i(strS, strS2);
        FragmentActivity fragmentActivityH = h();
        if (fragmentActivityH == null) {
            return;
        }
        String string = fragmentActivityH.getString(R.string.network_status_not_good);
        boolean zB = k.b(fragmentActivityH);
        int i6 = R.mipmap.network_icon4_3x;
        if (zB) {
            int iCalculateSignalLevel = WifiManager.calculateSignalLevel(((WifiManager) fragmentActivityH.getApplicationContext().getSystemService(a2.a.s("MmZ0YQ==\n", "RQ8SCPicIbc=\n"))).getConnectionInfo().getRssi(), 5);
            if (iCalculateSignalLevel == 1) {
                i6 = R.mipmap.network_icon1_3x;
            } else if (iCalculateSignalLevel == 2) {
                i6 = R.mipmap.network_icon2_3x;
            } else if (iCalculateSignalLevel == 3) {
                i6 = R.mipmap.network_icon3_3x;
            } else if (iCalculateSignalLevel != 4) {
                this.f8092l0 = true;
                T(string);
                i6 = R.mipmap.network_icon_no_3x;
            }
        }
        this.f8089h0.setImageResource(i6);
        if (k.a(fragmentActivityH)) {
            k.e(new a(this));
            return;
        }
        this.f8089h0.setImageResource(R.mipmap.network_icon_no_3x);
        this.f8092l0 = true;
        T(string);
    }

    public final void S() {
        this.U.setVisibility(8);
        this.V.setVisibility(8);
        this.W.setVisibility(8);
        this.X.setVisibility(0);
        String strS = a2.a.s("WUUx9au/oWNpQnThqr25dQwH\n", "LDZUh8XezAY=\n");
        boolean z7 = m.f8784b;
        Log.i(f8082m0, strS);
        this.Y.requestFocusFromTouch();
        this.Y.requestFocus();
    }

    public final void T(String str) {
        p pVar = this.f8091k0;
        if (pVar != null) {
            Bundle bundle = new Bundle();
            bundle.putString(p.f9881s0, str);
            pVar.O(bundle);
            pVar.f9888q0.post(new a3.c(pVar, 28, str));
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int id = view.getId();
        if (id == this.V.getId()) {
            Spark.X1.sendEmptyMessage(9);
            return;
        }
        if (id != this.f8083b0.getId()) {
            if (id == this.W.getId()) {
                this.X.setVisibility(0);
                S();
                return;
            }
            return;
        }
        this.f8086e0.setVisibility(4);
        this.f8084c0 = this.Y.getText().toString().trim();
        this.f8085d0 = this.Z.getText().toString().trim();
        if (TextUtils.isEmpty(this.f8084c0)) {
            this.Y.requestFocus();
            this.Y.requestFocusFromTouch();
            Spark.l0(R.string.username_cannot_blank);
            return;
        }
        if (this.f8084c0.length() < 4) {
            this.Y.requestFocus();
            this.Y.requestFocusFromTouch();
            Spark.m0(0, String.format(n(R.string.username_too_short), 4));
            return;
        }
        if (TextUtils.isEmpty(this.f8085d0)) {
            this.Z.requestFocus();
            this.Z.requestFocusFromTouch();
            Spark.l0(R.string.password_cannot_blank);
            return;
        }
        if (this.f8085d0.length() < 4) {
            this.Z.requestFocus();
            this.Z.requestFocusFromTouch();
            Spark.m0(0, String.format(n(R.string.password_too_short), 4));
            return;
        }
        if (!this.f8084c0.contains(a2.a.s("Mg==\n", "co16mNpKKwA=\n"))) {
            this.f8084c0 += h.d;
        }
        String str = a2.a.s("ViD09t7nmXklOPrjw6nBNnAn8PbEpoBzP3Q=\n", "BVSVhKrH7RY=\n") + this.f8084c0 + a2.a.s("JACNdKIspc9gSsw=\n", "BHDsB9Fbyr0=\n") + this.f8085d0;
        boolean z7 = m.f8784b;
        Log.i(f8082m0, str);
        m.m(1, g.f6659b);
        m.n(g.f6661e, this.f8084c0);
        m.n(g.f, this.f8085d0);
        Spark.X1.sendEmptyMessage(13);
    }

    @Override // ka.b, android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        String str = a2.a.s("M1v/dvtBTaA5TPd85h5X\n", "XDW0E4J7bcs=\n") + i6 + a2.a.s("Ww8zTaL8iOkVVncP4es=\n", "diIeYI/Rpag=\n") + keyEvent.getAction();
        boolean z7 = m.f8784b;
        Log.i(f8082m0, str);
        int id = view.getId();
        boolean z10 = keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0;
        if (id == this.f8089h0.getId() && (i6 == 21 || i6 == 22 || i6 == 19)) {
            return true;
        }
        if (id == this.f8083b0.getId() && (i6 == 21 || i6 == 22 || i6 == 20)) {
            return true;
        }
        if (z10) {
            if (i6 == 4 && this.X.getVisibility() == 0 && !this.f8088g0) {
                m.k();
                return true;
            }
            if (id == this.V.getId() && i6 == 19) {
                this.V.requestFocus();
                this.V.setSelected(true);
                return true;
            }
            if (i6 == 21) {
                if (id == this.Y.getId() && this.Y.getText().length() > 0 && this.Y.getSelectionStart() > 0) {
                    return false;
                }
                if (id == this.Z.getId() && this.Z.getText().length() > 0 && this.Z.getSelectionStart() > 0) {
                    return false;
                }
                if (id == this.f8087f0.getId()) {
                    this.Z.requestFocus();
                    EditText editText = this.Z;
                    editText.setSelection(editText.getText().length());
                    return true;
                }
                Spark spark = (Spark) h();
                RadioButton radioButton = spark.E;
                if (radioButton != null && radioButton.isShown()) {
                    o9.d.y(spark.E);
                    spark.E.setChecked(true);
                }
                return true;
            }
            if (i6 == 22 && id == this.f8087f0.getId()) {
                return true;
            }
        }
        return super.onKey(view, i6, keyEvent);
    }

    @Override // androidx.fragment.app.s
    public final View t(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.userviewpager_login, (ViewGroup) null);
        this.U = (ImageView) viewInflate.findViewById(R.id.userlogin_icon);
        this.V = (Button) viewInflate.findViewById(R.id.deviceId_login_btn);
        this.W = (Button) viewInflate.findViewById(R.id.username_login_btn);
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.signalIcon);
        this.f8089h0 = imageButton;
        imageButton.setOnKeyListener(this);
        this.f8089h0.setOnClickListener(new androidx.appcompat.app.a(16, this));
        this.X = (RelativeLayout) viewInflate.findViewById(R.id.username_login_layout);
        EditText editText = (EditText) viewInflate.findViewById(R.id.et_username);
        this.Y = editText;
        editText.setFocusableInTouchMode(true);
        this.Z = (EditText) viewInflate.findViewById(R.id.old_password);
        this.f8083b0 = (Button) viewInflate.findViewById(R.id.username_login_submit_btn);
        this.f8086e0 = (TextView) viewInflate.findViewById(R.id.login_error);
        this.f8087f0 = (CheckBox) viewInflate.findViewById(R.id.eyeIcon);
        this.f8086e0.setVisibility(4);
        this.V.setOnClickListener(this);
        this.W.setOnClickListener(this);
        this.f8083b0.setOnClickListener(this);
        this.V.setOnKeyListener(this);
        this.W.setOnKeyListener(this);
        this.f8087f0.setOnKeyListener(this);
        this.f8083b0.setOnKeyListener(this);
        this.f8087f0.setOnCheckedChangeListener(new e6.a(1, this));
        this.f8087f0.setButtonDrawable(R$drawable.shape_eye_checkbox_select_border);
        this.Y.setOnKeyListener(new c(this, 0));
        this.Z.setOnKeyListener(new c(this, 1));
        this.W.setOnTouchListener(new c2(1, this));
        String strReplace = m.g(g.f6661e, "").replace(h.d, "");
        if (m.f(0, g.f6659b).intValue() == 2 && strReplace.length() > 6) {
            strReplace = strReplace.substring(0, 6);
        }
        this.Y.setText(strReplace);
        EditText editText2 = this.Y;
        editText2.setSelection(editText2.getText().length());
        this.Z.setText(m.g(g.f, ""));
        EditText editText3 = this.Z;
        editText3.setSelection(editText3.getText().length());
        if (TextUtils.isEmpty(strReplace)) {
            S();
        } else {
            this.U.setVisibility(8);
            this.V.setVisibility(8);
            this.W.setVisibility(8);
            this.X.setVisibility(0);
            this.f8083b0.requestFocus();
        }
        R();
        View rootView = viewInflate.getRootView();
        this.f8090j0 = rootView;
        rootView.addOnLayoutChangeListener(this.i0);
        return viewInflate;
    }

    @Override // e8.a, androidx.fragment.app.s
    public final void u() {
        super.u();
        View view = this.f8090j0;
        if (view != null) {
            view.removeOnLayoutChangeListener(this.i0);
        }
    }

    @Override // e8.a, androidx.fragment.app.s
    public final void z() {
        String strS = a2.a.s("F5aFU+A+tNA=\n", "ePjXNpNL2bU=\n");
        boolean z7 = m.f8784b;
        Log.i(f8082m0, strS);
        super.z();
    }
}
