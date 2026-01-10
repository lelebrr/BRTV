package u6;

import android.graphics.RectF;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a implements c {

    /* renamed from: a, reason: collision with root package name */
    public final float f10344a;

    public a(float f) {
        this.f10344a = f;
    }

    @Override // u6.c
    public final float a(RectF rectF) {
        return this.f10344a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f10344a == ((a) obj).f10344a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f10344a)});
    }
}
