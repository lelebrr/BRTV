package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.KeyEvent;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class SearchEditText extends StreamingTextView {

    /* renamed from: h, reason: collision with root package name */
    public w0 f1756h;

    public SearchEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.style.TextAppearance_Leanback_SearchTextEdit);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onKeyPreIme(int i6, KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4 && this.f1756h != null) {
            post(new a(3, this));
        }
        return super.onKeyPreIme(i6, keyEvent);
    }

    @Override // androidx.leanback.widget.StreamingTextView, android.widget.TextView
    public /* bridge */ /* synthetic */ void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    public void setFinalRecognizedText(CharSequence charSequence) {
        setText(charSequence);
        bringPointIntoView(length());
    }

    public void setOnKeyboardDismissListener(w0 w0Var) {
        this.f1756h = w0Var;
    }

    public SearchEditText(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
    }
}
