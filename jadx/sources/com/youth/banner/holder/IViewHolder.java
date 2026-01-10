package com.youth.banner.holder;

import android.view.ViewGroup;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface IViewHolder<T, VH> {
    void onBindView(VH vh, T t5, int i6, int i10);

    VH onCreateHolder(ViewGroup viewGroup, int i6);
}
