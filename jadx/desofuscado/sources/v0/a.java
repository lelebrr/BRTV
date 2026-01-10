package v0;

import android.view.accessibility.AccessibilityNodeInfo;
import o0.h;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a extends j7.c {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b f10616c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(b bVar) {
        super(20);
        this.f10616c = bVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002c  */
    @Override // j7.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean B(int r8, int r9, android.os.Bundle r10) {
        /*
            r7 = this;
            v0.b r0 = r7.f10616c
            android.view.View r1 = r0.f10623i
            r2 = -1
            if (r8 == r2) goto L64
            r2 = 1
            if (r9 == r2) goto L5f
            r3 = 2
            if (r9 == r3) goto L5a
            r3 = 64
            r4 = 0
            r5 = 65536(0x10000, float:9.1835E-41)
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r9 == r3) goto L2f
            r3 = 128(0x80, float:1.8E-43)
            if (r9 == r3) goto L1f
            boolean r8 = r0.s(r8, r9, r10)
            goto L6a
        L1f:
            int r9 = r0.f10625k
            if (r9 != r8) goto L2c
            r0.f10625k = r6
            r1.invalidate()
            r0.x(r8, r5)
            goto L2d
        L2c:
            r2 = 0
        L2d:
            r8 = r2
            goto L6a
        L2f:
            android.view.accessibility.AccessibilityManager r9 = r0.f10622h
            boolean r10 = r9.isEnabled()
            if (r10 == 0) goto L2c
            boolean r9 = r9.isTouchExplorationEnabled()
            if (r9 != 0) goto L3e
            goto L2c
        L3e:
            int r9 = r0.f10625k
            if (r9 == r8) goto L2c
            if (r9 == r6) goto L4e
            r0.f10625k = r6
            android.view.View r10 = r0.f10623i
            r10.invalidate()
            r0.x(r9, r5)
        L4e:
            r0.f10625k = r8
            r1.invalidate()
            r9 = 32768(0x8000, float:4.5918E-41)
            r0.x(r8, r9)
            goto L2d
        L5a:
            boolean r8 = r0.j(r8)
            goto L6a
        L5f:
            boolean r8 = r0.w(r8)
            goto L6a
        L64:
            java.util.WeakHashMap r8 = n0.s0.f8353a
            boolean r8 = r1.performAccessibilityAction(r9, r10)
        L6a:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: v0.a.B(int, int, android.os.Bundle):boolean");
    }

    @Override // j7.c
    public final h u(int i6) {
        return new h(AccessibilityNodeInfo.obtain(this.f10616c.r(i6).f8541a));
    }

    @Override // j7.c
    public final h v(int i6) {
        b bVar = this.f10616c;
        int i10 = i6 == 2 ? bVar.f10625k : bVar.f10626l;
        if (i10 == Integer.MIN_VALUE) {
            return null;
        }
        return u(i10);
    }
}
