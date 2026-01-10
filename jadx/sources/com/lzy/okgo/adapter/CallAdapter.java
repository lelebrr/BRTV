package com.lzy.okgo.adapter;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface CallAdapter<T, R> {
    R adapt(Call<T> call, AdapterParam adapterParam);
}
