package e3;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements x2.x, x2.u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6493a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6494b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f6495c;

    public d(Bitmap bitmap, y2.a aVar) {
        r3.f.c(bitmap, "Bitmap must not be null");
        this.f6494b = bitmap;
        r3.f.c(aVar, "BitmapPool must not be null");
        this.f6495c = aVar;
    }

    public static d b(Bitmap bitmap, y2.a aVar) {
        if (bitmap == null) {
            return null;
        }
        return new d(bitmap, aVar);
    }

    @Override // x2.x
    public final int a() {
        switch (this.f6493a) {
            case 0:
                return r3.n.c((Bitmap) this.f6494b);
            default:
                return ((x2.x) this.f6495c).a();
        }
    }

    @Override // x2.x
    public final Class c() {
        switch (this.f6493a) {
            case 0:
                return Bitmap.class;
            default:
                return BitmapDrawable.class;
        }
    }

    @Override // x2.x
    public final void d() {
        switch (this.f6493a) {
            case 0:
                ((y2.a) this.f6495c).e((Bitmap) this.f6494b);
                break;
            default:
                ((x2.x) this.f6495c).d();
                break;
        }
    }

    @Override // x2.x
    public final Object get() {
        switch (this.f6493a) {
            case 0:
                return (Bitmap) this.f6494b;
            default:
                return new BitmapDrawable((Resources) this.f6494b, (Bitmap) ((x2.x) this.f6495c).get());
        }
    }

    @Override // x2.u
    public final void initialize() {
        switch (this.f6493a) {
            case 0:
                ((Bitmap) this.f6494b).prepareToDraw();
                break;
            default:
                x2.x xVar = (x2.x) this.f6495c;
                if (xVar instanceof x2.u) {
                    ((x2.u) xVar).initialize();
                    break;
                }
                break;
        }
    }

    public d(Resources resources, x2.x xVar) {
        r3.f.c(resources, "Argument must not be null");
        this.f6494b = resources;
        r3.f.c(xVar, "Argument must not be null");
        this.f6495c = xVar;
    }
}
