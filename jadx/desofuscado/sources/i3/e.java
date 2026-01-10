package i3;

import android.content.Context;
import android.graphics.Bitmap;
import java.security.MessageDigest;
import v2.l;
import x2.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements l {

    /* renamed from: b, reason: collision with root package name */
    public final l f7316b;

    public e(l lVar) {
        r3.f.c(lVar, "Argument must not be null");
        this.f7316b = lVar;
    }

    @Override // v2.e
    public final void a(MessageDigest messageDigest) {
        this.f7316b.a(messageDigest);
    }

    @Override // v2.l
    public final x b(Context context, x xVar, int i6, int i10) {
        d dVar = (d) xVar.get();
        x dVar2 = new e3.d(((i) dVar.f7308a.f7307b).f7330l, com.bumptech.glide.b.a(context).f3494a);
        l lVar = this.f7316b;
        x xVarB = lVar.b(context, dVar2, i6, i10);
        if (!dVar2.equals(xVarB)) {
            dVar2.d();
        }
        ((i) dVar.f7308a.f7307b).c(lVar, (Bitmap) xVarB.get());
        return xVar;
    }

    @Override // v2.e
    public final boolean equals(Object obj) {
        if (obj instanceof e) {
            return this.f7316b.equals(((e) obj).f7316b);
        }
        return false;
    }

    @Override // v2.e
    public final int hashCode() {
        return this.f7316b.hashCode();
    }
}
