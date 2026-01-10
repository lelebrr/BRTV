package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u6.h f4603a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f4604b;

    public a(AppBarLayout appBarLayout, u6.h hVar) {
        this.f4604b = appBarLayout;
        this.f4603a = hVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f4603a.m(fFloatValue);
        AppBarLayout appBarLayout = this.f4604b;
        Drawable drawable = appBarLayout.f4551r;
        if (drawable instanceof u6.h) {
            ((u6.h) drawable).m(fFloatValue);
        }
        Iterator it = appBarLayout.f4549p.iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            throw null;
        }
    }
}
