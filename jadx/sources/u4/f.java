package u4;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final v4.b f10341a = new v4.b("WidgetUtil", null);

    public static Drawable a(ExpandedControllerActivity expandedControllerActivity, int i6, int i10) {
        ColorStateList colorStateList;
        Drawable drawableW = n5.d.W(expandedControllerActivity.getResources().getDrawable(i10).mutate());
        g0.a.i(drawableW, PorterDuff.Mode.SRC_IN);
        if (i6 != 0) {
            colorStateList = u7.d.k(expandedControllerActivity, i6);
        } else {
            int i11 = u7.d.i(expandedControllerActivity, R.color.white);
            colorStateList = new ColorStateList(new int[][]{new int[]{R.attr.state_enabled}, new int[]{-16842910}}, new int[]{i11, f0.a.h(i11, 128)});
        }
        g0.a.h(drawableW, colorStateList);
        return drawableW;
    }
}
