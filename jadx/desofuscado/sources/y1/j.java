package y1;

import android.view.View;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final float f11291a;

    /* renamed from: b, reason: collision with root package name */
    public final float f11292b;

    /* renamed from: c, reason: collision with root package name */
    public final float f11293c;
    public final float d;

    /* renamed from: e, reason: collision with root package name */
    public final float f11294e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public final float f11295g;

    /* renamed from: h, reason: collision with root package name */
    public final float f11296h;

    public j(View view) {
        this.f11291a = view.getTranslationX();
        this.f11292b = view.getTranslationY();
        WeakHashMap weakHashMap = s0.f8353a;
        this.f11293c = n0.g0.l(view);
        this.d = view.getScaleX();
        this.f11294e = view.getScaleY();
        this.f = view.getRotationX();
        this.f11295g = view.getRotationY();
        this.f11296h = view.getRotation();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return jVar.f11291a == this.f11291a && jVar.f11292b == this.f11292b && jVar.f11293c == this.f11293c && jVar.d == this.d && jVar.f11294e == this.f11294e && jVar.f == this.f && jVar.f11295g == this.f11295g && jVar.f11296h == this.f11296h;
    }

    public final int hashCode() {
        float f = this.f11291a;
        int iFloatToIntBits = (f != 0.0f ? Float.floatToIntBits(f) : 0) * 31;
        float f3 = this.f11292b;
        int iFloatToIntBits2 = (iFloatToIntBits + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0)) * 31;
        float f4 = this.f11293c;
        int iFloatToIntBits3 = (iFloatToIntBits2 + (f4 != 0.0f ? Float.floatToIntBits(f4) : 0)) * 31;
        float f5 = this.d;
        int iFloatToIntBits4 = (iFloatToIntBits3 + (f5 != 0.0f ? Float.floatToIntBits(f5) : 0)) * 31;
        float f10 = this.f11294e;
        int iFloatToIntBits5 = (iFloatToIntBits4 + (f10 != 0.0f ? Float.floatToIntBits(f10) : 0)) * 31;
        float f11 = this.f;
        int iFloatToIntBits6 = (iFloatToIntBits5 + (f11 != 0.0f ? Float.floatToIntBits(f11) : 0)) * 31;
        float f12 = this.f11295g;
        int iFloatToIntBits7 = (iFloatToIntBits6 + (f12 != 0.0f ? Float.floatToIntBits(f12) : 0)) * 31;
        float f13 = this.f11296h;
        return iFloatToIntBits7 + (f13 != 0.0f ? Float.floatToIntBits(f13) : 0);
    }
}
