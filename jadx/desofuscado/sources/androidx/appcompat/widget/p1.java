package androidx.appcompat.widget;

import android.widget.AbsListView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class p1 {
    public static boolean a(AbsListView absListView) {
        return absListView.isSelectedChildViewEnabled();
    }

    public static void b(AbsListView absListView, boolean z7) {
        absListView.setSelectedChildViewEnabled(z7);
    }
}
