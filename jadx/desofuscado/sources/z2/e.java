package z2;

import r3.j;
import x2.l;
import x2.x;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class e extends j {
    public l d;

    @Override // r3.j
    public final int b(Object obj) {
        x xVar = (x) obj;
        if (xVar == null) {
            return 1;
        }
        return xVar.a();
    }

    @Override // r3.j
    public final void c(Object obj, Object obj2) {
        x xVar = (x) obj2;
        l lVar = this.d;
        if (lVar == null || xVar == null) {
            return;
        }
        lVar.f10918e.e(xVar, true);
    }

    public final void f(int i6) {
        long j10;
        if (i6 >= 40) {
            e(0L);
        } else if (i6 >= 20 || i6 == 15) {
            synchronized (this) {
                j10 = this.f9503b;
            }
            e(j10 / 2);
        }
    }
}
