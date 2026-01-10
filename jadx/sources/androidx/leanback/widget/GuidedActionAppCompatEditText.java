package androidx.leanback.widget;

import android.R;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class GuidedActionAppCompatEditText extends AppCompatEditText {

    /* renamed from: g, reason: collision with root package name */
    public final Drawable f1653g;

    /* renamed from: h, reason: collision with root package name */
    public final x f1654h;

    public GuidedActionAppCompatEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextStyle);
    }

    @Override // android.widget.TextView, android.view.View
    public int getAutofillType() {
        return 1;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z7, int i6, Rect rect) {
        super.onFocusChanged(z7, i6, rect);
        if (z7) {
            setBackground(this.f1653g);
        } else {
            setBackground(this.f1654h);
        }
        if (z7) {
            return;
        }
        setFocusable(false);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName((isFocused() ? AppCompatEditText.class : TextView.class).getName());
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isInTouchMode() || isFocusableInTouchMode() || isTextSelectable()) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(n5.d.X(callback, this));
    }

    public GuidedActionAppCompatEditText(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1653g = getBackground();
        x xVar = new x();
        this.f1654h = xVar;
        setBackground(xVar);
    }

    public void setImeKeyListener(y yVar) {
    }

    public void setOnAutofillListener(w wVar) {
    }
}
