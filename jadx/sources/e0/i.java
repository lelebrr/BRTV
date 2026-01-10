package e0;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class i {
    public static Drawable a(Resources resources, int i6, Resources.Theme theme) {
        return resources.getDrawable(i6, theme);
    }

    public static Drawable b(Resources resources, int i6, int i10, Resources.Theme theme) {
        return resources.getDrawableForDensity(i6, i10, theme);
    }
}
