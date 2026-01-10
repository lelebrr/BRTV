package c7;

import b7.h0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: c, reason: collision with root package name */
    public static final h0 f3420c = new h0(new x4.e(5));
    public static final a d = new a();

    /* renamed from: a, reason: collision with root package name */
    public long f3421a;

    /* renamed from: b, reason: collision with root package name */
    public long f3422b;

    public final String toString() {
        a1.b bVarW = b7.b.w(this);
        long j10 = this.f3421a;
        if (j10 != -1) {
            String strValueOf = String.valueOf(j10);
            b7.l lVar = new b7.l(13, false);
            ((a1.b) bVarW.d).d = lVar;
            bVarW.d = lVar;
            lVar.f48c = strValueOf;
            lVar.f47b = "maximumSize";
        }
        if (this.f3422b != -1) {
            bVarW.d(a.e.s(new StringBuilder(), this.f3422b, "ns"), "expireAfterWrite");
        }
        return bVarW.toString();
    }
}
