package u6;

import android.graphics.RectF;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class j implements c {

    /* renamed from: a, reason: collision with root package name */
    public final float f10388a;

    public j(float f) {
        this.f10388a = f;
    }

    @Override // u6.c
    public final float a(RectF rectF) {
        return rectF.height() * this.f10388a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof j) && this.f10388a == ((j) obj).f10388a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f10388a)});
    }
}
