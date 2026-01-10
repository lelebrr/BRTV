package x2;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a extends WeakReference {

    /* renamed from: a, reason: collision with root package name */
    public final q f10847a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f10848b;

    /* renamed from: c, reason: collision with root package name */
    public x f10849c;

    public a(q qVar, r rVar, ReferenceQueue referenceQueue) {
        super(rVar, referenceQueue);
        r3.f.c(qVar, "Argument must not be null");
        this.f10847a = qVar;
        boolean z7 = rVar.f10954a;
        this.f10849c = null;
        this.f10848b = z7;
    }
}
