package z1;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class l extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public int f11492a;

    /* renamed from: b, reason: collision with root package name */
    public k f11493b;

    /* renamed from: c, reason: collision with root package name */
    public ColorStateList f11494c;
    public PorterDuff.Mode d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f11495e;
    public Bitmap f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f11496g;

    /* renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f11497h;

    /* renamed from: i, reason: collision with root package name */
    public int f11498i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f11499j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f11500k;

    /* renamed from: l, reason: collision with root package name */
    public Paint f11501l;

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f11492a;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new n(this);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new n(this);
    }
}
