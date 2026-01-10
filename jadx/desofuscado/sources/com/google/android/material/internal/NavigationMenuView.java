package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class NavigationMenuView extends RecyclerView implements k.a0 {
    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public int getWindowAnimations() {
        return 0;
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        setLayoutManager(new LinearLayoutManager(1));
    }

    @Override // k.a0
    public final void d(k.l lVar) {
    }
}
