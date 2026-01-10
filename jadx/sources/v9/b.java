package v9;

import j9.i;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b extends w9.a implements a {

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f10749c = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_state");
    private volatile Object _state;

    /* renamed from: b, reason: collision with root package name */
    public int f10750b;

    public b(Object obj) {
        this._state = obj;
    }

    public final void a(Object obj) {
        int i6;
        if (obj == null) {
            obj = w9.a.f10835a;
        }
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10749c;
            if (i.a(atomicReferenceFieldUpdater.get(this), obj)) {
                return;
            }
            atomicReferenceFieldUpdater.set(this, obj);
            int i10 = this.f10750b;
            if ((i10 & 1) != 0) {
                this.f10750b = i10 + 2;
                return;
            }
            int i11 = i10 + 1;
            this.f10750b = i11;
            while (true) {
                synchronized (this) {
                    i6 = this.f10750b;
                    if (i6 == i11) {
                        this.f10750b = i11 + 1;
                        return;
                    }
                }
                i11 = i6;
            }
        }
    }
}
