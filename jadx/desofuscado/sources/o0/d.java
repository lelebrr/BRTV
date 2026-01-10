package o0;

import android.view.accessibility.AccessibilityNodeInfo;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class d {
    public static Object a(int i6, float f, float f3, float f4) {
        return new AccessibilityNodeInfo.RangeInfo(i6, f, f3, f4);
    }

    public static CharSequence b(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getStateDescription();
    }

    public static void c(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
        accessibilityNodeInfo.setStateDescription(charSequence);
    }
}
