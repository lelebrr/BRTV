package org.bitspark.android.utils;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.b1;
import com.nmmedit.protect.NativeUtil;

/* loaded from: classes.dex */
public final class f extends b1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f8770a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f8771b;

    static {
        NativeUtil.classesInit0(12);
    }

    public f(RecyclerView recyclerView, int i6) {
        this.f8770a = recyclerView;
        this.f8771b = i6;
    }

    @Override // androidx.recyclerview.widget.b1
    public final native void onScrollStateChanged(RecyclerView recyclerView, int i6);
}
