package s6;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import android.util.StateSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f9823a = {R.attr.state_pressed};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f9824b = {R.attr.state_selected, R.attr.state_pressed};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f9825c = {R.attr.state_selected};
    public static final int[] d = {R.attr.state_enabled, R.attr.state_pressed};

    /* renamed from: e, reason: collision with root package name */
    public static final String f9826e = c.class.getSimpleName();

    public static ColorStateList a(ColorStateList colorStateList) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(f9824b, colorStateList.getDefaultColor()) : 0;
        int iH = f0.a.h(colorForState, Math.min(Color.alpha(colorForState) * 2, 255));
        int[][] iArr = {f9825c, StateSet.NOTHING};
        int colorForState2 = colorStateList != null ? colorStateList.getColorForState(f9823a, colorStateList.getDefaultColor()) : 0;
        return new ColorStateList(iArr, new int[]{iH, f0.a.h(colorForState2, Math.min(Color.alpha(colorForState2) * 2, 255))});
    }

    public static ColorStateList b(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 22 && i6 <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(d, 0)) != 0) {
            Log.w(f9826e, "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
        }
        return colorStateList;
    }

    public static boolean c(int[] iArr) {
        boolean z7 = false;
        boolean z10 = false;
        for (int i6 : iArr) {
            if (i6 == 16842910) {
                z7 = true;
            } else if (i6 == 16842908 || i6 == 16842919 || i6 == 16843623) {
                z10 = true;
            }
        }
        return z7 && z10;
    }
}
