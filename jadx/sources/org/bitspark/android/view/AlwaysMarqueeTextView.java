package org.bitspark.android.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.nmmedit.protect.NativeUtil;

@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes.dex */
public class AlwaysMarqueeTextView extends TextView {
    static {
        NativeUtil.classesInit0(49);
    }

    public AlwaysMarqueeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public final native boolean isFocused();

    public AlwaysMarqueeTextView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
    }
}
