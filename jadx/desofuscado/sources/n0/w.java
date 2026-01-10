package n0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.PointerIcon;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class w {
    public static PointerIcon a(Bitmap bitmap, float f, float f3) {
        return PointerIcon.create(bitmap, f, f3);
    }

    public static PointerIcon b(Context context, int i6) {
        return PointerIcon.getSystemIcon(context, i6);
    }

    public static PointerIcon c(Resources resources, int i6) {
        return PointerIcon.load(resources, i6);
    }
}
