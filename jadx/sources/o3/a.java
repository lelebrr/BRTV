package o3;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.p2elite.brtv2.R;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements h {

    /* renamed from: a, reason: collision with root package name */
    public final ImageView f8549a;

    /* renamed from: b, reason: collision with root package name */
    public final i f8550b;

    /* renamed from: c, reason: collision with root package name */
    public Animatable f8551c;
    public final /* synthetic */ int d;

    public a(ImageView imageView, int i6) {
        this.d = i6;
        r3.f.c(imageView, "Argument must not be null");
        this.f8549a = imageView;
        this.f8550b = new i(imageView);
    }

    @Override // o3.h
    public final void a(n3.c cVar) {
        this.f8549a.setTag(R.id.glide_custom_view_target_tag, cVar);
    }

    @Override // o3.h
    public final void b(Drawable drawable) {
        k(null);
        this.f8551c = null;
        this.f8549a.setImageDrawable(drawable);
    }

    @Override // k3.i
    public final void c() {
        Animatable animatable = this.f8551c;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Override // o3.h
    public final void d(Object obj, p3.c cVar) {
        if (cVar != null && cVar.a(obj, this)) {
            if (!(obj instanceof Animatable)) {
                this.f8551c = null;
                return;
            }
            Animatable animatable = (Animatable) obj;
            this.f8551c = animatable;
            animatable.start();
            return;
        }
        k(obj);
        if (!(obj instanceof Animatable)) {
            this.f8551c = null;
            return;
        }
        Animatable animatable2 = (Animatable) obj;
        this.f8551c = animatable2;
        animatable2.start();
    }

    @Override // o3.h
    public final void e(n3.f fVar) {
        this.f8550b.f8563b.remove(fVar);
    }

    @Override // o3.h
    public final void f(n3.f fVar) {
        i iVar = this.f8550b;
        ImageView imageView = iVar.f8562a;
        int paddingRight = imageView.getPaddingRight() + imageView.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int iA = iVar.a(imageView.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        ImageView imageView2 = iVar.f8562a;
        int paddingBottom = imageView2.getPaddingBottom() + imageView2.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = imageView2.getLayoutParams();
        int iA2 = iVar.a(imageView2.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((iA > 0 || iA == Integer.MIN_VALUE) && (iA2 > 0 || iA2 == Integer.MIN_VALUE)) {
            fVar.m(iA, iA2);
            return;
        }
        ArrayList arrayList = iVar.f8563b;
        if (!arrayList.contains(fVar)) {
            arrayList.add(fVar);
        }
        if (iVar.f8564c == null) {
            ViewTreeObserver viewTreeObserver = imageView2.getViewTreeObserver();
            c cVar = new c(iVar);
            iVar.f8564c = cVar;
            viewTreeObserver.addOnPreDrawListener(cVar);
        }
    }

    @Override // o3.h
    public final void g(Drawable drawable) {
        k(null);
        this.f8551c = null;
        this.f8549a.setImageDrawable(drawable);
    }

    @Override // o3.h
    public final n3.c getRequest() {
        Object tag = this.f8549a.getTag(R.id.glide_custom_view_target_tag);
        if (tag == null) {
            return null;
        }
        if (tag instanceof n3.c) {
            return (n3.c) tag;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    @Override // o3.h
    public final void h(Drawable drawable) {
        i iVar = this.f8550b;
        ViewTreeObserver viewTreeObserver = iVar.f8562a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(iVar.f8564c);
        }
        iVar.f8564c = null;
        iVar.f8563b.clear();
        Animatable animatable = this.f8551c;
        if (animatable != null) {
            animatable.stop();
        }
        k(null);
        this.f8551c = null;
        this.f8549a.setImageDrawable(drawable);
    }

    @Override // k3.i
    public final void i() {
        Animatable animatable = this.f8551c;
        if (animatable != null) {
            animatable.start();
        }
    }

    public final void k(Object obj) {
        switch (this.d) {
            case 0:
                this.f8549a.setImageBitmap((Bitmap) obj);
                break;
            default:
                this.f8549a.setImageDrawable((Drawable) obj);
                break;
        }
    }

    public final String toString() {
        return "Target for: " + this.f8549a;
    }

    @Override // k3.i
    public final void j() {
    }
}
