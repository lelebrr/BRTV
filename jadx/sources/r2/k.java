package r2;

import android.os.SystemClock;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements i {

    /* renamed from: a, reason: collision with root package name */
    public static final k f9480a = new k();

    /* renamed from: b, reason: collision with root package name */
    public static e2.k f9481b;

    @Override // r2.i
    public boolean a(n2.h hVar) {
        r4.b bVar = hVar.f8385a;
        if ((bVar instanceof n2.a ? ((n2.a) bVar).f8374c : Integer.MAX_VALUE) > 100) {
            r4.b bVar2 = hVar.f8386b;
            if ((bVar2 instanceof n2.a ? ((n2.a) bVar2).f8374c : Integer.MAX_VALUE) > 100) {
                return true;
            }
        }
        return false;
    }

    @Override // r2.i
    public boolean b() {
        boolean z7;
        synchronized (h.f9472a) {
            try {
                int i6 = h.f9474c;
                h.f9474c = i6 + 1;
                if (i6 >= 30 || SystemClock.uptimeMillis() > h.d + 30000) {
                    h.f9474c = 0;
                    h.d = SystemClock.uptimeMillis();
                    String[] list = h.f9473b.list();
                    if (list == null) {
                        list = new String[0];
                    }
                    h.f9475e = list.length < 800;
                }
                z7 = h.f9475e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z7;
    }
}
