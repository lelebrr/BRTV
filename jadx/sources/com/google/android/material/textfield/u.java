package com.google.android.material.textfield;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import androidx.appcompat.widget.AppCompatTextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class u extends n0.b {
    public final TextInputLayout d;

    public u(TextInputLayout textInputLayout) {
        this.d = textInputLayout;
    }

    @Override // n0.b
    public void d(View view, o0.h hVar) {
        View.AccessibilityDelegate accessibilityDelegate = this.f8298a;
        AccessibilityNodeInfo accessibilityNodeInfo = hVar.f8541a;
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        TextInputLayout textInputLayout = this.d;
        EditText editText = textInputLayout.getEditText();
        CharSequence text = editText != null ? editText.getText() : null;
        CharSequence hint = textInputLayout.getHint();
        CharSequence error = textInputLayout.getError();
        CharSequence placeholderText = textInputLayout.getPlaceholderText();
        int counterMaxLength = textInputLayout.getCounterMaxLength();
        CharSequence counterOverflowDescription = textInputLayout.getCounterOverflowDescription();
        boolean zIsEmpty = TextUtils.isEmpty(text);
        boolean zIsEmpty2 = TextUtils.isEmpty(hint);
        boolean z7 = textInputLayout.C0;
        boolean zIsEmpty3 = TextUtils.isEmpty(error);
        boolean z10 = (zIsEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) ? false : true;
        String string = !zIsEmpty2 ? hint.toString() : "";
        s sVar = textInputLayout.f5256b;
        AppCompatTextView appCompatTextView = sVar.f5374b;
        if (appCompatTextView.getVisibility() == 0) {
            accessibilityNodeInfo.setLabelFor(appCompatTextView);
            if (Build.VERSION.SDK_INT >= 22) {
                accessibilityNodeInfo.setTraversalAfter(appCompatTextView);
            }
        } else if (Build.VERSION.SDK_INT >= 22) {
            accessibilityNodeInfo.setTraversalAfter(sVar.d);
        }
        if (!zIsEmpty) {
            hVar.o(text);
        } else if (!TextUtils.isEmpty(string)) {
            hVar.o(string);
            if (!z7 && placeholderText != null) {
                hVar.o(string + ", " + ((Object) placeholderText));
            }
        } else if (placeholderText != null) {
            hVar.o(placeholderText);
        }
        if (!TextUtils.isEmpty(string)) {
            int i6 = Build.VERSION.SDK_INT;
            if (i6 >= 26) {
                hVar.m(string);
            } else {
                if (!zIsEmpty) {
                    string = ((Object) text) + ", " + string;
                }
                hVar.o(string);
            }
            if (i6 >= 26) {
                accessibilityNodeInfo.setShowingHintText(zIsEmpty);
            } else {
                hVar.h(4, zIsEmpty);
            }
        }
        if (text == null || text.length() != counterMaxLength) {
            counterMaxLength = -1;
        }
        accessibilityNodeInfo.setMaxTextLength(counterMaxLength);
        if (z10) {
            if (zIsEmpty3) {
                error = counterOverflowDescription;
            }
            accessibilityNodeInfo.setError(error);
        }
        AppCompatTextView appCompatTextView2 = textInputLayout.f5271k.f5367r;
        if (appCompatTextView2 != null) {
            accessibilityNodeInfo.setLabelFor(appCompatTextView2);
        }
    }
}
