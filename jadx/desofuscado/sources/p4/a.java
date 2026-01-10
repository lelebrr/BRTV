package p4;

import android.os.Bundle;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.internal.cast.j0;
import java.util.Arrays;
import java.util.UUID;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements y4.b {

    /* renamed from: a, reason: collision with root package name */
    public final CastDevice f8869a;

    /* renamed from: b, reason: collision with root package name */
    public final j0 f8870b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f8871c;
    public final String d = UUID.randomUUID().toString();

    public /* synthetic */ a(a1.b bVar) {
        this.f8869a = (CastDevice) bVar.f47b;
        this.f8870b = (j0) bVar.f48c;
        this.f8871c = (Bundle) bVar.d;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0064 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r8) {
        /*
            r7 = this;
            r0 = 1
            if (r8 != r7) goto L4
            return r0
        L4:
            boolean r1 = r8 instanceof p4.a
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            p4.a r8 = (p4.a) r8
            com.google.android.gms.cast.CastDevice r1 = r8.f8869a
            com.google.android.gms.cast.CastDevice r3 = r7.f8869a
            boolean r1 = b5.l.h(r3, r1)
            if (r1 == 0) goto L65
            android.os.Bundle r1 = r7.f8871c
            android.os.Bundle r3 = r8.f8871c
            if (r1 == 0) goto L58
            if (r3 != 0) goto L1f
            goto L58
        L1f:
            int r4 = r1.size()
            int r5 = r3.size()
            if (r4 == r5) goto L2a
            goto L65
        L2a:
            java.util.Set r4 = r1.keySet()
            java.util.Set r5 = r3.keySet()
            boolean r5 = r4.containsAll(r5)
            if (r5 != 0) goto L39
            goto L65
        L39:
            java.util.Iterator r4 = r4.iterator()
        L3d:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L5a
            java.lang.Object r5 = r4.next()
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r6 = r1.get(r5)
            java.lang.Object r5 = r3.get(r5)
            boolean r5 = b5.l.h(r6, r5)
            if (r5 != 0) goto L3d
            goto L65
        L58:
            if (r1 != r3) goto L65
        L5a:
            java.lang.String r1 = r7.d
            java.lang.String r8 = r8.d
            boolean r8 = b5.l.h(r1, r8)
            if (r8 == 0) goto L65
            return r0
        L65:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p4.a.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f8869a, this.f8871c, 0, this.d});
    }
}
