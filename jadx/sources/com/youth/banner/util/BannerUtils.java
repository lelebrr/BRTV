package com.youth.banner.util;

import a.e;
import android.content.res.Resources;
import android.graphics.Outline;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class BannerUtils {
    public static int dp2px(float f) {
        return (int) TypedValue.applyDimension(1, f, Resources.getSystem().getDisplayMetrics());
    }

    public static int getRealPosition(boolean z7, int i6, int i10) {
        if (!z7) {
            return i6;
        }
        if (i6 == 0) {
            return i10 - 1;
        }
        if (i6 == i10 + 1) {
            return 0;
        }
        return i6 - 1;
    }

    public static View getView(ViewGroup viewGroup, int i6) {
        View viewI = e.i(viewGroup, i6, viewGroup, false);
        ViewGroup.LayoutParams layoutParams = viewI.getLayoutParams();
        if (layoutParams.height != -1 || layoutParams.width != -1) {
            layoutParams.height = -1;
            layoutParams.width = -1;
            viewI.setLayoutParams(layoutParams);
        }
        return viewI;
    }

    public static void setBannerRound(View view, final float f) {
        view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.youth.banner.util.BannerUtils.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view2, Outline outline) {
                outline.setRoundRect(0, 0, view2.getWidth(), view2.getHeight(), f);
            }
        });
        view.setClipToOutline(true);
    }
}
