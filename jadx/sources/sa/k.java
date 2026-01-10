package sa;

import android.content.Context;
import android.content.DialogInterface;
import android.text.method.ScrollingMovementMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.dinuscxj.progressbar.CircleProgressBar;
import com.p2elite.brtv2.R;
import fa.v;
import ka.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final Context f9864a;

    /* renamed from: b, reason: collision with root package name */
    public String f9865b;

    /* renamed from: c, reason: collision with root package name */
    public String f9866c;
    public String d;

    /* renamed from: e, reason: collision with root package name */
    public String f9867e;
    public String f;

    /* renamed from: h, reason: collision with root package name */
    public DialogInterface.OnClickListener f9869h;

    /* renamed from: i, reason: collision with root package name */
    public DialogInterface.OnClickListener f9870i;

    /* renamed from: j, reason: collision with root package name */
    public s f9871j;

    /* renamed from: l, reason: collision with root package name */
    public CircleProgressBar f9873l;

    /* renamed from: m, reason: collision with root package name */
    public ImageView f9874m;

    /* renamed from: n, reason: collision with root package name */
    public Button f9875n;

    /* renamed from: o, reason: collision with root package name */
    public Button f9876o;

    /* renamed from: p, reason: collision with root package name */
    public Button f9877p;

    /* renamed from: g, reason: collision with root package name */
    public int f9868g = 0;

    /* renamed from: k, reason: collision with root package name */
    public v f9872k = null;

    public k(Context context) {
        this.f9864a = context;
    }

    public final e a() {
        String strS = a2.a.s("mc6KD9rZcEqbyZ8B28hd\n", "9a/zYK+tLyM=\n");
        Context context = this.f9864a;
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(strS);
        e eVar = new e(context, R.style.Dialog);
        View viewInflate = layoutInflater.inflate(R.layout.dialog_normal_layout, (ViewGroup) null);
        eVar.addContentView(viewInflate, new ViewGroup.LayoutParams(-1, -2));
        ((TextView) viewInflate.findViewById(R.id.title)).setText(this.f9865b);
        if (this.d != null) {
            Button button = (Button) viewInflate.findViewById(R.id.positiveButton);
            this.f9875n = button;
            button.setText(this.d);
            this.f9875n.setOnKeyListener(this);
            if (this.f9869h != null) {
                this.f9875n.setOnClickListener(new j(this, eVar, 0));
            }
        } else {
            viewInflate.findViewById(R.id.positiveButton).setVisibility(8);
        }
        if (this.f9867e != null) {
            Button button2 = (Button) viewInflate.findViewById(R.id.negativeButton);
            this.f9876o = button2;
            button2.setText(this.f9867e);
            v vVar = this.f9872k;
            if (vVar != null) {
                this.f9876o.setOnKeyListener(vVar);
            } else {
                this.f9876o.setOnKeyListener(this);
            }
            if (this.f9870i != null) {
                this.f9876o.setOnClickListener(new j(this, eVar, 1));
            }
        } else {
            viewInflate.findViewById(R.id.negativeButton).setVisibility(8);
        }
        if (this.f != null) {
            Button button3 = (Button) viewInflate.findViewById(R.id.cancelButton);
            this.f9877p = button3;
            button3.setVisibility(0);
            this.f9877p.setText(this.f);
            this.f9877p.setOnKeyListener(this);
            if (this.f9871j != null) {
                this.f9877p.setOnClickListener(new j(this, eVar, 2));
            }
        } else {
            viewInflate.findViewById(R.id.cancelButton).setVisibility(8);
        }
        if (this.f9866c != null) {
            TextView textView = (TextView) viewInflate.findViewById(R.id.message);
            textView.setText(this.f9866c);
            textView.setMovementMethod(ScrollingMovementMethod.getInstance());
        }
        this.f9873l = (CircleProgressBar) viewInflate.findViewById(R.id.dialog_progress);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.dialog_icon);
        this.f9874m = imageView;
        int i6 = this.f9868g;
        if (i6 != 0) {
            imageView.setImageResource(i6);
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
            this.f9876o.requestFocus();
            return true;
        }
        if (id == R.id.positiveButton) {
            if (i6 != 4) {
                return false;
            }
            this.f9875n.requestFocus();
            return true;
        }
        if (id != R.id.cancelButton || i6 != 4) {
            return false;
        }
        this.f9877p.requestFocus();
        return true;
    }
}
