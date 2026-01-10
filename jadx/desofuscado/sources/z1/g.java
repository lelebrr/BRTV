package z1;

import android.graphics.Paint;
import com.google.android.gms.internal.cast.e0;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g extends j {
    public e0 d;

    /* renamed from: e, reason: collision with root package name */
    public float f11457e;
    public e0 f;

    /* renamed from: g, reason: collision with root package name */
    public float f11458g;

    /* renamed from: h, reason: collision with root package name */
    public float f11459h;

    /* renamed from: i, reason: collision with root package name */
    public float f11460i;

    /* renamed from: j, reason: collision with root package name */
    public float f11461j;

    /* renamed from: k, reason: collision with root package name */
    public float f11462k;

    /* renamed from: l, reason: collision with root package name */
    public Paint.Cap f11463l;

    /* renamed from: m, reason: collision with root package name */
    public Paint.Join f11464m;

    /* renamed from: n, reason: collision with root package name */
    public float f11465n;

    @Override // z1.i
    public final boolean a() {
        return this.f.b() || this.d.b();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    @Override // z1.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean b(int[] r7) {
        /*
            r6 = this;
            com.google.android.gms.internal.cast.e0 r0 = r6.f
            boolean r1 = r0.b()
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L1e
            java.lang.Object r1 = r0.f4145c
            android.content.res.ColorStateList r1 = (android.content.res.ColorStateList) r1
            int r4 = r1.getDefaultColor()
            int r1 = r1.getColorForState(r7, r4)
            int r4 = r0.f4143a
            if (r1 == r4) goto L1e
            r0.f4143a = r1
            r0 = 1
            goto L1f
        L1e:
            r0 = 0
        L1f:
            com.google.android.gms.internal.cast.e0 r1 = r6.d
            boolean r4 = r1.b()
            if (r4 == 0) goto L3a
            java.lang.Object r4 = r1.f4145c
            android.content.res.ColorStateList r4 = (android.content.res.ColorStateList) r4
            int r5 = r4.getDefaultColor()
            int r7 = r4.getColorForState(r7, r5)
            int r4 = r1.f4143a
            if (r7 == r4) goto L3a
            r1.f4143a = r7
            r2 = 1
        L3a:
            r7 = r0 | r2
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: z1.g.b(int[]):boolean");
    }

    public float getFillAlpha() {
        return this.f11459h;
    }

    public int getFillColor() {
        return this.f.f4143a;
    }

    public float getStrokeAlpha() {
        return this.f11458g;
    }

    public int getStrokeColor() {
        return this.d.f4143a;
    }

    public float getStrokeWidth() {
        return this.f11457e;
    }

    public float getTrimPathEnd() {
        return this.f11461j;
    }

    public float getTrimPathOffset() {
        return this.f11462k;
    }

    public float getTrimPathStart() {
        return this.f11460i;
    }

    public void setFillAlpha(float f) {
        this.f11459h = f;
    }

    public void setFillColor(int i6) {
        this.f.f4143a = i6;
    }

    public void setStrokeAlpha(float f) {
        this.f11458g = f;
    }

    public void setStrokeColor(int i6) {
        this.d.f4143a = i6;
    }

    public void setStrokeWidth(float f) {
        this.f11457e = f;
    }

    public void setTrimPathEnd(float f) {
        this.f11461j = f;
    }

    public void setTrimPathOffset(float f) {
        this.f11462k = f;
    }

    public void setTrimPathStart(float f) {
        this.f11460i = f;
    }
}
