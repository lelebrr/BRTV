package org.bitspark.android.utils;

import android.view.View;
import com.nmmedit.protect.NativeUtil;
import java.util.ArrayList;
import ka.i0;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;

/* loaded from: classes.dex */
public final class o {
    public static final o f;

    /* renamed from: a, reason: collision with root package name */
    public Spark f8788a;

    /* renamed from: b, reason: collision with root package name */
    public ta.a f8789b;

    /* renamed from: c, reason: collision with root package name */
    public i0 f8790c;
    public ka.b d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8791e;

    public static native int b(ArrayList arrayList, String str);

    public final native i0 a(ka.b bVar, View view, View view2, View view3);

    public final native void c(ChannelBean channelBean, String str);

    public final native void d();

    public final native void e();

    public final native boolean f();

    public final native void g();

    static {
        NativeUtil.classesInit0(2);
        o oVar = new o();
        oVar.d = null;
        oVar.f8791e = false;
        f = oVar;
    }
}
