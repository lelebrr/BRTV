package org.bitspark.android.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;
import com.nmmedit.protect.NativeUtil;

/* loaded from: classes.dex */
public class MyRadioButton extends RadioButton {

    /* renamed from: a, reason: collision with root package name */
    public Drawable f8824a;

    /* renamed from: b, reason: collision with root package name */
    public int f8825b;

    static {
        NativeUtil.classesInit0(23);
    }

    public MyRadioButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final native void onDraw(Canvas canvas);

    @Override // android.widget.CompoundButton
    public native void setButtonDrawable(int i6);

    @Override // android.widget.CompoundButton
    public native void setButtonDrawable(Drawable drawable);
}
