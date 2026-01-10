package org.bitspark.android.utils;

import android.content.Context;
import com.nmmedit.protect.NativeUtil;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8772a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j7.c f8773b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f8774c;

    static {
        NativeUtil.classesInit0(10);
    }

    public /* synthetic */ g(j7.c cVar, Context context, int i6) {
        this.f8772a = i6;
        this.f8773b = cVar;
        this.f8774c = context;
    }

    @Override // java.lang.Runnable
    public final native void run();
}
