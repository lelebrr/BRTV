package com.google.android.material.transformation;

import a6.a;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/* compiled from: MyApplication */
@Deprecated
/* loaded from: classes.dex */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* renamed from: b, reason: collision with root package name */
    public AnimatorSet f5414b;

    public ExpandableTransformationBehavior() {
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior
    public void s(View view, View view2, boolean z7, boolean z10) {
        AnimatorSet animatorSet = this.f5414b;
        boolean z11 = animatorSet != null;
        if (z11) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSetT = t(view, view2, z7, z11);
        this.f5414b = animatorSetT;
        animatorSetT.addListener(new a(1, this));
        this.f5414b.start();
        if (z10) {
            return;
        }
        this.f5414b.end();
    }

    public abstract AnimatorSet t(View view, View view2, boolean z7, boolean z10);

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
