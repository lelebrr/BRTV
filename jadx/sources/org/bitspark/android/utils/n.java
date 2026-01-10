package org.bitspark.android.utils;

import android.animation.Animator;
import android.widget.TextView;
import com.nmmedit.protect.NativeUtil;

/* loaded from: classes.dex */
public final class n implements Animator.AnimatorListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextView f8787a;

    static {
        NativeUtil.classesInit0(3);
    }

    public n(TextView textView) {
        this.f8787a = textView;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final native void onAnimationCancel(Animator animator);

    @Override // android.animation.Animator.AnimatorListener
    public final native void onAnimationEnd(Animator animator);

    @Override // android.animation.Animator.AnimatorListener
    public final native void onAnimationRepeat(Animator animator);

    @Override // android.animation.Animator.AnimatorListener
    public final native void onAnimationStart(Animator animator);
}
