package i3;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7306a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f7307b;

    public /* synthetic */ c(int i6, Object obj) {
        this.f7306a = i6;
        this.f7307b = obj;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public boolean canApplyTheme() {
        switch (this.f7306a) {
            case 2:
                return ((Drawable.ConstantState) this.f7307b).canApplyTheme();
            default:
                return super.canApplyTheme();
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        switch (this.f7306a) {
            case 0:
                return 0;
            case 1:
                return 0;
            default:
                return ((Drawable.ConstantState) this.f7307b).getChangingConfigurations();
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        switch (this.f7306a) {
            case 0:
                return new d(this);
            case 1:
                return (l6.c) this.f7307b;
            default:
                z1.c cVar = new z1.c(null);
                Drawable drawableNewDrawable = ((Drawable.ConstantState) this.f7307b).newDrawable();
                cVar.f11456a = drawableNewDrawable;
                drawableNewDrawable.setCallback(cVar.d);
                return cVar;
        }
    }

    public c(l6.c cVar) {
        this.f7306a = 1;
        this.f7307b = cVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        switch (this.f7306a) {
            case 0:
                return new d(this);
            case 1:
            default:
                return super.newDrawable(resources);
            case 2:
                z1.c cVar = new z1.c(null);
                Drawable drawableNewDrawable = ((Drawable.ConstantState) this.f7307b).newDrawable(resources);
                cVar.f11456a = drawableNewDrawable;
                drawableNewDrawable.setCallback(cVar.d);
                return cVar;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources, Resources.Theme theme) {
        switch (this.f7306a) {
            case 2:
                z1.c cVar = new z1.c(null);
                Drawable drawableNewDrawable = ((Drawable.ConstantState) this.f7307b).newDrawable(resources, theme);
                cVar.f11456a = drawableNewDrawable;
                drawableNewDrawable.setCallback(cVar.d);
                return cVar;
            default:
                return super.newDrawable(resources, theme);
        }
    }
}
