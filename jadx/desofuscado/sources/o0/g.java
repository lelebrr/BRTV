package o0;

import android.view.accessibility.AccessibilityNodeInfo;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final AccessibilityNodeInfo.CollectionItemInfo f8539a;

    public g(AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo) {
        this.f8539a = collectionItemInfo;
    }

    public static g a(int i6, int i10, int i11, int i12, boolean z7) {
        return new g(AccessibilityNodeInfo.CollectionItemInfo.obtain(i6, i10, i11, i12, false, z7));
    }
}
