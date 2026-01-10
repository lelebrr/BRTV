package s6;

import android.graphics.drawable.Drawable;
import u6.h;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public h f9820a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f9821b;

    public a(a aVar) {
        this.f9820a = (h) aVar.f9820a.f10367a.newDrawable();
        this.f9821b = aVar.f9821b;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new b(new a(this));
    }
}
