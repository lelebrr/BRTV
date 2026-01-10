package r2;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.fragment.app.q;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static final m2.c f9465a = new m2.c();

    public static final boolean a(m2.i iVar) {
        int iOrdinal = iVar.f8206e.ordinal();
        if (iOrdinal == 0) {
            return false;
        }
        if (iOrdinal != 1) {
            if (iOrdinal != 2) {
                throw new q(13);
            }
            n2.i iVar2 = iVar.f8222v;
            if (!(iVar2 instanceof n2.c)) {
                o2.a aVar = iVar.f8205c;
                if (!(aVar instanceof o2.a) || !(iVar2 instanceof n2.f)) {
                    return false;
                }
                ImageView imageView = aVar.f8548b;
                if (!(imageView instanceof ImageView) || imageView != ((n2.f) iVar2).f8379a) {
                    return false;
                }
            }
        }
        return true;
    }

    public static final Drawable b(m2.i iVar, Drawable drawable, Integer num, Drawable drawable2) {
        if (drawable != null) {
            return drawable;
        }
        if (num == null) {
            return drawable2;
        }
        if (num.intValue() == 0) {
            return null;
        }
        Context context = iVar.f8203a;
        int iIntValue = num.intValue();
        Drawable drawableH = com.bumptech.glide.c.h(context, iIntValue);
        if (drawableH != null) {
            return drawableH;
        }
        throw new IllegalStateException(a.e.n(iIntValue, "Invalid resource ID: ").toString());
    }
}
