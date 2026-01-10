package g0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public int f7057a;

    /* renamed from: b, reason: collision with root package name */
    public Drawable.ConstantState f7058b;

    /* renamed from: c, reason: collision with root package name */
    public ColorStateList f7059c;
    public PorterDuff.Mode d;

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        int i6 = this.f7057a;
        Drawable.ConstantState constantState = this.f7058b;
        return i6 | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        j jVar = new j();
        jVar.d = this;
        Drawable.ConstantState constantState = this.f7058b;
        if (constantState != null) {
            jVar.h(constantState.newDrawable(resources));
        }
        j.a();
        return jVar;
    }
}
