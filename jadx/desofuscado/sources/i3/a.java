package i3;

import java.util.ArrayDeque;
import r3.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayDeque f7300a;

    public a(int i6) {
        switch (i6) {
            case 1:
                this.f7300a = new ArrayDeque();
                break;
            default:
                char[] cArr = n.f9510a;
                this.f7300a = new ArrayDeque(0);
                break;
        }
    }

    public z2.b a() {
        z2.b bVar;
        synchronized (this.f7300a) {
            bVar = (z2.b) this.f7300a.poll();
        }
        return bVar == null ? new z2.b() : bVar;
    }

    public void b(z2.b bVar) {
        synchronized (this.f7300a) {
            try {
                if (this.f7300a.size() < 10) {
                    this.f7300a.offer(bVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized void c(t2.c cVar) {
        cVar.f10110b = null;
        cVar.f10111c = null;
        this.f7300a.offer(cVar);
    }
}
