package sa;

import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final Context f9848a;

    /* renamed from: b, reason: collision with root package name */
    public String f9849b;

    /* renamed from: c, reason: collision with root package name */
    public String f9850c;
    public String d;

    /* renamed from: e, reason: collision with root package name */
    public View f9851e;
    public DialogInterface.OnClickListener f;

    /* renamed from: g, reason: collision with root package name */
    public DialogInterface.OnClickListener f9852g;

    /* renamed from: h, reason: collision with root package name */
    public Button f9853h;

    /* renamed from: i, reason: collision with root package name */
    public Button f9854i;

    public d(Context context) {
        this.f9848a = context;
    }

    public final e a() {
        String strS = a2.a.s("EcmADqI/RD0TzpUAoy5p\n", "faj5YddLG1Q=\n");
        Context context = this.f9848a;
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(strS);
        e eVar = new e(context, R.style.Dialog);
        View viewInflate = layoutInflater.inflate(R.layout.dialog_logout_layout, (ViewGroup) null);
        eVar.addContentView(viewInflate, new ViewGroup.LayoutParams(-1, -2));
        if (this.f9850c != null) {
            Button button = (Button) viewInflate.findViewById(R.id.positiveButton);
            this.f9853h = button;
            button.setText(this.f9850c);
            this.f9853h.setOnKeyListener(this);
            if (this.f != null) {
                this.f9853h.setOnClickListener(new c(this, eVar, 0));
            }
        } else {
            viewInflate.findViewById(R.id.positiveButton).setVisibility(8);
        }
        if (this.d != null) {
            Button button2 = (Button) viewInflate.findViewById(R.id.negativeButton);
            this.f9854i = button2;
            button2.setText(this.d);
            this.f9854i.setOnKeyListener(this);
            if (this.f9852g != null) {
                this.f9854i.setOnClickListener(new c(this, eVar, 1));
            }
        } else {
            viewInflate.findViewById(R.id.negativeButton).setVisibility(8);
        }
        if (this.f9849b != null) {
            ((TextView) viewInflate.findViewById(R.id.message)).setText(this.f9849b);
        } else if (this.f9851e != null) {
            ((LinearLayout) viewInflate.findViewById(R.id.content)).removeAllViews();
            ((LinearLayout) viewInflate.findViewById(R.id.content)).addView(this.f9851e, new ViewGroup.LayoutParams(-1, -1));
        }
        if (this.f9851e == null) {
            this.f9851e = viewInflate;
        }
        eVar.setContentView(viewInflate);
        return eVar;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        int id = view.getId();
        if (id == R.id.negativeButton) {
            if (i6 != 4) {
                return false;
            }
            this.f9854i.requestFocus();
            return true;
        }
        if (id != R.id.positiveButton || i6 != 4) {
            return false;
        }
        this.f9853h.requestFocus();
        return true;
    }
}
