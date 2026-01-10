package u6;

import android.graphics.RectF;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b implements c {

    /* renamed from: a, reason: collision with root package name */
    public final c f10345a;

    /* renamed from: b, reason: collision with root package name */
    public final float f10346b;

    public b(float f, c cVar) {
        while (cVar instanceof b) {
            cVar = ((b) cVar).f10345a;
            f += ((b) cVar).f10346b;
        }
        this.f10345a = cVar;
        this.f10346b = f;
    }

    @Override // u6.c
    public final float a(RectF rectF) {
        return Math.max(0.0f, this.f10345a.a(rectF) + this.f10346b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f10345a.equals(bVar.f10345a) && this.f10346b == bVar.f10346b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f10345a, Float.valueOf(this.f10346b)});
    }
}
