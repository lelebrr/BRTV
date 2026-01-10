package org.bitspark.android.utils;

import com.nmmedit.protect.NativeUtil;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8775a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j7.c f8776b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f8777c;

    static {
        NativeUtil.classesInit0(9);
    }

    public /* synthetic */ h(j7.c cVar, String str, int i6) {
        this.f8775a = i6;
        this.f8776b = cVar;
        this.f8777c = str;
    }

    @Override // java.lang.Runnable
    public final native void run();
}
