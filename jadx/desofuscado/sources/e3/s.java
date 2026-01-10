package e3;

import android.content.Context;
import android.graphics.drawable.Drawable;
import java.security.MessageDigest;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s implements v2.l {

    /* renamed from: b, reason: collision with root package name */
    public final v2.l f6529b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f6530c;

    public s(v2.l lVar, boolean z7) {
        this.f6529b = lVar;
        this.f6530c = z7;
    }

    @Override // v2.e
    public final void a(MessageDigest messageDigest) {
        this.f6529b.a(messageDigest);
    }

    @Override // v2.l
    public final x2.x b(Context context, x2.x xVar, int i6, int i10) {
        y2.a aVar = com.bumptech.glide.b.a(context).f3494a;
        Drawable drawable = (Drawable) xVar.get();
        d dVarA = r.a(aVar, drawable, i6, i10);
        if (dVarA != null) {
            x2.x xVarB = this.f6529b.b(context, dVarA, i6, i10);
            if (!xVarB.equals(dVarA)) {
                return new d(context.getResources(), xVarB);
            }
            xVarB.d();
            return xVar;
        }
        if (!this.f6530c) {
            return xVar;
        }
        throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
    }

    @Override // v2.e
    public final boolean equals(Object obj) {
        if (obj instanceof s) {
            return this.f6529b.equals(((s) obj).f6529b);
        }
        return false;
    }

    @Override // v2.e
    public final int hashCode() {
        return this.f6529b.hashCode();
    }
}
