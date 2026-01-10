package sa;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class p extends androidx.fragment.app.m {

    /* renamed from: s0, reason: collision with root package name */
    public static final String f9881s0 = a2.a.s("9kK6\n", "mzHdNT00cyc=\n");

    /* renamed from: k0, reason: collision with root package name */
    public Runnable f9882k0;

    /* renamed from: l0, reason: collision with root package name */
    public Runnable f9883l0;

    /* renamed from: m0, reason: collision with root package name */
    public TextView f9884m0;

    /* renamed from: n0, reason: collision with root package name */
    public Button f9885n0;

    /* renamed from: o0, reason: collision with root package name */
    public Button f9886o0;

    /* renamed from: p0, reason: collision with root package name */
    public Button f9887p0;

    /* renamed from: q0, reason: collision with root package name */
    public final Handler f9888q0 = new Handler(Looper.getMainLooper());

    /* renamed from: r0, reason: collision with root package name */
    public o f9889r0;

    @Override // androidx.fragment.app.m, androidx.fragment.app.s
    public final void B() {
        super.B();
        Button button = this.f9886o0;
        if (button != null) {
            button.requestFocus();
        }
    }

    @Override // androidx.fragment.app.m
    public final Dialog R() {
        View viewInflate = LayoutInflater.from(j()).inflate(R.layout.tv_alert_dialog_layout, (ViewGroup) null);
        Button button = (Button) viewInflate.findViewById(R.id.leftBtn);
        this.f9885n0 = button;
        button.setText(n(R.string.Upload_log));
        this.f9885n0.setOnClickListener(new n(this, 0));
        Button button2 = (Button) viewInflate.findViewById(R.id.speedTestBtn);
        this.f9887p0 = button2;
        button2.setText(R.string.network_test);
        this.f9887p0.setOnClickListener(new n(this, 1));
        Button button3 = (Button) viewInflate.findViewById(R.id.rightBtn);
        this.f9886o0 = button3;
        button3.setText(n(R.string.Cancel));
        this.f9886o0.setOnClickListener(new n(this, 2));
        this.f9884m0 = (TextView) viewInflate.findViewById(R.id.message);
        String string = this.f1524g.getString(f9881s0);
        if (string != null) {
            this.f9884m0.setText(string);
        }
        a2.a.s("Yji1\n", "NnnyVZYEOIo=\n");
        a2.a.s("9HqxNVpsm8zffZMrUGrP3e1ZlzRMbIjMtWeXM2tol92zeYEgFjfP\n", "mxTyRz8N76k=\n");
        androidx.appcompat.app.i iVar = new androidx.appcompat.app.i(K());
        iVar.f314a.f243i = viewInflate;
        androidx.appcompat.app.j jVarA = iVar.a();
        jVarA.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        jVarA.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: sa.m
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i6, KeyEvent keyEvent) {
                String str = p.f9881s0;
                p pVar = this.f9878a;
                pVar.getClass();
                if (i6 != 4 || keyEvent.getAction() != 1) {
                    return false;
                }
                pVar.Q(false, false);
                return true;
            }
        });
        return jVarA;
    }

    @Override // androidx.fragment.app.m, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        this.f9889r0.onDismiss();
    }
}
