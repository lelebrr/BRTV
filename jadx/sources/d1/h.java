package d1;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.appcompat.widget.i3;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final EditText f6011a;

    /* renamed from: b, reason: collision with root package name */
    public i3 f6012b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6013c = true;

    public h(EditText editText) {
        this.f6011a = editText;
    }

    public static void a(EditText editText, int i6) {
        int length;
        if (i6 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            b1.i iVarA = b1.i.a();
            if (editableText == null) {
                length = 0;
            } else {
                iVarA.getClass();
                length = editableText.length();
            }
            iVarA.e(editableText, 0, length);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i6, int i10, int i11) {
        EditText editText = this.f6011a;
        if (editText.isInEditMode() || !this.f6013c || b1.i.f3106j == null || i10 > i11 || !(charSequence instanceof Spannable)) {
            return;
        }
        int iB = b1.i.a().b();
        if (iB != 0) {
            if (iB == 1) {
                b1.i.a().e((Spannable) charSequence, i6, i11 + i6);
                return;
            } else if (iB != 3) {
                return;
            }
        }
        b1.i iVarA = b1.i.a();
        if (this.f6012b == null) {
            this.f6012b = new i3(editText);
        }
        iVarA.f(this.f6012b);
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i6, int i10, int i11) {
    }
}
