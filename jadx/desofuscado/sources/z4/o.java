package z4;

import com.google.android.gms.common.Feature;
import com.lzy.okgo.cache.CacheEntity;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final b f11628a;

    /* renamed from: b, reason: collision with root package name */
    public final Feature f11629b;

    public /* synthetic */ o(b bVar, Feature feature) {
        this.f11628a = bVar;
        this.f11629b = feature;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof o)) {
            o oVar = (o) obj;
            if (b5.l.h(this.f11628a, oVar.f11628a) && b5.l.h(this.f11629b, oVar.f11629b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f11628a, this.f11629b});
    }

    public final String toString() {
        a7.f fVar = new a7.f(this);
        fVar.c(this.f11628a, CacheEntity.KEY);
        fVar.c(this.f11629b, "feature");
        return fVar.toString();
    }
}
