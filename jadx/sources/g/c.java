package g;

import android.animation.ObjectAnimator;
import android.graphics.drawable.AnimationDrawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends l5.a {

    /* renamed from: r, reason: collision with root package name */
    public final ObjectAnimator f7016r;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f7017s;

    public c(AnimationDrawable animationDrawable, boolean z7, boolean z10) {
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        int i6 = z7 ? numberOfFrames - 1 : 0;
        int i10 = z7 ? 0 : numberOfFrames - 1;
        d dVar = new d();
        int numberOfFrames2 = animationDrawable.getNumberOfFrames();
        dVar.f7019b = numberOfFrames2;
        int[] iArr = dVar.f7018a;
        if (iArr == null || iArr.length < numberOfFrames2) {
            dVar.f7018a = new int[numberOfFrames2];
        }
        int[] iArr2 = dVar.f7018a;
        int i11 = 0;
        for (int i12 = 0; i12 < numberOfFrames2; i12++) {
            int duration = animationDrawable.getDuration(z7 ? (numberOfFrames2 - i12) - 1 : i12);
            iArr2[i12] = duration;
            i11 += duration;
        }
        dVar.f7020c = i11;
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i6, i10);
        h.a.a(objectAnimatorOfInt, true);
        objectAnimatorOfInt.setDuration(dVar.f7020c);
        objectAnimatorOfInt.setInterpolator(dVar);
        this.f7017s = z10;
        this.f7016r = objectAnimatorOfInt;
    }

    @Override // l5.a
    public final void I() {
        this.f7016r.reverse();
    }

    @Override // l5.a
    public final void S() {
        this.f7016r.start();
    }

    @Override // l5.a
    public final void U() {
        this.f7016r.cancel();
    }

    @Override // l5.a
    public final boolean f() {
        return this.f7017s;
    }
}
