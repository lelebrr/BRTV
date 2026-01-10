package org.bitspark.android.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.nmmedit.protect.NativeUtil;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class LeanbackTabLayout extends TabLayout {
    public ViewPager2 S;

    static {
        NativeUtil.classesInit0(29);
    }

    public LeanbackTabLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final native void addFocusables(ArrayList arrayList, int i6, int i10);

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final native void onLayout(boolean z7, int i6, int i10, int i11, int i12);

    public native void setupWithViewPager(ViewPager2 viewPager2);

    public LeanbackTabLayout(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
    }
}
