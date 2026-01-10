package o0;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class i extends AccessibilityNodeProvider {

    /* renamed from: a, reason: collision with root package name */
    public final j7.c f8543a;

    public i(j7.c cVar) {
        this.f8543a = cVar;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i6) {
        h hVarU = this.f8543a.u(i6);
        if (hVarU == null) {
            return null;
        }
        return hVarU.f8541a;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final List findAccessibilityNodeInfosByText(String str, int i6) {
        this.f8543a.getClass();
        return null;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final AccessibilityNodeInfo findFocus(int i6) {
        h hVarV = this.f8543a.v(i6);
        if (hVarV == null) {
            return null;
        }
        return hVarV.f8541a;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final boolean performAction(int i6, int i10, Bundle bundle) {
        return this.f8543a.B(i6, i10, bundle);
    }
}
