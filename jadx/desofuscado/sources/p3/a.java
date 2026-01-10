package p3;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.widget.ImageView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements c, d {
    @Override // p3.c
    public boolean a(Object obj, o3.a aVar) {
        Drawable drawable = (Drawable) obj;
        ImageView imageView = aVar.f8549a;
        Drawable drawable2 = imageView.getDrawable();
        if (drawable2 == null) {
            drawable2 = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{drawable2, drawable});
        transitionDrawable.setCrossFadeEnabled(false);
        transitionDrawable.startTransition(300);
        imageView.setImageDrawable(transitionDrawable);
        return true;
    }

    @Override // p3.d
    public c g(int i6) {
        return b.f8867a;
    }
}
