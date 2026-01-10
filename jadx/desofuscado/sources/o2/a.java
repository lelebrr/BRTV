package o2;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.lifecycle.e;
import androidx.lifecycle.w;
import j9.i;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements e {

    /* renamed from: a, reason: collision with root package name */
    public boolean f8547a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f8548b;

    public a(ImageView imageView) {
        this.f8548b = imageView;
    }

    @Override // androidx.lifecycle.e
    public final void b(w wVar) {
        i.f(wVar, "owner");
    }

    @Override // androidx.lifecycle.e
    public final void c(w wVar) {
        i.f(wVar, "owner");
    }

    public final void d() {
        Object drawable = this.f8548b.getDrawable();
        Animatable animatable = drawable instanceof Animatable ? (Animatable) drawable : null;
        if (animatable == null) {
            return;
        }
        if (this.f8547a) {
            animatable.start();
        } else {
            animatable.stop();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            if (i.a(this.f8548b, ((a) obj).f8548b)) {
                return true;
            }
        }
        return false;
    }

    public final void g(Drawable drawable) {
        ImageView imageView = this.f8548b;
        Object drawable2 = imageView.getDrawable();
        Animatable animatable = drawable2 instanceof Animatable ? (Animatable) drawable2 : null;
        if (animatable != null) {
            animatable.stop();
        }
        imageView.setImageDrawable(drawable);
        d();
    }

    public final int hashCode() {
        return this.f8548b.hashCode();
    }

    @Override // androidx.lifecycle.e
    public final void onStart(w wVar) {
        this.f8547a = true;
        d();
    }

    @Override // androidx.lifecycle.e
    public final void onStop(w wVar) {
        this.f8547a = false;
        d();
    }

    @Override // androidx.lifecycle.e
    public final /* synthetic */ void e(w wVar) {
    }

    @Override // androidx.lifecycle.e
    public final /* synthetic */ void onDestroy(w wVar) {
    }
}
