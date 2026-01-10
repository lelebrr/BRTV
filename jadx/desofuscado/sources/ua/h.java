package ua;

import android.os.Handler;
import android.os.Looper;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: b, reason: collision with root package name */
    public static h f10490b;

    /* renamed from: a, reason: collision with root package name */
    public final Object f10491a;

    public h(Object obj) {
        this.f10491a = obj;
    }

    public void a() {
        synchronized (this.f10491a) {
        }
    }

    public h() {
        this.f10491a = new Object();
        new Handler(Looper.getMainLooper(), new i3.h(1, this));
    }
}
