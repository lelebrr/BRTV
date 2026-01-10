package org.bitspark.android.utils;

import android.content.Context;
import com.nmmedit.protect.NativeUtil;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicLong;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;

/* loaded from: classes.dex */
public final class i implements Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j7.c f8778a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f8779b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AtomicLong f8780c;
    public final /* synthetic */ long d;

    static {
        NativeUtil.classesInit0(8);
    }

    public i(j7.c cVar, Context context, AtomicLong atomicLong, long j10) {
        this.f8778a = cVar;
        this.f8779b = context;
        this.f8780c = atomicLong;
        this.d = j10;
    }

    @Override // okhttp3.Callback
    public final native void onFailure(Call call, IOException iOException);

    @Override // okhttp3.Callback
    public final native void onResponse(Call call, Response response);
}
