package androidx.appcompat.widget;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import com.google.android.material.textfield.TextInputLayout;
import com.tencent.mars.xlog.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p2 implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f801a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f802b;

    public /* synthetic */ p2(int i6, Object obj) {
        this.f801a = i6;
        this.f802b = obj;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) throws Resources.NotFoundException {
        switch (this.f801a) {
            case 1:
                com.google.android.material.textfield.e eVar = (com.google.android.material.textfield.e) this.f802b;
                if (eVar.f5343a.getSuffixText() == null) {
                    eVar.e(com.google.android.material.textfield.e.d(eVar));
                    break;
                }
                break;
            case 2:
                TextInputLayout textInputLayout = (TextInputLayout) this.f802b;
                textInputLayout.t(!textInputLayout.I0, false);
                if (textInputLayout.f5273l) {
                    textInputLayout.m(editable.length());
                }
                if (textInputLayout.f5287s) {
                    textInputLayout.u(editable.length());
                    break;
                }
                break;
            case 3:
                ka.r.Q((ka.r) this.f802b, editable.toString());
                break;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i6, int i10, int i11) {
        int i12 = this.f801a;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i6, int i10, int i11) {
        String strD;
        Object obj = this.f802b;
        switch (this.f801a) {
            case 0:
                SearchView searchView = (SearchView) obj;
                Editable text = searchView.f591p.getText();
                searchView.V = text;
                boolean zIsEmpty = TextUtils.isEmpty(text);
                searchView.x(!zIsEmpty);
                int i12 = 8;
                if (searchView.U && !searchView.N && zIsEmpty) {
                    searchView.f596u.setVisibility(8);
                    i12 = 0;
                }
                searchView.f598w.setVisibility(i12);
                searchView.t();
                searchView.w();
                charSequence.toString();
                break;
            case 1:
            case 2:
            case 3:
                break;
            default:
                String strS = a2.a.s("rID6iYA=\n", "7tOs5uQLZ1o=\n");
                String str = a2.a.s("ul+UffvLsV7pVZtb/duAaaFbm2j9x84=\n", "yTr1D5ij9Co=\n") + charSequence.toString();
                boolean z7 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS, str);
                if (charSequence.length() != 0) {
                    strD = ga.m.d(ga.m.g(ga.l.f7143h) + a2.a.s("YA==\n", "T227EYnoh9Y=\n") + ((Object) charSequence));
                } else {
                    strD = "";
                }
                String str2 = ka.m0.B0;
                ((ka.m0) obj).Y(-20, strD);
                break;
        }
    }

    private final void a(Editable editable) {
    }

    private final void b(Editable editable) {
    }

    private final void c(int i6, int i10, int i11, CharSequence charSequence) {
    }

    private final void d(int i6, int i10, int i11, CharSequence charSequence) {
    }

    private final void e(int i6, int i10, int i11, CharSequence charSequence) {
    }

    private final void f(int i6, int i10, int i11, CharSequence charSequence) {
    }

    private final void g(int i6, int i10, int i11, CharSequence charSequence) {
    }

    private final void h(int i6, int i10, int i11, CharSequence charSequence) {
    }

    private final void i(int i6, int i10, int i11, CharSequence charSequence) {
    }

    private final void j(int i6, int i10, int i11, CharSequence charSequence) {
    }
}
