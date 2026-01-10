package org.bitspark.android.view;

import a2.a;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.VideoView;
import com.nmmedit.protect.NativeUtil;

/* loaded from: classes.dex */
public class SafeVideoView extends VideoView {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8827a;

    public SafeVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.VideoView, android.view.View
    public final native void onLayout(boolean z7, int i6, int i10, int i11, int i12);

    @Override // android.widget.VideoView, android.view.SurfaceView, android.view.View
    public final native void onMeasure(int i6, int i10);

    static {
        NativeUtil.classesInit0(39);
        f8827a = a.s("ZS9K4GEPuwtZGEXgQA==\n", "Nk4shTdm324=\n");
    }

    public SafeVideoView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
    }
}
