package d6;

import android.graphics.Rect;
import android.graphics.drawable.InsetDrawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends InsetDrawable {
    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        return -1;
    }

    @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        return false;
    }
}
