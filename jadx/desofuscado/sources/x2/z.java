package x2;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.ArrayDeque;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class z implements v2.e {

    /* renamed from: j, reason: collision with root package name */
    public static final r3.j f10980j = new r3.j(50);

    /* renamed from: b, reason: collision with root package name */
    public final y2.f f10981b;

    /* renamed from: c, reason: collision with root package name */
    public final v2.e f10982c;
    public final v2.e d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10983e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final Class f10984g;

    /* renamed from: h, reason: collision with root package name */
    public final v2.h f10985h;

    /* renamed from: i, reason: collision with root package name */
    public final v2.l f10986i;

    public z(y2.f fVar, v2.e eVar, v2.e eVar2, int i6, int i10, v2.l lVar, Class cls, v2.h hVar) {
        this.f10981b = fVar;
        this.f10982c = eVar;
        this.d = eVar2;
        this.f10983e = i6;
        this.f = i10;
        this.f10986i = lVar;
        this.f10984g = cls;
        this.f10985h = hVar;
    }

    @Override // v2.e
    public final void a(MessageDigest messageDigest) {
        Object objF;
        y2.f fVar = this.f10981b;
        synchronized (fVar) {
            y2.e eVar = fVar.f11355b;
            y2.h hVarE = (y2.h) ((ArrayDeque) eVar.f6105a).poll();
            if (hVarE == null) {
                hVarE = eVar.e();
            }
            y2.d dVar = (y2.d) hVarE;
            dVar.f11351b = 8;
            dVar.f11352c = byte[].class;
            objF = fVar.f(dVar, byte[].class);
        }
        byte[] bArr = (byte[]) objF;
        ByteBuffer.wrap(bArr).putInt(this.f10983e).putInt(this.f).array();
        this.d.a(messageDigest);
        this.f10982c.a(messageDigest);
        messageDigest.update(bArr);
        v2.l lVar = this.f10986i;
        if (lVar != null) {
            lVar.a(messageDigest);
        }
        this.f10985h.a(messageDigest);
        r3.j jVar = f10980j;
        Class cls = this.f10984g;
        byte[] bytes = (byte[]) jVar.a(cls);
        if (bytes == null) {
            bytes = cls.getName().getBytes(v2.e.f10660a);
            jVar.d(cls, bytes);
        }
        messageDigest.update(bytes);
        this.f10981b.h(bArr);
    }

    @Override // v2.e
    public final boolean equals(Object obj) {
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return this.f == zVar.f && this.f10983e == zVar.f10983e && r3.n.b(this.f10986i, zVar.f10986i) && this.f10984g.equals(zVar.f10984g) && this.f10982c.equals(zVar.f10982c) && this.d.equals(zVar.d) && this.f10985h.equals(zVar.f10985h);
    }

    @Override // v2.e
    public final int hashCode() {
        int iHashCode = ((((this.d.hashCode() + (this.f10982c.hashCode() * 31)) * 31) + this.f10983e) * 31) + this.f;
        v2.l lVar = this.f10986i;
        if (lVar != null) {
            iHashCode = (iHashCode * 31) + lVar.hashCode();
        }
        return this.f10985h.f10665b.hashCode() + ((this.f10984g.hashCode() + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f10982c + ", signature=" + this.d + ", width=" + this.f10983e + ", height=" + this.f + ", decodedResourceClass=" + this.f10984g + ", transformation='" + this.f10986i + "', options=" + this.f10985h + '}';
    }
}
