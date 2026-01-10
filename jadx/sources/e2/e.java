package e2;

import java.io.Closeable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final d f6458a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6459b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f6460c;

    public e(h hVar, d dVar) {
        this.f6460c = hVar;
        this.f6458a = dVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f6459b) {
            return;
        }
        this.f6459b = true;
        h hVar = this.f6460c;
        synchronized (hVar) {
            d dVar = this.f6458a;
            int i6 = dVar.f6456h - 1;
            dVar.f6456h = i6;
            if (i6 == 0 && dVar.f) {
                r9.e eVar = h.f6462q;
                hVar.i(dVar);
            }
        }
    }
}
