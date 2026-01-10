package d1;

import android.text.InputFilter;
import android.text.Spanned;
import android.widget.TextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements InputFilter {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f6003a;

    /* renamed from: b, reason: collision with root package name */
    public c f6004b;

    public d(TextView textView) {
        this.f6003a = textView;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i6, int i10, Spanned spanned, int i11, int i12) {
        TextView textView = this.f6003a;
        if (textView.isInEditMode()) {
            return charSequence;
        }
        int iB = b1.i.a().b();
        if (iB != 0) {
            if (iB == 1) {
                if ((i12 == 0 && i11 == 0 && spanned.length() == 0 && charSequence == textView.getText()) || charSequence == null) {
                    return charSequence;
                }
                if (i6 != 0 || i10 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i6, i10);
                }
                return b1.i.a().e(charSequence, 0, charSequence.length());
            }
            if (iB != 3) {
                return charSequence;
            }
        }
        b1.i iVarA = b1.i.a();
        if (this.f6004b == null) {
            this.f6004b = new c(textView, this);
        }
        iVarA.f(this.f6004b);
        return charSequence;
    }
}
