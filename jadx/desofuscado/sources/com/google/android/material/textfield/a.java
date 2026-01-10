package com.google.android.material.textfield;

import android.graphics.drawable.Drawable;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import androidx.appcompat.widget.p2;
import androidx.appcompat.widget.r2;
import com.google.android.material.internal.CheckableImageButton;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5305a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n f5306b;

    public /* synthetic */ a(n nVar, int i6) {
        this.f5305a = i6;
        this.f5306b = nVar;
    }

    public final void a(TextInputLayout textInputLayout) {
        int i6 = 0;
        n nVar = this.f5306b;
        switch (this.f5305a) {
            case 0:
                EditText editText = textInputLayout.getEditText();
                e eVar = (e) nVar;
                textInputLayout.setEndIconVisible(e.d(eVar));
                r2 r2Var = eVar.f;
                editText.setOnFocusChangeListener(r2Var);
                eVar.f5345c.setOnFocusChangeListener(r2Var);
                p2 p2Var = eVar.f5313e;
                editText.removeTextChangedListener(p2Var);
                editText.addTextChangedListener(p2Var);
                return;
            case 1:
                EditText editText2 = textInputLayout.getEditText();
                if (!(editText2 instanceof AutoCompleteTextView)) {
                    throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
                }
                AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText2;
                m mVar = (m) nVar;
                int boxBackgroundMode = mVar.f5343a.getBoxBackgroundMode();
                if (boxBackgroundMode == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(mVar.f5339p);
                } else if (boxBackgroundMode == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(mVar.f5338o);
                }
                mVar.e(autoCompleteTextView);
                autoCompleteTextView.setOnTouchListener(new l(mVar, i6, autoCompleteTextView));
                autoCompleteTextView.setOnFocusChangeListener(mVar.f);
                autoCompleteTextView.setOnDismissListener(new h(mVar));
                autoCompleteTextView.setThreshold(0);
                i iVar = mVar.f5329e;
                autoCompleteTextView.removeTextChangedListener(iVar);
                autoCompleteTextView.addTextChangedListener(iVar);
                textInputLayout.setEndIconCheckable(true);
                textInputLayout.setErrorIconDrawable((Drawable) null);
                if (autoCompleteTextView.getKeyListener() == null && mVar.f5340q.isTouchExplorationEnabled()) {
                    CheckableImageButton checkableImageButton = mVar.f5345c;
                    WeakHashMap weakHashMap = s0.f8353a;
                    checkableImageButton.setImportantForAccessibility(2);
                }
                textInputLayout.setTextInputAccessibilityDelegate(mVar.f5330g);
                textInputLayout.setEndIconVisible(true);
                return;
            default:
                EditText editText3 = textInputLayout.getEditText();
                r rVar = (r) nVar;
                rVar.f5345c.setChecked(true ^ r.d(rVar));
                i iVar2 = rVar.f5371e;
                editText3.removeTextChangedListener(iVar2);
                editText3.addTextChangedListener(iVar2);
                return;
        }
    }
}
