package o0;

import android.view.accessibility.AccessibilityNodeInfo;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class e {
    public static g a(boolean z7, int i6, int i10, int i11, int i12, boolean z10, String str, String str2) {
        return new g(new AccessibilityNodeInfo.CollectionItemInfo.Builder().setHeading(z7).setColumnIndex(i6).setRowIndex(i10).setColumnSpan(i11).setRowSpan(i12).setSelected(z10).setRowTitle(str).setColumnTitle(str2).build());
    }

    public static h b(AccessibilityNodeInfo accessibilityNodeInfo, int i6, int i10) {
        AccessibilityNodeInfo child = accessibilityNodeInfo.getChild(i6, i10);
        if (child != null) {
            return new h(child, 0);
        }
        return null;
    }

    public static String c(Object obj) {
        return ((AccessibilityNodeInfo.CollectionItemInfo) obj).getColumnTitle();
    }

    public static String d(Object obj) {
        return ((AccessibilityNodeInfo.CollectionItemInfo) obj).getRowTitle();
    }

    public static AccessibilityNodeInfo.ExtraRenderingInfo e(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getExtraRenderingInfo();
    }

    public static h f(AccessibilityNodeInfo accessibilityNodeInfo, int i6) {
        AccessibilityNodeInfo parent = accessibilityNodeInfo.getParent(i6);
        if (parent != null) {
            return new h(parent, 0);
        }
        return null;
    }

    public static String g(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getUniqueId();
    }

    public static boolean h(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isTextSelectable();
    }

    public static void i(AccessibilityNodeInfo accessibilityNodeInfo, boolean z7) {
        accessibilityNodeInfo.setTextSelectable(z7);
    }

    public static void j(AccessibilityNodeInfo accessibilityNodeInfo, String str) {
        accessibilityNodeInfo.setUniqueId(str);
    }
}
