package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AppCompatImageView extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    public final u f511a;

    /* renamed from: b, reason: collision with root package name */
    public final z f512b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f513c;

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        u uVar = this.f511a;
        if (uVar != null) {
            uVar.a();
        }
        z zVar = this.f512b;
        if (zVar != null) {
            zVar.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        u uVar = this.f511a;
        if (uVar != null) {
            return uVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        u uVar = this.f511a;
        if (uVar != null) {
            return uVar.d();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        l3 l3Var;
        z zVar = this.f512b;
        if (zVar == null || (l3Var = (l3) zVar.f908c) == null) {
            return null;
        }
        return l3Var.f781a;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        l3 l3Var;
        z zVar = this.f512b;
        if (zVar == null || (l3Var = (l3) zVar.f908c) == null) {
            return null;
        }
        return l3Var.f782b;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return !(((ImageView) this.f512b.f907b).getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        u uVar = this.f511a;
        if (uVar != null) {
            uVar.f();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        u uVar = this.f511a;
        if (uVar != null) {
            uVar.g(i6);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        z zVar = this.f512b;
        if (zVar != null) {
            zVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        z zVar = this.f512b;
        if (zVar != null && drawable != null && !this.f513c) {
            zVar.f906a = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (zVar != null) {
            zVar.a();
            if (this.f513c) {
                return;
            }
            ImageView imageView = (ImageView) zVar.f907b;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(zVar.f906a);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i6) {
        super.setImageLevel(i6);
        this.f513c = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i6) {
        z zVar = this.f512b;
        if (zVar != null) {
            zVar.c(i6);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        z zVar = this.f512b;
        if (zVar != null) {
            zVar.a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        u uVar = this.f511a;
        if (uVar != null) {
            uVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        u uVar = this.f511a;
        if (uVar != null) {
            uVar.j(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        z zVar = this.f512b;
        if (zVar != null) {
            if (((l3) zVar.f908c) == null) {
                zVar.f908c = new l3();
            }
            l3 l3Var = (l3) zVar.f908c;
            l3Var.f781a = colorStateList;
            l3Var.d = true;
            zVar.a();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        z zVar = this.f512b;
        if (zVar != null) {
            if (((l3) zVar.f908c) == null) {
                zVar.f908c = new l3();
            }
            l3 l3Var = (l3) zVar.f908c;
            l3Var.f782b = mode;
            l3Var.f783c = true;
            zVar.a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatImageView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        k3.a(context);
        this.f513c = false;
        j3.a(this, getContext());
        u uVar = new u(this);
        this.f511a = uVar;
        uVar.e(attributeSet, i6);
        z zVar = new z(this);
        this.f512b = zVar;
        zVar.b(attributeSet, i6);
    }
}
