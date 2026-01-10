package j6;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import com.bumptech.glide.c;
import com.p2elite.brtv2.R;
import o9.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {
    public static final int f = (int) Math.round(5.1000000000000005d);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7437a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7438b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7439c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final float f7440e;

    public a(Context context) {
        TypedValue typedValueL = c.l(context, R.attr.elevationOverlayEnabled);
        boolean z7 = (typedValueL == null || typedValueL.type != 18 || typedValueL.data == 0) ? false : true;
        int iQ = e.q(context, R.attr.elevationOverlayColor, 0);
        int iQ2 = e.q(context, R.attr.elevationOverlayAccentColor, 0);
        int iQ3 = e.q(context, R.attr.colorSurface, 0);
        float f3 = context.getResources().getDisplayMetrics().density;
        this.f7437a = z7;
        this.f7438b = iQ;
        this.f7439c = iQ2;
        this.d = iQ3;
        this.f7440e = f3;
    }

    public final int a(int i6, float f3) {
        int i10;
        if (!this.f7437a || f0.a.h(i6, 255) != this.d) {
            return i6;
        }
        float fMin = (this.f7440e <= 0.0f || f3 <= 0.0f) ? 0.0f : Math.min(((((float) Math.log1p(f3 / r2)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        int iAlpha = Color.alpha(i6);
        int iX = e.x(fMin, f0.a.h(i6, 255), this.f7438b);
        if (fMin > 0.0f && (i10 = this.f7439c) != 0) {
            iX = f0.a.f(f0.a.h(i10, f), iX);
        }
        return f0.a.h(iX, iAlpha);
    }
}
