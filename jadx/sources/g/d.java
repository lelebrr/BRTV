package g;

import android.animation.TimeInterpolator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements TimeInterpolator {

    /* renamed from: a, reason: collision with root package name */
    public int[] f7018a;

    /* renamed from: b, reason: collision with root package name */
    public int f7019b;

    /* renamed from: c, reason: collision with root package name */
    public int f7020c;

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        int i6 = (int) ((f * this.f7020c) + 0.5f);
        int i10 = this.f7019b;
        int[] iArr = this.f7018a;
        int i11 = 0;
        while (i11 < i10) {
            int i12 = iArr[i11];
            if (i6 < i12) {
                break;
            }
            i6 -= i12;
            i11++;
        }
        return (i11 / i10) + (i11 < i10 ? i6 / this.f7020c : 0.0f);
    }
}
