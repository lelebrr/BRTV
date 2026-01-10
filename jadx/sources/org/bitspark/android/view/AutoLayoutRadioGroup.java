package org.bitspark.android.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.RadioGroup;
import com.nmmedit.protect.NativeUtil;

/* loaded from: classes.dex */
public class AutoLayoutRadioGroup extends RadioGroup {
    static {
        NativeUtil.classesInit0(54);
    }

    public AutoLayoutRadioGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup
    public final native boolean onRequestFocusInDescendants(int i6, Rect rect);
}
