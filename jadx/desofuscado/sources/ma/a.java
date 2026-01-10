package ma;

import android.os.Handler;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.mediarouter.app.z;
import com.google.android.material.textfield.l;
import com.p2elite.brtv2.R;
import fa.f;
import fa.j0;
import fa.n0;
import org.bitspark.android.R$drawable;
import t3.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends t3.a {

    /* renamed from: e, reason: collision with root package name */
    public na.a f8281e;
    public na.a f;

    /* renamed from: g, reason: collision with root package name */
    public na.a f8282g;

    /* renamed from: h, reason: collision with root package name */
    public long f8283h;

    /* renamed from: i, reason: collision with root package name */
    public long f8284i;

    /* renamed from: j, reason: collision with root package name */
    public long f8285j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f8286k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f8287l;

    /* renamed from: m, reason: collision with root package name */
    public n0 f8288m;

    /* renamed from: n, reason: collision with root package name */
    public Handler f8289n;

    static {
        a2.a.s("WUNKI4e5KJ5TQlIRnL0o\n", "EiYzYejYWvo=\n");
    }

    @Override // t3.c
    public final void a(d dVar, Object obj) {
        oa.a aVar = (oa.a) obj;
        View view = dVar.f10135b;
        int itemViewType = dVar.getItemViewType();
        if (itemViewType != 0) {
            switch (itemViewType) {
                case 3:
                    ((ImageView) dVar.b(R.id.tv_kb)).setImageResource(R$drawable.iv_common_kb_delete_smaller);
                    dVar.b(R.id.tv_kb).setOnTouchListener(new j0(this, dVar, dVar.getLayoutPosition(), 4));
                    break;
                case 4:
                    ((ImageView) dVar.b(R.id.tv_kb)).setImageResource(R$drawable.iv_common_kb_delete_small);
                    dVar.b(R.id.tv_kb).setOnTouchListener(new j0(this, dVar, dVar.getLayoutPosition(), 4));
                    break;
                case 5:
                    ((ImageView) dVar.b(R.id.tv_kb)).setImageResource(R$drawable.iv_commom_kb_lowercase);
                    dVar.b(R.id.tv_kb).setBackgroundResource(R$drawable.selector_keyboard_key_alphabet);
                    break;
                case 6:
                    ((TextView) dVar.b(R.id.tv_kb)).setText(aVar.f8657a);
                    break;
                case 7:
                    ((TextView) dVar.b(R.id.tv_kb)).setText(aVar.f8657a);
                    break;
                case 8:
                    ((TextView) dVar.b(R.id.tv_kb)).setText(aVar.f8657a);
                    break;
                case 9:
                    ((ImageView) dVar.b(R.id.tv_kb)).setImageResource(R$drawable.iv_commom_kb_space);
                    break;
                default:
                    if (!pa.a.a(aVar.f8657a)) {
                        String str = aVar.f8657a;
                        if (a2.a.s("e7GxQckziSNzublJwTuBO2uhoVHZI5kzY6k=\n", "GtPSJaxV7ks=\n").contains(str.toLowerCase())) {
                            ((TextView) dVar.b(R.id.tv_kb)).setText(str.toLowerCase());
                            break;
                        }
                    }
                    break;
            }
        } else {
            ((TextView) dVar.b(R.id.tv_kb)).setText(aVar.f8657a);
            ((TextView) dVar.f10135b).setTextSize(20.0f);
        }
        dVar.b(R.id.tv_kb).setOnTouchListener(new l(this, 1, dVar));
        dVar.b(R.id.tv_kb).setOnKeyListener(new f(this, dVar));
        dVar.b(R.id.tv_kb).setOnClickListener(new z(this, 3, dVar));
    }
}
