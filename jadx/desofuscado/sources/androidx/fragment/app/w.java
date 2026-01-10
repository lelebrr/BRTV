package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w extends AnimationSet implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f1565a;

    /* renamed from: b, reason: collision with root package name */
    public final View f1566b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1567c;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1568e;

    public w(Animation animation, ViewGroup viewGroup, View view) {
        super(false);
        this.f1568e = true;
        this.f1565a = viewGroup;
        this.f1566b = view;
        addAnimation(animation);
        viewGroup.post(this);
    }

    @Override // android.view.animation.AnimationSet, android.view.animation.Animation
    public final boolean getTransformation(long j10, Transformation transformation) {
        this.f1568e = true;
        if (this.f1567c) {
            return !this.d;
        }
        if (!super.getTransformation(j10, transformation)) {
            this.f1567c = true;
            n0.v.a(this.f1565a, this);
        }
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z7 = this.f1567c;
        ViewGroup viewGroup = this.f1565a;
        if (z7 || !this.f1568e) {
            viewGroup.endViewTransition(this.f1566b);
            this.d = true;
        } else {
            this.f1568e = false;
            viewGroup.post(this);
        }
    }

    @Override // android.view.animation.Animation
    public final boolean getTransformation(long j10, Transformation transformation, float f) {
        this.f1568e = true;
        if (this.f1567c) {
            return !this.d;
        }
        if (!super.getTransformation(j10, transformation, f)) {
            this.f1567c = true;
            n0.v.a(this.f1565a, this);
        }
        return true;
    }
}
