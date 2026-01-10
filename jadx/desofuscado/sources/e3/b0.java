package e3;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.io.File;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b0 implements v2.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6490a;

    public /* synthetic */ b0(int i6) {
        this.f6490a = i6;
    }

    @Override // v2.j
    public final x2.x a(Object obj, int i6, int i10, v2.h hVar) {
        switch (this.f6490a) {
            case 0:
                return new a0(0, (Bitmap) obj);
            case 1:
                Drawable drawable = (Drawable) obj;
                if (drawable != null) {
                    return new g3.c(drawable, 0);
                }
                return null;
            default:
                return new a0((File) obj);
        }
    }

    @Override // v2.j
    public final /* bridge */ /* synthetic */ boolean b(Object obj, v2.h hVar) {
        switch (this.f6490a) {
            case 0:
                break;
            case 1:
                break;
            default:
                break;
        }
        return true;
    }
}
