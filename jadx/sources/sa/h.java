package sa;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import ea.r;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextView f9856a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f9857b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ a0.f f9858c;

    public h(a0.f fVar, TextView textView, e eVar) {
        this.f9858c = fVar;
        this.f9856a = textView;
        this.f9857b = eVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        a0.f fVar = this.f9858c;
        String strTrim = ((EditText) fVar.d).getText().toString().trim();
        String strTrim2 = ((EditText) fVar.f40e).getText().toString().trim();
        String string = (TextUtils.isEmpty(strTrim) || TextUtils.isEmpty(strTrim2)) ? ((Context) fVar.f38b).getString(R.string.password_cannot_blank) : (strTrim.length() < 4 || strTrim2.length() < 4) ? String.format(((Context) fVar.f38b).getString(R.string.password_too_short), 4) : !org.bitspark.android.utils.m.g(ea.g.f6662g, ea.h.f6693x).equals(strTrim) ? ((Context) fVar.f38b).getString(R.string.password_err) : "";
        if (!string.isEmpty()) {
            TextView textView = this.f9856a;
            textView.setText(string);
            textView.setVisibility(0);
        } else {
            org.bitspark.android.utils.m.n(ea.g.f6662g, strTrim2);
            r rVar = (r) fVar.f39c;
            e eVar = this.f9857b;
            rVar.getClass();
            eVar.dismiss();
            eVar.dismiss();
        }
    }
}
