package g3;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.o;
import i3.i;
import r3.f;
import x2.u;
import x2.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements x, u {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable f7095a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7096b;

    public c(Drawable drawable, int i6) {
        this.f7096b = i6;
        f.c(drawable, "Argument must not be null");
        this.f7095a = drawable;
    }

    @Override // x2.x
    public final int a() {
        switch (this.f7096b) {
            case 0:
                Drawable drawable = this.f7095a;
                return Math.max(1, drawable.getIntrinsicHeight() * drawable.getIntrinsicWidth() * 4);
            default:
                i iVar = (i) ((i3.d) this.f7095a).f7308a.f7307b;
                t2.d dVar = iVar.f7321a;
                return (dVar.f10119j.length * 4) + dVar.d.limit() + dVar.f10118i.length + iVar.f7332n;
        }
    }

    @Override // x2.x
    public final Class c() {
        switch (this.f7096b) {
            case 0:
                return this.f7095a.getClass();
            default:
                return i3.d.class;
        }
    }

    @Override // x2.x
    public final void d() {
        y2.f fVar;
        y2.f fVar2;
        y2.f fVar3;
        switch (this.f7096b) {
            case 0:
                break;
            default:
                i3.d dVar = (i3.d) this.f7095a;
                dVar.stop();
                dVar.d = true;
                i iVar = (i) dVar.f7308a.f7307b;
                iVar.f7323c.clear();
                Bitmap bitmap = iVar.f7330l;
                if (bitmap != null) {
                    iVar.f7324e.e(bitmap);
                    iVar.f7330l = null;
                }
                iVar.f = false;
                i3.f fVar4 = iVar.f7327i;
                o oVar = iVar.d;
                if (fVar4 != null) {
                    oVar.l(fVar4);
                    iVar.f7327i = null;
                }
                i3.f fVar5 = iVar.f7329k;
                if (fVar5 != null) {
                    oVar.l(fVar5);
                    iVar.f7329k = null;
                }
                i3.f fVar6 = iVar.f7331m;
                if (fVar6 != null) {
                    oVar.l(fVar6);
                    iVar.f7331m = null;
                }
                t2.d dVar2 = iVar.f7321a;
                dVar2.f10121l = null;
                byte[] bArr = dVar2.f10118i;
                a7.f fVar7 = dVar2.f10114c;
                if (bArr != null && (fVar3 = (y2.f) fVar7.f170c) != null) {
                    fVar3.h(bArr);
                }
                int[] iArr = dVar2.f10119j;
                if (iArr != null && (fVar2 = (y2.f) fVar7.f170c) != null) {
                    fVar2.h(iArr);
                }
                Bitmap bitmap2 = dVar2.f10122m;
                if (bitmap2 != null) {
                    ((y2.a) fVar7.f169b).e(bitmap2);
                }
                dVar2.f10122m = null;
                dVar2.d = null;
                dVar2.f10128s = null;
                byte[] bArr2 = dVar2.f10115e;
                if (bArr2 != null && (fVar = (y2.f) fVar7.f170c) != null) {
                    fVar.h(bArr2);
                }
                iVar.f7328j = true;
                break;
        }
    }

    @Override // x2.x
    public final Object get() {
        Drawable drawable = this.f7095a;
        Drawable.ConstantState constantState = drawable.getConstantState();
        return constantState == null ? drawable : constantState.newDrawable();
    }

    @Override // x2.u
    public void initialize() {
        switch (this.f7096b) {
            case 1:
                ((i) ((i3.d) this.f7095a).f7308a.f7307b).f7330l.prepareToDraw();
                break;
            default:
                Drawable drawable = this.f7095a;
                if (!(drawable instanceof BitmapDrawable)) {
                    if (drawable instanceof i3.d) {
                        ((i) ((i3.d) drawable).f7308a.f7307b).f7330l.prepareToDraw();
                        break;
                    }
                } else {
                    ((BitmapDrawable) drawable).getBitmap().prepareToDraw();
                    break;
                }
                break;
        }
    }

    private final void b() {
    }
}
