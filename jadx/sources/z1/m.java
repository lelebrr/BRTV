package z1;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class m extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable.ConstantState f11502a;

    public m(Drawable.ConstantState constantState) {
        this.f11502a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        return this.f11502a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f11502a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        n nVar = new n();
        nVar.f11456a = (VectorDrawable) this.f11502a.newDrawable();
        return nVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        n nVar = new n();
        nVar.f11456a = (VectorDrawable) this.f11502a.newDrawable(resources);
        return nVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
        n nVar = new n();
        nVar.f11456a = (VectorDrawable) this.f11502a.newDrawable(resources, theme);
        return nVar;
    }
}
