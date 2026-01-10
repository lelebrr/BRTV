package t9;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class f extends k {

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f10187c = AtomicIntegerFieldUpdater.newUpdater(f.class, "_resumed");
    private volatile int _resumed;

    public f(e eVar, Throwable th, boolean z7) {
        super(th, z7);
        this._resumed = 0;
    }
}
