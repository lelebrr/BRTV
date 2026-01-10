package o0;

import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import com.google.android.material.textfield.TextInputLayout;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements AccessibilityManager.TouchExplorationStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final a0.b f8521a;

    public b(a0.b bVar) {
        this.f8521a = bVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.f8521a.equals(((b) obj).f8521a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f8521a.hashCode();
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z7) {
        AutoCompleteTextView autoCompleteTextView;
        com.google.android.material.textfield.m mVar = (com.google.android.material.textfield.m) this.f8521a.f32b;
        TextInputLayout textInputLayout = mVar.f5343a;
        if (textInputLayout == null || (autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText()) == null || autoCompleteTextView.getKeyListener() != null) {
            return;
        }
        int i6 = z7 ? 2 : 1;
        WeakHashMap weakHashMap = s0.f8353a;
        mVar.f5345c.setImportantForAccessibility(i6);
    }
}
