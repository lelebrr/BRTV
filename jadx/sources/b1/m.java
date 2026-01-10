package b1;

import java.nio.ByteBuffer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m {
    public static final ThreadLocal d = new ThreadLocal();

    /* renamed from: a, reason: collision with root package name */
    public final int f3118a;

    /* renamed from: b, reason: collision with root package name */
    public final a0.f f3119b;

    /* renamed from: c, reason: collision with root package name */
    public volatile int f3120c = 0;

    public m(a0.f fVar, int i6) {
        this.f3119b = fVar;
        this.f3118a = i6;
    }

    public final int a(int i6) {
        c1.a aVarC = c();
        int iA = aVarC.a(16);
        if (iA == 0) {
            return 0;
        }
        ByteBuffer byteBuffer = (ByteBuffer) aVarC.d;
        int i10 = iA + aVarC.f3334a;
        return byteBuffer.getInt((i6 * 4) + byteBuffer.getInt(i10) + i10 + 4);
    }

    public final int b() {
        c1.a aVarC = c();
        int iA = aVarC.a(16);
        if (iA == 0) {
            return 0;
        }
        int i6 = iA + aVarC.f3334a;
        return ((ByteBuffer) aVarC.d).getInt(((ByteBuffer) aVarC.d).getInt(i6) + i6);
    }

    public final c1.a c() {
        ThreadLocal threadLocal = d;
        c1.a aVar = (c1.a) threadLocal.get();
        if (aVar == null) {
            aVar = new c1.a();
            threadLocal.set(aVar);
        }
        c1.b bVar = (c1.b) this.f3119b.f38b;
        int iA = bVar.a(6);
        if (iA != 0) {
            int i6 = iA + bVar.f3334a;
            int i10 = (this.f3118a * 4) + ((ByteBuffer) bVar.d).getInt(i6) + i6 + 4;
            int i11 = ((ByteBuffer) bVar.d).getInt(i10) + i10;
            ByteBuffer byteBuffer = (ByteBuffer) bVar.d;
            aVar.d = byteBuffer;
            if (byteBuffer != null) {
                aVar.f3334a = i11;
                int i12 = i11 - byteBuffer.getInt(i11);
                aVar.f3335b = i12;
                aVar.f3336c = ((ByteBuffer) aVar.d).getShort(i12);
            } else {
                aVar.f3334a = 0;
                aVar.f3335b = 0;
                aVar.f3336c = 0;
            }
        }
        return aVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        c1.a aVarC = c();
        int iA = aVarC.a(4);
        sb.append(Integer.toHexString(iA != 0 ? ((ByteBuffer) aVarC.d).getInt(iA + aVarC.f3334a) : 0));
        sb.append(", codepoints:");
        int iB = b();
        for (int i6 = 0; i6 < iB; i6++) {
            sb.append(Integer.toHexString(a(i6)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
